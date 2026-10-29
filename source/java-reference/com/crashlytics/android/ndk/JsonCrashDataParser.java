package com.crashlytics.android.ndk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.crashlytics.android.core.internal.models.BinaryImageData;
import com.crashlytics.android.core.internal.models.CustomAttributeData;
import com.crashlytics.android.core.internal.models.DeviceData;
import com.crashlytics.android.core.internal.models.SessionEventData;
import com.crashlytics.android.core.internal.models.SignalData;
import com.crashlytics.android.core.internal.models.ThreadData;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import io.fabric.sdk.android.Fabric;
import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class JsonCrashDataParser {
    private static final String CUSTOM_KEY_JSON_SESSION = "json_session";
    private static final String DATA_DIR = "/data";
    static final String KEY_AVAILABLE_INTERNAL_STORAGE = "available_internal_storage";
    static final String KEY_AVAILABLE_PHYSICAL_MEMORY = "available_physical_memory";
    static final String KEY_BATTERY_CAPACITY = "battery";
    static final String KEY_BATTERY_VELOCITY = "battery_velocity";
    static final String KEY_CRASHED = "crashed";
    static final String KEY_FRAMES = "frames";
    static final String KEY_MAPS = "maps";
    static final String KEY_ORIENTATION = "orientation";
    static final String KEY_PC = "pc";
    static final String KEY_PROXIMITY_ENABLED = "proximity_enabled";
    static final String KEY_SIG_CODE = "sig_code";
    static final String KEY_SIG_NAME = "sig_name";
    static final String KEY_SI_ADDR = "si_addr";
    static final String KEY_SYMBOL = "symbol";
    static final String KEY_THREADS = "threads";
    static final String KEY_THREAD_NAME = "name";
    static final String KEY_TIME = "time";
    static final String KEY_TOTAL_INTERNAL_STORAGE = "total_internal_storage";
    static final String KEY_TOTAL_PHYSICAL_MEMORY = "total_physical_memory";
    private static final String TAG = "JsonCrashDataParser";
    private final FileIdStrategy fileIdStrategy;
    private static final BinaryImageData[] EMPTY_BINARY_IMAGES = new BinaryImageData[0];
    private static final ThreadData[] EMPTY_THREADS = new ThreadData[0];
    private static final ThreadData.FrameData[] EMPTY_FRAMES = new ThreadData.FrameData[0];

    public JsonCrashDataParser() {
        this(new Sha1FileIdStrategy());
    }

    JsonCrashDataParser(FileIdStrategy fileIdStrategy) {
        this.fileIdStrategy = fileIdStrategy;
    }

    public SessionEventData parseCrashEventData(String jsonString) throws JSONException {
        JSONObject jsonCrash = JSONObjectInstrumentation.init(jsonString);
        long timestamp = jsonCrash.optLong(KEY_TIME);
        SignalData signal = parseSignalData(jsonCrash);
        ThreadData[] threads = parseThreadData(jsonCrash);
        BinaryImageData[] binaryImages = parseBinaryImageData(jsonCrash);
        CustomAttributeData[] customAttributes = parseCustomAttributes(jsonString);
        DeviceData deviceData = parseDeviceData(jsonCrash);
        return new SessionEventData(timestamp, signal, threads, binaryImages, customAttributes, deviceData);
    }

    public DeviceData parseDeviceData(JSONObject jsonCrash) {
        int orientation = jsonCrash.optInt(KEY_ORIENTATION);
        long totalPhysicalMemory = jsonCrash.optLong(KEY_TOTAL_PHYSICAL_MEMORY);
        long totalInternalStorage = jsonCrash.optLong(KEY_TOTAL_INTERNAL_STORAGE);
        long availablePhysicalMemory = jsonCrash.optLong(KEY_AVAILABLE_PHYSICAL_MEMORY);
        long availableInternalStorage = jsonCrash.optLong(KEY_AVAILABLE_INTERNAL_STORAGE);
        int batteryCapacity = jsonCrash.optInt(KEY_BATTERY_CAPACITY);
        int batteryVelocity = jsonCrash.optInt(KEY_BATTERY_VELOCITY, 1);
        boolean proximity = jsonCrash.optBoolean(KEY_PROXIMITY_ENABLED, false);
        return new DeviceData(orientation, totalPhysicalMemory, totalInternalStorage, availablePhysicalMemory, availableInternalStorage, batteryCapacity, batteryVelocity, proximity);
    }

    public SignalData parseSignalData(JSONObject jsonCrash) {
        String sigName = jsonCrash.optString(KEY_SIG_NAME, "");
        String sigCode = jsonCrash.optString(KEY_SIG_CODE, "");
        long sigAddr = jsonCrash.optLong(KEY_SI_ADDR);
        return new SignalData(sigName, sigCode, sigAddr);
    }

    public BinaryImageData[] parseBinaryImageData(JSONObject jsonCrash) {
        JSONArray entries = jsonCrash.optJSONArray(KEY_MAPS);
        if (entries == null) {
            return EMPTY_BINARY_IMAGES;
        }
        List<BinaryImageData> binaryImages = new LinkedList<>();
        for (int i = 0; i < entries.length(); i++) {
            String mapEntryString = entries.optString(i);
            ProcMapEntry mapInfo = ProcMapEntryParser.parse(mapEntryString);
            if (mapInfo != null) {
                String path = mapInfo.path;
                File binFile = getLibraryFile(path);
                try {
                    String id = this.fileIdStrategy.getId(binFile);
                    BinaryImageData binaryImage = new BinaryImageData(mapInfo.address, mapInfo.size, path, id);
                    binaryImages.add(binaryImage);
                } catch (IOException e) {
                    Fabric.getLogger().d(TAG, "Could not generate ID for file " + mapInfo.path, e);
                }
            }
        }
        return (BinaryImageData[]) binaryImages.toArray(new BinaryImageData[binaryImages.size()]);
    }

    public ThreadData[] parseThreadData(JSONObject jsonCrash) {
        JSONArray jsonThreads = jsonCrash.optJSONArray(KEY_THREADS);
        if (jsonThreads == null) {
            return EMPTY_THREADS;
        }
        int len = jsonThreads.length();
        ThreadData[] threads = new ThreadData[len];
        for (int i = 0; i < len; i++) {
            JSONObject jsonThread = jsonThreads.optJSONObject(i);
            String threadName = jsonThread.optString("name");
            int threadImportance = jsonThread.optBoolean(KEY_CRASHED) ? 4 : 0;
            threads[i] = new ThreadData(threadName, threadImportance, parseFrameData(jsonThread, threadImportance));
        }
        return threads;
    }

    public ThreadData.FrameData[] parseFrameData(JSONObject jsonThread, int threadImportance) {
        JSONArray jsonFrames = jsonThread.optJSONArray(KEY_FRAMES);
        if (jsonFrames == null) {
            return EMPTY_FRAMES;
        }
        int len = jsonFrames.length();
        ThreadData.FrameData[] frames = new ThreadData.FrameData[len];
        for (int i = 0; i < len; i++) {
            JSONObject frame = jsonFrames.optJSONObject(i);
            long pc = frame.optLong(KEY_PC);
            String maybeSymbol = frame.optString(KEY_SYMBOL);
            String symbol = maybeSymbol == null ? "" : maybeSymbol;
            frames[i] = new ThreadData.FrameData(pc, symbol, "", 0L, threadImportance);
        }
        return frames;
    }

    public CustomAttributeData[] parseCustomAttributes(String json) {
        return new CustomAttributeData[]{new CustomAttributeData(CUSTOM_KEY_JSON_SESSION, json)};
    }

    private static File getLibraryFile(String path) {
        File libFile = new File(path);
        if (!libFile.exists()) {
            return correctDataPath(libFile);
        }
        return libFile;
    }

    private static File correctDataPath(File missingFile) {
        if (missingFile.getAbsolutePath().startsWith(DATA_DIR)) {
            try {
                Context context = CrashlyticsNdk.getInstance().getContext();
                ApplicationInfo ai = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
                return new File(ai.nativeLibraryDir, missingFile.getName());
            } catch (PackageManager.NameNotFoundException e) {
                Fabric.getLogger().e(TAG, "Error getting ApplicationInfo", e);
                return missingFile;
            }
        }
        return missingFile;
    }
}

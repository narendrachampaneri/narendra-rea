package com.crashlytics.android.ndk;

import com.crashlytics.android.core.CrashlyticsCore;
import com.crashlytics.android.core.CrashlyticsKitBinder;
import com.crashlytics.android.core.internal.CrashEventDataProvider;
import com.crashlytics.android.core.internal.models.SessionEventData;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.persistence.FileStoreImpl;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class CrashlyticsNdk extends Kit<Void> implements CrashEventDataProvider {
    private static final String TAG = "CrashlyticsNdk";
    private final JsonCrashDataParser crashDataParser;
    private CrashFileManager crashFileManager;
    SessionEventData lastCrashEventData;
    private final NativeApi nativeApi;

    public CrashlyticsNdk() {
        this(new JniNativeApi());
    }

    CrashlyticsNdk(NativeApi nativeApi) {
        this.nativeApi = nativeApi;
        this.crashDataParser = new JsonCrashDataParser();
    }

    @Override // io.fabric.sdk.android.Kit
    public String getVersion() {
        return "1.1.2.90";
    }

    @Override // io.fabric.sdk.android.Kit
    public String getIdentifier() {
        return "com.crashlytics.sdk.android.crashlytics-ndk";
    }

    public static CrashlyticsNdk getInstance() {
        return (CrashlyticsNdk) Fabric.getKit(CrashlyticsNdk.class);
    }

    @Override // com.crashlytics.android.core.internal.CrashEventDataProvider
    public SessionEventData getCrashEventData() {
        return this.lastCrashEventData;
    }

    @Override // io.fabric.sdk.android.Kit
    protected boolean onPreExecute() {
        if (Fabric.getKit(CrashlyticsCore.class) == null) {
            throw new UnmetDependencyException("CrashlyticsNdk requires Crashlytics");
        }
        CrashFileManager crashFileManager = new TimeBasedCrashFileManager(getKitStorageDirectory());
        CrashlyticsCore crashlyticsCore = CrashlyticsCore.getInstance();
        return onPreExecute(crashFileManager, crashlyticsCore, new CrashlyticsKitBinder());
    }

    boolean onPreExecute(CrashFileManager crashFileManager, CrashlyticsCore crashlyticsCore, CrashlyticsKitBinder kitBinder) {
        this.crashFileManager = crashFileManager;
        boolean initSuccess = false;
        try {
            String crashFilePath = crashFileManager.getNewCrashFile().getCanonicalPath();
            initSuccess = this.nativeApi.initialize(crashFilePath, getContext().getAssets());
        } catch (IOException e) {
            Fabric.getLogger().e(TAG, "Error initializing CrashlyticsNdk", e);
        }
        if (initSuccess) {
            kitBinder.bindCrashEventDataProvider(crashlyticsCore, this);
            Fabric.getLogger().d(TAG, "Crashlytics NDK initialization successful");
        }
        return initSuccess;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.Kit
    public Void doInBackground() throws Throwable {
        File lastCrashFile = this.crashFileManager.getLastWrittenCrashFile();
        if (lastCrashFile != null && lastCrashFile.exists()) {
            Fabric.getLogger().d(TAG, "Found NDK crash file...");
            String rawCrashData = readJsonCrashFile(lastCrashFile);
            if (rawCrashData != null) {
                try {
                    this.lastCrashEventData = this.crashDataParser.parseCrashEventData(rawCrashData);
                } catch (JSONException e) {
                    Fabric.getLogger().e(TAG, "Crashlytics failed to parse prior crash data.");
                }
            }
        }
        this.crashFileManager.clearCrashFiles();
        return null;
    }

    private File getKitStorageDirectory() {
        return new FileStoreImpl(this).getFilesDir();
    }

    private String readJsonCrashFile(File crashFile) throws Throwable {
        String crashData = null;
        Fabric.getLogger().d(TAG, "Reading NDK crash data...");
        FileInputStream fis = null;
        try {
            try {
                FileInputStream fis2 = new FileInputStream(crashFile);
                try {
                    crashData = CommonUtils.streamToString(fis2);
                    CommonUtils.closeOrLog(fis2, "Error closing crash data file.");
                } catch (Exception e) {
                    e = e;
                    fis = fis2;
                    Fabric.getLogger().e(TAG, "Failed to read NDK crash data.", e);
                    CommonUtils.closeOrLog(fis, "Error closing crash data file.");
                } catch (Throwable th) {
                    th = th;
                    fis = fis2;
                    CommonUtils.closeOrLog(fis, "Error closing crash data file.");
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
            return crashData;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}

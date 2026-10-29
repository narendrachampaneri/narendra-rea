package com.inmobi.commons.cache;

import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class LocalCache {
    public static final String FILENAME = "inmobi.cache";
    private static String a = "{url:'https://inmobisdk-a.akamaihd.net/sdk/configs/400/rootConfig.json'}";
    private static JSONObject b = new JSONObject();

    private LocalCache() {
    }

    public static void initRoot() {
        JSONObject jSONObject = b;
        if ((!(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject)).equals("{}")) {
            synchronized (b) {
                try {
                    String fileAsString = FileOperations.readFileAsString(InternalSDKUtil.getContext(), FILENAME);
                    if (fileAsString == null || "".equals(fileAsString)) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Configs not present in persistence. Using default configs.");
                        fileAsString = a;
                    }
                    b = JSONObjectInstrumentation.init(fileAsString);
                } catch (IOException e) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to read configs from persistent memory", e);
                } catch (JSONException e2) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Ill formed JSON while parsing from persistent memory", e2);
                }
            }
            JSONObject jSONObject2 = b;
            if ((!(jSONObject2 instanceof JSONObject) ? jSONObject2.toString() : JSONObjectInstrumentation.toString(jSONObject2)).equals("{}")) {
                try {
                    b = JSONObjectInstrumentation.init(a);
                } catch (JSONException e3) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Default JSON root is unable to parse? What sorcery is this?", e3);
                }
            }
        }
    }

    private static void b() {
        new Thread(new Runnable() { // from class: com.inmobi.commons.cache.LocalCache.1
            @Override // java.lang.Runnable
            public void run() {
                LocalCache.c();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c() {
        synchronized (b) {
            try {
                JSONObject jSONObject = b;
                FileOperations.writeStringToFile(InternalSDKUtil.getContext(), FILENAME, !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject), false);
            } catch (Exception e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to save all configs to persistent memory", e);
            }
        }
    }

    public static JSONObject addToCache(String str, JSONObject jSONObject) throws JSONException {
        synchronized (b) {
            JSONObject jSONObject2 = b;
            if ((!(jSONObject2 instanceof JSONObject) ? jSONObject2.toString() : JSONObjectInstrumentation.toString(jSONObject2)).equals("{}")) {
                initRoot();
            }
            b.put(str, jSONObject);
        }
        b();
        return null;
    }

    public static JSONObject getCacheForProduct(String str) {
        JSONObject jSONObject = b;
        if ((!(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject)).equals("{}")) {
            initRoot();
        }
        try {
            return b.getJSONObject(str);
        } catch (JSONException e) {
            return null;
        }
    }

    public static void reset() {
        b = new JSONObject();
        c();
        initRoot();
    }

    public static JSONObject getRoot() {
        return b;
    }

    public static void saveRoot(JSONObject jSONObject) {
        b = jSONObject;
        b();
    }
}

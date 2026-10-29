package com.amazon.ags.html5.util;

import android.util.Log;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class JSONUtils {
    private static final String TAG = "GC_" + JSONUtils.class.getSimpleName();

    private JSONUtils() {
    }

    public static String sanitize(String json) {
        try {
            JSONObject parsed = JSONObjectInstrumentation.init(json);
            return !(parsed instanceof JSONObject) ? parsed.toString() : JSONObjectInstrumentation.toString(parsed);
        } catch (JSONException e) {
            Log.e(TAG, "Bad json string \"" + json + "\"", e);
            return "{}";
        }
    }
}

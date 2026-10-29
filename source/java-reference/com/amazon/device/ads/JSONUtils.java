package com.amazon.device.ads;

import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class JSONUtils {
    JSONUtils() {
    }

    public static boolean getBooleanFromJSON(JSONObject json, String key, boolean defaultValue) {
        if (!json.isNull(key)) {
            boolean ret = json.optBoolean(key, defaultValue);
            return ret;
        }
        return defaultValue;
    }

    public static String getStringFromJSON(JSONObject json, String key, String defaultValue) {
        if (!json.isNull(key)) {
            String ret = json.optString(key, defaultValue);
            return ret;
        }
        return defaultValue;
    }

    public static int getIntegerFromJSON(JSONObject json, String key, int defaultValue) {
        if (!json.isNull(key)) {
            int ret = json.optInt(key, defaultValue);
            return ret;
        }
        return defaultValue;
    }

    public static long getLongFromJSON(JSONObject json, String key, long defaultValue) {
        if (!json.isNull(key)) {
            long ret = json.optLong(key, defaultValue);
            return ret;
        }
        return defaultValue;
    }

    public static JSONArray getJSONArrayFromJSON(JSONObject json, String key) {
        if (json.isNull(key)) {
            return null;
        }
        return json.optJSONArray(key);
    }

    public static int getIntegerFromJSONArray(JSONArray jsonArray, int index, int defaultValue) {
        if (!jsonArray.isNull(index)) {
            int ret = jsonArray.optInt(index, defaultValue);
            return ret;
        }
        return defaultValue;
    }

    public static JSONObject getJSONObjectFromJSONArray(JSONArray jsonArray, int index) {
        if (jsonArray.isNull(index)) {
            return null;
        }
        try {
            return jsonArray.getJSONObject(index);
        } catch (JSONException e) {
            return null;
        }
    }

    public static void put(JSONObject json, String key, String value) {
        if (value != null && !value.equals("")) {
            try {
                json.put(key, value);
            } catch (JSONException e) {
            }
        }
    }

    public static void put(JSONObject json, String key, int value) {
        try {
            json.put(key, value);
        } catch (JSONException e) {
        }
    }

    public static void put(JSONObject json, String key, long value) {
        try {
            json.put(key, value);
        } catch (JSONException e) {
        }
    }

    public static void put(JSONObject json, String key, boolean value) {
        try {
            json.put(key, value);
        } catch (JSONException e) {
        }
    }

    public static JSONObject getJSONObjectFromString(String str) {
        try {
            return JSONObjectInstrumentation.init(str);
        } catch (JSONException e) {
            return null;
        }
    }
}

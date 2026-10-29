package com.mopub.common.util;

import android.text.TextUtils;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.mopub.common.logging.MoPubLog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX INFO: loaded from: classes.dex */
public class Json {
    public static Map<String, String> jsonStringToMap(String jsonParams) throws JSONException {
        Map<String, String> jsonMap = new HashMap<>();
        if (!TextUtils.isEmpty(jsonParams)) {
            JSONObject jsonObject = (JSONObject) new JSONTokener(jsonParams).nextValue();
            Iterator<?> keys = jsonObject.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                jsonMap.put(key, jsonObject.getString(key));
            }
        }
        return jsonMap;
    }

    public static String mapToJsonString(Map<String, String> map) {
        if (map == null) {
            return "{}";
        }
        StringBuilder builder = new StringBuilder();
        builder.append("{");
        boolean first = true;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (!first) {
                builder.append(AppInfo.DELIM);
            }
            builder.append("\"");
            builder.append(entry.getKey());
            builder.append("\":\"");
            builder.append(entry.getValue());
            builder.append("\"");
            first = false;
        }
        builder.append("}");
        return builder.toString();
    }

    public static String[] jsonArrayToStringArray(String jsonString) {
        try {
            JSONObject jsonObject = (JSONObject) new JSONTokener("{key:" + jsonString + "}").nextValue();
            JSONArray jsonArray = jsonObject.getJSONArray("key");
            String[] result = new String[jsonArray.length()];
            for (int i = 0; i < result.length; i++) {
                result[i] = jsonArray.getString(i);
            }
            return result;
        } catch (JSONException e) {
            return new String[0];
        }
    }

    public static <T> T getJsonValue(JSONObject jsonObject, String key, Class<T> valueClass) {
        if (jsonObject == null || key == null || valueClass == null) {
            throw new IllegalArgumentException("Cannot pass any null argument to getJsonValue");
        }
        Object object = jsonObject.opt(key);
        if (object == null) {
            MoPubLog.w("Tried to get Json value with key: " + key + ", but it was null");
            return null;
        }
        if (!valueClass.isInstance(object)) {
            MoPubLog.w("Tried to get Json value with key: " + key + ", of type: " + valueClass.toString() + ", its type did not match");
            return null;
        }
        return valueClass.cast(object);
    }
}

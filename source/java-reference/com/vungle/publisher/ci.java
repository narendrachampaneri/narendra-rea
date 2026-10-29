package com.vungle.publisher;

import com.vungle.publisher.protocol.message.BaseJsonObject;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ci {
    public static Boolean a(JSONObject jSONObject, String str) {
        boolean zOptBoolean = jSONObject.optBoolean(str, false);
        if (!zOptBoolean) {
            boolean zOptBoolean2 = jSONObject.optBoolean(str, true);
            if (zOptBoolean2) {
                return null;
            }
            return Boolean.valueOf(zOptBoolean2);
        }
        return Boolean.valueOf(zOptBoolean);
    }

    public static Float b(JSONObject jSONObject, String str) {
        Double dValueOf;
        double dOptDouble = jSONObject.optDouble(str);
        if (dOptDouble == Double.NaN) {
            double dOptDouble2 = jSONObject.optDouble(str, -1.0d);
            dValueOf = dOptDouble2 != -1.0d ? Double.valueOf(dOptDouble2) : null;
        } else {
            dValueOf = Double.valueOf(dOptDouble);
        }
        if (dValueOf == null) {
            return null;
        }
        return Float.valueOf(dValueOf.floatValue());
    }

    public static Integer c(JSONObject jSONObject, String str) {
        int iOptInt = jSONObject.optInt(str, -1);
        if (iOptInt == -1) {
            int iOptInt2 = jSONObject.optInt(str, -2);
            if (iOptInt2 == -2) {
                return null;
            }
            return Integer.valueOf(iOptInt2);
        }
        return Integer.valueOf(iOptInt);
    }

    public static Long d(JSONObject jSONObject, String str) {
        long jOptLong = jSONObject.optLong(str, -1L);
        if (jOptLong == -1) {
            long jOptLong2 = jSONObject.optLong(str, -2L);
            if (jOptLong2 == -2) {
                return null;
            }
            return Long.valueOf(jOptLong2);
        }
        return Long.valueOf(jOptLong);
    }

    public static String e(JSONObject jSONObject, String str) {
        if (jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.optString(str, null);
    }

    public static String[] f(JSONObject jSONObject, String str) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        int length = jSONArrayOptJSONArray.length();
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = jSONArrayOptJSONArray.optString(i, null);
        }
        return strArr;
    }

    public static <T extends BaseJsonObject> JSONArray a(T... tArr) throws JSONException {
        JSONArray jSONArray = null;
        if (tArr != null) {
            jSONArray = new JSONArray();
            for (T t : tArr) {
                jSONArray.put(a(t));
            }
        }
        return jSONArray;
    }

    public static JSONObject a(BaseJsonObject baseJsonObject) throws JSONException {
        if (baseJsonObject == null) {
            return null;
        }
        return baseJsonObject.b();
    }
}

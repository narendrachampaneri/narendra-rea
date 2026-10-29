package com.chartboost.sdk.Libraries;

import com.newrelic.agent.android.instrumentation.JSONArrayInstrumentation;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    private static final String a = i.class.getSimpleName();

    private i() {
    }

    public static boolean a(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray.length() != jSONArray2.length()) {
            if (!b(!(jSONArray instanceof JSONArray) ? jSONArray.toString() : JSONArrayInstrumentation.toString(jSONArray), !(jSONArray2 instanceof JSONArray) ? jSONArray2.toString() : JSONArrayInstrumentation.toString(jSONArray2))) {
                return false;
            }
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            Object objOpt = jSONArray.opt(i);
            Object objOpt2 = jSONArray2.opt(i);
            if (!a(objOpt.getClass(), objOpt2.getClass()) && (!Number.class.isInstance(objOpt) || !Number.class.isInstance(objOpt2))) {
                return false;
            }
            if (objOpt instanceof JSONObject) {
                if (!a((JSONObject) objOpt, (JSONObject) objOpt2)) {
                    return false;
                }
            } else if (objOpt instanceof JSONArray) {
                if (!a((JSONArray) objOpt, (JSONArray) objOpt2)) {
                    return false;
                }
            } else if (!b(objOpt, objOpt2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2;
    }

    public static boolean a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject.length() != jSONObject2.length()) {
            try {
                if (!b(!(jSONObject instanceof JSONObject) ? jSONObject.toString(2) : JSONObjectInstrumentation.toString(jSONObject, 2), !(jSONObject2 instanceof JSONObject) ? jSONObject2.toString(2) : JSONObjectInstrumentation.toString(jSONObject2, 2))) {
                    return false;
                }
            } catch (JSONException e) {
                return false;
            }
        }
        JSONArray jSONArrayNames = jSONObject.names();
        if (jSONArrayNames == null && jSONObject2.names() == null) {
            return true;
        }
        for (int i = 0; i < jSONArrayNames.length(); i++) {
            String strOptString = jSONArrayNames.optString(i);
            Object objOpt = jSONObject.opt(strOptString);
            Object objOpt2 = jSONObject2.opt(strOptString);
            if (a(objOpt) && !a(objOpt2)) {
                return false;
            }
            if (!a(objOpt.getClass(), objOpt2.getClass()) && (!Number.class.isInstance(objOpt) || !Number.class.isInstance(objOpt2))) {
                return false;
            }
            if (objOpt instanceof JSONObject) {
                if (!a((JSONObject) objOpt, (JSONObject) objOpt2)) {
                    return false;
                }
            } else if (objOpt instanceof JSONArray) {
                if (!a((JSONArray) objOpt, (JSONArray) objOpt2)) {
                    return false;
                }
            } else if (!b(objOpt, objOpt2)) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(Object obj) {
        return (obj == null || obj == JSONObject.NULL) ? false : true;
    }

    private static BigDecimal a(Number number) {
        if (number instanceof BigDecimal) {
            return (BigDecimal) number;
        }
        if (number instanceof BigInteger) {
            return new BigDecimal((BigInteger) number);
        }
        if ((number instanceof Byte) || (number instanceof Short) || (number instanceof Integer) || (number instanceof Long)) {
            return new BigDecimal(number.longValue());
        }
        if ((number instanceof Float) || (number instanceof Double)) {
            return new BigDecimal(number.doubleValue());
        }
        try {
            return new BigDecimal(number.toString());
        } catch (NumberFormatException e) {
            CBLogging.b(a, "The given number (\"" + number + "\" of class " + number.getClass().getName() + ") does not have a parsable string representation", e);
            return null;
        }
    }

    public static boolean b(Object obj, Object obj2) {
        if (obj == null || obj == JSONObject.NULL) {
            return obj2 == null || obj2 == JSONObject.NULL;
        }
        if (Number.class.isInstance(obj) && Number.class.isInstance(obj2)) {
            try {
                return a((Number) obj).compareTo(a((Number) obj2)) == 0;
            } catch (RuntimeException e) {
                CBLogging.b(a, "Error comparing big decimal values");
            }
        }
        return obj.equals(obj2);
    }
}

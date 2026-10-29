package com.vungle.publisher.protocol.message;

import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import com.vungle.log.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class JsonDeserializationFactory<T> extends MessageFactory<T> {
    protected abstract T a(JSONObject jSONObject) throws JSONException;

    JsonDeserializationFactory() {
    }

    public final T a(String str) throws JSONException {
        if (str == null) {
            return null;
        }
        return a(JSONObjectInstrumentation.init(str));
    }

    protected final T[] a(JSONArray jSONArray) throws JSONException {
        T[] tArrA = null;
        if (jSONArray != null) {
            int length = jSONArray.length();
            tArrA = a(length);
            for (int i = 0; i < length; i++) {
                tArrA[i] = a(jSONArray.optJSONObject(i));
            }
        }
        return tArrA;
    }

    protected static void a(JSONObject jSONObject, String str, Object obj) {
        if (obj == null) {
            Object objOpt = jSONObject.opt(str);
            if (objOpt == null) {
                Logger.d(Logger.PROTOCOL_TAG, "null " + str + " is required input");
                return;
            } else {
                Logger.d(Logger.PROTOCOL_TAG, "invalid " + str + ": " + objOpt);
                return;
            }
        }
        if ((obj instanceof String) && ((String) obj).length() == 0) {
            Logger.d(Logger.PROTOCOL_TAG, "empty " + str + " is required input");
        } else if ((obj instanceof JSONArray) && ((JSONArray) obj).length() == 0) {
            Logger.d(Logger.PROTOCOL_TAG, "empty array " + str + " is required input");
        }
    }
}

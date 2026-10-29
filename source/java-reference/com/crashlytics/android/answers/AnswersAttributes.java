package com.crashlytics.android.answers;

import com.amazon.ags.constants.NativeCallKeys;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class AnswersAttributes {
    final Map<String, Object> attributes = new ConcurrentHashMap();
    final AnswersEventValidator validator;

    public AnswersAttributes(AnswersEventValidator validator) {
        this.validator = validator;
    }

    void put(String key, String value) {
        if (!this.validator.isNull(key, "key") && !this.validator.isNull(value, NativeCallKeys.VALUE)) {
            putAttribute(this.validator.limitStringLength(key), this.validator.limitStringLength(value));
        }
    }

    void put(String key, Number value) {
        if (!this.validator.isNull(key, "key") && !this.validator.isNull(value, NativeCallKeys.VALUE)) {
            putAttribute(this.validator.limitStringLength(key), value);
        }
    }

    void putAttribute(String key, Object value) {
        if (!this.validator.isFullMap(this.attributes, key)) {
            this.attributes.put(key, value);
        }
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject(this.attributes);
        return !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
    }
}

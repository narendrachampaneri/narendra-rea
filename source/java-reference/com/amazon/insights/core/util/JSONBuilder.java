package com.amazon.insights.core.util;

import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class JSONBuilder implements JSONSerializable {
    private JSONObject json = new JSONObject();

    public JSONBuilder(Object component) {
        if (component != null) {
            withAttribute("class", component.getClass().getName());
            withAttribute("hashCode", Integer.toHexString(component.hashCode()));
        }
    }

    public JSONBuilder withAttribute(String key, Object value) {
        Object jsonValue = value instanceof JSONSerializable ? ((JSONSerializable) value).toJSONObject() : value;
        try {
            this.json.putOpt(key, jsonValue);
        } catch (JSONException e) {
        }
        return this;
    }

    @Override // com.amazon.insights.core.util.JSONSerializable
    public JSONObject toJSONObject() {
        return this.json;
    }

    public String toString() {
        String string;
        try {
            if (this.json != null) {
                JSONObject jSONObject = this.json;
                string = !(jSONObject instanceof JSONObject) ? jSONObject.toString(4) : JSONObjectInstrumentation.toString(jSONObject, 4);
            } else {
                string = "";
            }
            return string;
        } catch (JSONException e) {
            JSONObject jSONObject2 = this.json;
            return !(jSONObject2 instanceof JSONObject) ? jSONObject2.toString() : JSONObjectInstrumentation.toString(jSONObject2);
        }
    }
}

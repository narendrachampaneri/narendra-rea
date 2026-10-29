package com.newrelic.agent.android.harvest.crash;

import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.harvest.type.HarvestableObject;
import com.newrelic.com.google.gson.JsonObject;
import com.newrelic.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes.dex */
public class ExceptionInfo extends HarvestableObject {
    private String className;
    private String message;

    public ExceptionInfo() {
    }

    public ExceptionInfo(Throwable throwable) {
        if (throwable.getClass().getName().equalsIgnoreCase("com.newrelic.agent.android.unity.UnityException")) {
            this.className = throwable.toString();
        } else {
            this.className = throwable.getClass().getName();
        }
        if (throwable.getMessage() != null) {
            this.message = throwable.getMessage();
        } else {
            this.message = "";
        }
    }

    public String getClassName() {
        return this.className;
    }

    public String getMessage() {
        return this.message;
    }

    @Override // com.newrelic.agent.android.harvest.type.HarvestableObject, com.newrelic.agent.android.harvest.type.BaseHarvestable, com.newrelic.agent.android.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject data = new JsonObject();
        data.add(AnalyticAttribute.EVENT_NAME_ATTRIBUTE, new JsonPrimitive(this.className != null ? this.className : ""));
        data.add("cause", new JsonPrimitive(this.message != null ? this.message : ""));
        return data;
    }

    public static ExceptionInfo newFromJson(JsonObject jsonObject) {
        ExceptionInfo info = new ExceptionInfo();
        info.className = jsonObject.has(AnalyticAttribute.EVENT_NAME_ATTRIBUTE) ? jsonObject.get(AnalyticAttribute.EVENT_NAME_ATTRIBUTE).getAsString() : "";
        info.message = jsonObject.has("cause") ? jsonObject.get("cause").getAsString() : "";
        return info;
    }
}

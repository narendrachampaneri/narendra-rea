package com.newrelic.agent.android.activity.config;

import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonDeserializationContext;
import com.newrelic.com.google.gson.JsonDeserializer;
import com.newrelic.com.google.gson.JsonElement;
import com.newrelic.com.google.gson.JsonParseException;
import com.newrelic.com.google.gson.JsonPrimitive;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public class ActivityTraceConfigurationDeserializer implements JsonDeserializer<ActivityTraceConfiguration> {
    private final AgentLog log = AgentLogManager.getAgentLog();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.newrelic.com.google.gson.JsonDeserializer
    public ActivityTraceConfiguration deserialize(JsonElement root, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        ActivityTraceConfiguration configuration = new ActivityTraceConfiguration();
        if (!root.isJsonArray()) {
            error("Expected root element to be an array.");
            return null;
        }
        JsonArray array = root.getAsJsonArray();
        if (array.size() != 2) {
            error("Root array must contain 2 elements.");
            return null;
        }
        Integer maxTotalTraceCount = getInteger(array.get(0));
        if (maxTotalTraceCount == null) {
            return null;
        }
        if (maxTotalTraceCount.intValue() < 0) {
            error("The first element of the root array must not be negative.");
            return null;
        }
        configuration.setMaxTotalTraceCount(maxTotalTraceCount.intValue());
        return configuration;
    }

    private Integer getInteger(JsonElement element) {
        if (!element.isJsonPrimitive()) {
            error("Expected an integer.");
            return null;
        }
        JsonPrimitive primitive = element.getAsJsonPrimitive();
        if (!primitive.isNumber()) {
            error("Expected an integer.");
            return null;
        }
        int value = primitive.getAsInt();
        if (value < 0) {
            error("Integer value must not be negative");
            return null;
        }
        return Integer.valueOf(value);
    }

    private void error(String message) {
        this.log.error("ActivityTraceConfigurationDeserializer: " + message);
    }
}

package com.newrelic.agent.android.harvest.type;

import com.newrelic.com.google.gson.JsonArray;
import com.newrelic.com.google.gson.JsonElement;
import com.newrelic.com.google.gson.JsonObject;
import com.newrelic.com.google.gson.JsonPrimitive;
import com.newrelic.com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class BaseHarvestable implements Harvestable {
    protected static final Type GSON_STRING_MAP_TYPE = new TypeToken<Map>() { // from class: com.newrelic.agent.android.harvest.type.BaseHarvestable.1
    }.getType();
    private final Harvestable.Type type;

    public BaseHarvestable(Harvestable.Type type) {
        this.type = type;
    }

    @Override // com.newrelic.agent.android.harvest.type.Harvestable
    public JsonElement asJson() {
        switch (this.type) {
            case OBJECT:
                return asJsonObject();
            case ARRAY:
                return asJsonArray();
            case VALUE:
                return asJsonPrimitive();
            default:
                return null;
        }
    }

    @Override // com.newrelic.agent.android.harvest.type.Harvestable
    public Harvestable.Type getType() {
        return this.type;
    }

    @Override // com.newrelic.agent.android.harvest.type.Harvestable
    public String toJsonString() {
        return asJson().toString();
    }

    @Override // com.newrelic.agent.android.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        return null;
    }

    @Override // com.newrelic.agent.android.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        return null;
    }

    @Override // com.newrelic.agent.android.harvest.type.Harvestable
    public JsonPrimitive asJsonPrimitive() {
        return null;
    }

    protected void notEmpty(String argument) {
        if (argument == null || argument.length() == 0) {
            throw new IllegalArgumentException("Missing Harvestable field.");
        }
    }

    protected void notNull(Object argument) {
        if (argument == null) {
            throw new IllegalArgumentException("Null field in Harvestable object");
        }
    }

    protected String optional(String argument) {
        if (argument == null) {
            return "";
        }
        return argument;
    }
}

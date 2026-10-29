package com.newrelic.com.google.gson;

/* JADX INFO: loaded from: classes.dex */
public enum LongSerializationPolicy {
    DEFAULT { // from class: com.newrelic.com.google.gson.LongSerializationPolicy.1
        @Override // com.newrelic.com.google.gson.LongSerializationPolicy
        public JsonElement serialize(Long value) {
            return new JsonPrimitive((Number) value);
        }
    },
    STRING { // from class: com.newrelic.com.google.gson.LongSerializationPolicy.2
        @Override // com.newrelic.com.google.gson.LongSerializationPolicy
        public JsonElement serialize(Long value) {
            return new JsonPrimitive(String.valueOf(value));
        }
    };

    public abstract JsonElement serialize(Long l);
}

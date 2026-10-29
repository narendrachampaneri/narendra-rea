package com.amazon.device.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class AppEvent {
    private final String eventName;
    private final HashMap<String, String> properties;
    private final long timestamp;

    protected AppEvent(String eventName) {
        this(eventName, -1L);
    }

    public AppEvent(String eventName, long timestamp) {
        this.eventName = eventName;
        this.timestamp = timestamp;
        this.properties = new HashMap<>();
    }

    public static AppEvent createAppEventWithTimestamp(AppEvent appEvent, long timestamp) {
        return new AppEvent(appEvent.eventName, timestamp);
    }

    public String getEventName() {
        return this.eventName;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public AppEvent setProperty(String property, String value) {
        this.properties.put(property, value);
        return this;
    }

    public String getProperty(String property) {
        return this.properties.get(property);
    }

    public Set<Map.Entry<String, String>> getPropertyEntries() {
        return this.properties.entrySet();
    }

    public String toString() {
        StringBuilder builder = new StringBuilder(65);
        builder.append("Application Event {Name: ");
        builder.append(this.eventName);
        builder.append(", Timestamp: ");
        builder.append(this.timestamp);
        for (String prop : this.properties.keySet()) {
            builder.append(", ");
            builder.append(prop);
            builder.append(": ");
            builder.append(this.properties.get(prop));
        }
        builder.append("}");
        return builder.toString();
    }
}

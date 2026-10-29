package com.amazon.device.ads;

import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class SDKEvent {
    public static final String BRIDGE_NAME = "bridgeName";
    private final SDKEventType eventType;
    private final HashMap<String, String> parameters = new HashMap<>();

    public enum SDKEventType {
        RENDERED,
        VISIBLE,
        HIDDEN,
        DESTROYED,
        CLOSED,
        READY,
        RESIZED,
        BRIDGE_ADDED,
        BACK_BUTTON_PRESSED
    }

    public SDKEvent(SDKEventType eventType) {
        this.eventType = eventType;
    }

    public SDKEventType getEventType() {
        return this.eventType;
    }

    public SDKEvent setParameter(String key, String value) {
        this.parameters.put(key, value);
        return this;
    }

    public String getParameter(String key) {
        return this.parameters.get(key);
    }

    public Set<String> getParameterNames() {
        return this.parameters.keySet();
    }
}

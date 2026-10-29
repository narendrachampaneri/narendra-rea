package com.amazon.ags.client.session;

/* JADX INFO: loaded from: classes2.dex */
public class SessionEvent {
    private final String actionCode;
    private final long timestamp = System.currentTimeMillis();

    public SessionEvent(String actionCode) {
        this.actionCode = actionCode;
    }

    public String getActionCode() {
        return this.actionCode;
    }

    public long getTimestamp() {
        return this.timestamp;
    }
}

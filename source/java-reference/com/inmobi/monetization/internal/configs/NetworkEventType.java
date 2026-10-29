package com.inmobi.monetization.internal.configs;

import com.inmobi.commons.metric.EventType;

/* JADX INFO: loaded from: classes.dex */
public enum NetworkEventType implements EventType {
    FETCH_COMPLETE(0),
    RENDER_COMPLETE(1),
    CONNECT_ERROR(2),
    RESPONSE_ERROR(3),
    RENDER_TIMEOUT(4);

    private int a;

    NetworkEventType(int i) {
        this.a = i;
    }

    @Override // com.inmobi.commons.metric.EventType
    public int getValue() {
        return this.a;
    }
}

package com.inmobi.commons.analytics.iat.impl.config;

import com.inmobi.commons.metric.EventType;

/* JADX INFO: loaded from: classes.dex */
public enum AdTrackerEventType implements EventType {
    GOAL_SUCCESS(0),
    GOAL_FAILURE(1),
    GOAL_DUMPED(2);

    private int a;

    AdTrackerEventType(int i) {
        this.a = i;
    }

    @Override // com.inmobi.commons.metric.EventType
    public int getValue() {
        return this.a;
    }
}

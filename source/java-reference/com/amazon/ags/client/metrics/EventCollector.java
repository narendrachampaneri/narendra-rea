package com.amazon.ags.client.metrics;

import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface EventCollector {
    void pauseInsightsSession();

    void reportGenericEvent(GameCircleGenericEvent gameCircleGenericEvent) throws EventReportException;

    void resumeInsightsSession();

    void setIsGuest(boolean z);

    void setPlayerId(String str);

    void submitEvents() throws EventReportException;
}

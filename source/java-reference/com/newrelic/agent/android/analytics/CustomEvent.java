package com.newrelic.agent.android.analytics;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class CustomEvent extends AnalyticsEvent {
    public CustomEvent(String name) {
        super(name, AnalyticsEventCategory.Custom);
    }

    public CustomEvent(String name, Set<AnalyticAttribute> attributeSet) {
        super(name, AnalyticsEventCategory.Custom, null, attributeSet);
    }

    public CustomEvent(String name, String eventType, Set<AnalyticAttribute> attributeSet) {
        super(name, AnalyticsEventCategory.Custom, eventType, attributeSet);
    }
}

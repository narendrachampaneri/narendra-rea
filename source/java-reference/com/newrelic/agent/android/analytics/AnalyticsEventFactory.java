package com.newrelic.agent.android.analytics;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsEventFactory {
    static AnalyticsEvent createEvent(String name, AnalyticsEventCategory eventCategory, String eventType, Set<AnalyticAttribute> eventAttributes) {
        switch (eventCategory) {
            case Session:
                AnalyticsEvent event = new SessionEvent(eventAttributes);
                return event;
            case Interaction:
                AnalyticsEvent event2 = new InteractionEvent(name, eventAttributes);
                return event2;
            case Crash:
                AnalyticsEvent event3 = new CrashEvent(name, eventAttributes);
                return event3;
            case Custom:
                AnalyticsEvent event4 = new CustomEvent(name, eventType, eventAttributes);
                return event4;
            default:
                return null;
        }
    }

    private AnalyticsEventFactory() {
    }
}

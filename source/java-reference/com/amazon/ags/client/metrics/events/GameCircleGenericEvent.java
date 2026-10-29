package com.amazon.ags.client.metrics.events;

import com.amazon.ags.client.metrics.IllegalConstructionException;
import com.amazon.ags.constants.metrics.MetricConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class GameCircleGenericEvent {
    private static final String TAG = "GC_" + GameCircleGenericEvent.class.getSimpleName();
    public static String packageName;
    private String eventName;
    private Map<String, String> attributes = new HashMap();
    private Map<String, Integer> countMetrics = new HashMap();
    private Map<String, Long> timeMetrics = new HashMap();

    public GameCircleGenericEvent(String eventName, Map<String, String> attributes, Map<String, Integer> countMetrics, Map<String, Long> timeMetrics) throws IllegalConstructionException {
        if (eventName == null) {
            throw new IllegalConstructionException("EventName is empty. This event cannot be constructed.");
        }
        this.eventName = eventName;
        if (attributes != null) {
            this.attributes.putAll(attributes);
            if (packageName != null) {
                this.attributes.put(MetricConstants.MetricStringValueAttributesKeys.INSTALLER_PACKAGE_NAME.name(), packageName);
            }
        }
        if (countMetrics != null) {
            this.countMetrics.putAll(countMetrics);
        }
        if (timeMetrics != null) {
            this.timeMetrics.putAll(timeMetrics);
        }
    }

    public String getEventName() {
        return this.eventName;
    }

    public Map<String, String> getAttributes() {
        return this.attributes;
    }

    public Map<String, Integer> getCountMetrics() {
        return this.countMetrics;
    }

    public Map<String, Long> getTimeMetrics() {
        return this.timeMetrics;
    }
}

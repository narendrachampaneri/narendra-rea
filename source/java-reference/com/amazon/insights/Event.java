package com.amazon.insights;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface Event {
    void addAttribute(String str, String str2);

    void addMetric(String str, Number number);

    Map<String, String> getAllAttributes();

    Map<String, Number> getAllMetrics();

    String getAttribute(String str);

    String getEventType();

    Number getMetric(String str);

    boolean hasAttribute(String str);

    boolean hasMetric(String str);

    Event withAttribute(String str, String str2);

    Event withMetric(String str, Number number);
}

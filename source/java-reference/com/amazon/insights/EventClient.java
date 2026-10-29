package com.amazon.insights;

/* JADX INFO: loaded from: classes2.dex */
public interface EventClient {
    void addGlobalAttribute(String str, String str2);

    void addGlobalAttribute(String str, String str2, String str3);

    void addGlobalMetric(String str, Number number);

    void addGlobalMetric(String str, String str2, Number number);

    Event createEvent(String str);

    void recordEvent(Event event);

    void removeGlobalAttribute(String str);

    void removeGlobalAttribute(String str, String str2);

    void removeGlobalMetric(String str);

    void removeGlobalMetric(String str, String str2);

    void submitEvents();
}

package com.newrelic.agent.android.analytics;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface AnalyticAttributeStore {
    void clear();

    int count();

    void delete(AnalyticAttribute analyticAttribute);

    List<AnalyticAttribute> fetchAll();

    boolean store(AnalyticAttribute analyticAttribute);
}

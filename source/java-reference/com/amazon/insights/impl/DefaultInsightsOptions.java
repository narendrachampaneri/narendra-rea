package com.amazon.insights.impl;

import com.amazon.insights.InsightsOptions;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultInsightsOptions implements InsightsOptions {
    private final boolean allowEventCollection;
    private final boolean allowWANDelivery;

    public DefaultInsightsOptions(boolean allowEventCollection, boolean allowWANDelivery) {
        this.allowEventCollection = allowEventCollection;
        this.allowWANDelivery = allowWANDelivery;
    }

    @Override // com.amazon.insights.InsightsOptions
    public boolean getAllowEventCollection() {
        return this.allowEventCollection;
    }

    @Override // com.amazon.insights.InsightsOptions
    public boolean getAllowWANDelivery() {
        return this.allowWANDelivery;
    }
}

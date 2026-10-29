package com.amazon.insights.abtest.cache;

import com.amazon.insights.core.InsightsContext;

/* JADX INFO: loaded from: classes2.dex */
public class VariationCaches {
    private VariationCaches() {
    }

    public static VariationCache tryGetFileVariationCache(InsightsContext context) {
        return new FileVariationCache(context);
    }
}

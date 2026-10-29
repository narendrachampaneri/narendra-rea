package com.amazon.insights.abtest.cache;

import com.amazon.insights.abtest.DefaultVariation;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public interface VariationCache {
    boolean contains(DefaultVariation defaultVariation);

    Map<String, DefaultVariation> get(Set<String> set);

    Map<String, DefaultVariation> getAll();

    boolean put(DefaultVariation defaultVariation);
}

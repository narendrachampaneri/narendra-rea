package com.amazon.insights;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public interface VariationSet extends Iterable<Variation> {
    boolean contains(String str);

    Variation getVariation(String str);

    @Override // java.lang.Iterable
    Iterator<Variation> iterator();

    int size();
}

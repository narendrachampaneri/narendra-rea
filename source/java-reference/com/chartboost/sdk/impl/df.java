package com.chartboost.sdk.impl;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class df<K, V> extends da<K, V, Map<K, V>> {
    public static <K, V> a<K, V> b() {
        return new a<>();
    }

    public static class a<K, V> {
        private da.h.a a = da.h.a.STABLE;
        private final Map<K, V> b = new HashMap();

        a() {
        }

        public df<K, V> a() {
            return new b(this.b, this.a);
        }
    }

    public static <K, V> df<K, V> c() {
        return b().a();
    }

    protected df(Map<? extends K, ? extends V> map, da.h.a aVar) {
        super(map, aVar);
    }

    static class b<K, V> extends df<K, V> {
        b(Map<? extends K, ? extends V> map, da.h.a aVar) {
            super(map, aVar);
        }

        @Override // com.chartboost.sdk.impl.da
        public <N extends Map<? extends K, ? extends V>> Map<K, V> a(N n) {
            return new HashMap(n);
        }
    }
}

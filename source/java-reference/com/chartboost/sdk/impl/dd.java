package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class dd<T> {
    private final Map<Class<?>, T> a = df.c();
    private final Map<Class<?>, T> b = de.a((dg) new a());

    public static <T> List<Class<?>> a(Class<T> cls) {
        return dc.a(cls);
    }

    private final class a implements dg<Class<?>, T> {
        private a() {
        }

        @Override // com.chartboost.sdk.impl.dg
        public T a(Class<?> cls) {
            Iterator<Class<?>> it = dd.a((Class) cls).iterator();
            while (it.hasNext()) {
                T t = (T) dd.this.a.get(it.next());
                if (t != null) {
                    return t;
                }
            }
            return null;
        }
    }

    public T a(Object obj) {
        return this.b.get(obj);
    }

    public T a(Class<?> cls, T t) {
        try {
            return this.a.put(cls, t);
        } finally {
            this.b.clear();
        }
    }

    public int a() {
        return this.a.size();
    }
}

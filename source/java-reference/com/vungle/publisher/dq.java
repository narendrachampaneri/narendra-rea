package com.vungle.publisher;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
final class dq {
    final Method a;
    final dt b;
    final Class<?> c;
    String d;

    dq(Method method, dt dtVar, Class<?> cls) {
        this.a = method;
        this.b = dtVar;
        this.c = cls;
    }

    public final boolean equals(Object other) {
        if (!(other instanceof dq)) {
            return false;
        }
        a();
        dq dqVar = (dq) other;
        dqVar.a();
        return this.d.equals(dqVar.d);
    }

    private synchronized void a() {
        if (this.d == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.a.getDeclaringClass().getName());
            sb.append('#').append(this.a.getName());
            sb.append('(').append(this.c.getName());
            this.d = sb.toString();
        }
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}

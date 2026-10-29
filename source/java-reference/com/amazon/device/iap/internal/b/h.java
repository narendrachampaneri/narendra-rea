package com.amazon.device.iap.internal.b;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: KiwiRequestContext.java */
/* JADX INFO: loaded from: classes.dex */
public class h {
    static final /* synthetic */ boolean b;
    public final Map<String, Object> a = new HashMap();

    static {
        b = !h.class.desiredAssertionStatus();
    }

    public Object a(String str) {
        return this.a.get(str);
    }

    public void a(String str, Object obj) {
        this.a.put(str, obj);
    }

    public void a(Object obj) {
        if (!b && obj == null) {
            throw new AssertionError();
        }
        this.a.put("RESPONSE", obj);
    }

    public Object a() {
        return this.a.get("RESPONSE");
    }

    public void b() {
        this.a.remove("RESPONSE");
    }
}

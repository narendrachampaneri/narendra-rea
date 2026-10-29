package com.chartboost.sdk.impl;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class bx extends bw {
    private dd<cb> a = new dd<>();

    bx() {
    }

    void a(Class cls, cb cbVar) {
        this.a.a(cls, cbVar);
    }

    @Override // com.chartboost.sdk.impl.cb
    public void a(Object obj, StringBuilder sb) {
        Object objA = bt.a(obj);
        if (objA == null) {
            sb.append(" null ");
            return;
        }
        cb cbVarA = null;
        Iterator<Class<?>> it = dd.a((Class) objA.getClass()).iterator();
        while (it.hasNext()) {
            cbVarA = this.a.a(it.next());
            if (cbVarA != null) {
                break;
            }
        }
        if (cbVarA == null && objA.getClass().isArray()) {
            cbVarA = this.a.a((Object) Object[].class);
        }
        if (cbVarA == null) {
            throw new RuntimeException("json can't serialize type : " + objA.getClass());
        }
        cbVarA.a(objA, sb);
    }
}

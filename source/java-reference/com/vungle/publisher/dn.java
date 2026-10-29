package com.vungle.publisher;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
final class dn {
    private static final List<dn> d = new ArrayList();
    Object a;
    ds b;
    dn c;

    private dn(Object obj, ds dsVar) {
        this.a = obj;
        this.b = dsVar;
    }

    static dn a(ds dsVar, Object obj) {
        synchronized (d) {
            int size = d.size();
            if (size > 0) {
                dn dnVarRemove = d.remove(size - 1);
                dnVarRemove.a = obj;
                dnVarRemove.b = dsVar;
                dnVarRemove.c = null;
                return dnVarRemove;
            }
            return new dn(obj, dsVar);
        }
    }

    static void a(dn dnVar) {
        dnVar.a = null;
        dnVar.b = null;
        dnVar.c = null;
        synchronized (d) {
            if (d.size() < 10000) {
                d.add(dnVar);
            }
        }
    }
}

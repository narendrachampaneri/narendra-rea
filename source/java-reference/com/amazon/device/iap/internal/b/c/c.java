package com.amazon.device.iap.internal.b.c;

import com.amazon.device.iap.internal.b.e;
import com.amazon.device.iap.internal.b.i;
import java.util.Set;

/* JADX INFO: compiled from: GetItemDataCommandBase.java */
/* JADX INFO: loaded from: classes.dex */
abstract class c extends i {
    protected final Set<String> a;

    c(e eVar, String str, Set<String> set) {
        super(eVar, "getItem_data", str);
        this.a = set;
        a("skus", set);
    }
}

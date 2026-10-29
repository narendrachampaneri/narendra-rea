package com.amazon.device.iap.internal.b.f;

import com.amazon.device.iap.internal.b.e;

/* JADX INFO: compiled from: ResponseReceivedCommandV2.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends a {
    public c(e eVar, boolean z) {
        super(eVar, "2.0");
        a("receiptDelivered", Boolean.valueOf(z));
    }

    @Override // com.amazon.device.iap.internal.b.i
    public void a_() {
        Object objA = b().d().a("notifyListenerResult");
        if (objA != null && Boolean.TRUE.equals(objA)) {
            a("notifyListenerSucceeded", true);
        } else {
            a("notifyListenerSucceeded", false);
        }
        super.a_();
    }
}

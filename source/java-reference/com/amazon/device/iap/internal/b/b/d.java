package com.amazon.device.iap.internal.b.b;

import com.amazon.device.iap.internal.b.e;
import com.amazon.device.iap.internal.b.i;
import com.amazon.device.iap.internal.model.PurchaseResponseBuilder;
import com.amazon.device.iap.model.PurchaseResponse;
import com.amazon.device.iap.model.RequestId;

/* JADX INFO: compiled from: PurchaseRequest.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends e {
    public d(RequestId requestId, String str) {
        super(requestId);
        c cVar = new c(this, str);
        cVar.b(new b(this, str));
        a((i) cVar);
    }

    @Override // com.amazon.device.iap.internal.b.e
    public void a() {
    }

    @Override // com.amazon.device.iap.internal.b.e
    public void b() {
        PurchaseResponse purchaseResponseBuild = (PurchaseResponse) d().a();
        if (purchaseResponseBuild == null) {
            purchaseResponseBuild = new PurchaseResponseBuilder().setRequestId(c()).setRequestStatus(PurchaseResponse.RequestStatus.FAILED).build();
        }
        a(purchaseResponseBuild);
    }
}

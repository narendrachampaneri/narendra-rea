package com.amazon.device.iap.internal.b.c;

import com.amazon.device.iap.internal.b.e;
import com.amazon.device.iap.internal.b.i;
import com.amazon.device.iap.internal.model.ProductDataResponseBuilder;
import com.amazon.device.iap.model.ProductDataResponse;
import com.amazon.device.iap.model.RequestId;
import java.util.Set;

/* JADX INFO: compiled from: GetProductDataRequest.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends e {
    public d(RequestId requestId, Set<String> set) {
        super(requestId);
        a aVar = new a(this, set);
        aVar.b(new b(this, set));
        a((i) aVar);
    }

    @Override // com.amazon.device.iap.internal.b.e
    public void a() {
        a((ProductDataResponse) d().a());
    }

    @Override // com.amazon.device.iap.internal.b.e
    public void b() {
        ProductDataResponse productDataResponseBuild = (ProductDataResponse) d().a();
        if (productDataResponseBuild == null) {
            productDataResponseBuild = new ProductDataResponseBuilder().setRequestId(c()).setRequestStatus(ProductDataResponse.RequestStatus.FAILED).build();
        }
        a(productDataResponseBuild);
    }
}

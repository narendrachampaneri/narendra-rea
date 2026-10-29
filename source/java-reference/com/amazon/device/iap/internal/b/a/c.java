package com.amazon.device.iap.internal.b.a;

import com.amazon.device.iap.internal.b.e;
import com.amazon.device.iap.internal.b.i;
import com.amazon.device.iap.internal.model.PurchaseResponseBuilder;
import com.amazon.device.iap.internal.model.UserDataBuilder;
import com.amazon.device.iap.model.PurchaseResponse;

/* JADX INFO: compiled from: PurchaseResponseCommandBase.java */
/* JADX INFO: loaded from: classes.dex */
abstract class c extends i {
    c(e eVar, String str) {
        super(eVar, "purchase_response", str);
    }

    protected void a(String str, String str2, String str3, PurchaseResponse.RequestStatus requestStatus) {
        e eVarB = b();
        eVarB.d().a(new PurchaseResponseBuilder().setRequestId(eVarB.c()).setRequestStatus(requestStatus).setUserData(new UserDataBuilder().setUserId(str).setMarketplace(str2).build()).setReceipt(null).build());
    }
}

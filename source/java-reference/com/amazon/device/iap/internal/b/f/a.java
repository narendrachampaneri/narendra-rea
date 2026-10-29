package com.amazon.device.iap.internal.b.f;

import com.amazon.device.iap.internal.b.e;
import com.amazon.device.iap.internal.b.i;
import com.amazon.venezia.command.SuccessResult;

/* JADX INFO: compiled from: ResponseReceivedCommandBase.java */
/* JADX INFO: loaded from: classes.dex */
abstract class a extends i {
    a(e eVar, String str) {
        super(eVar, "response_received", str);
        b(false);
    }

    @Override // com.amazon.device.iap.internal.b.i
    protected boolean a(SuccessResult successResult) throws Exception {
        return true;
    }
}

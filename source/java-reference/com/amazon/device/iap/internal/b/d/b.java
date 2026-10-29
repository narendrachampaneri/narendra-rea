package com.amazon.device.iap.internal.b.d;

import com.amazon.android.framework.exception.KiwiException;
import com.amazon.device.iap.internal.b.e;
import com.amazon.device.iap.internal.b.i;
import com.newrelic.agent.android.analytics.AnalyticAttribute;

/* JADX INFO: compiled from: PurchaseUpdatesCommandBase.java */
/* JADX INFO: loaded from: classes.dex */
abstract class b extends i {
    protected final boolean a;

    b(e eVar, String str, boolean z) {
        super(eVar, "purchase_updates", str);
        this.a = z;
    }

    protected void preExecution() throws KiwiException {
        super.preExecution();
        a("cursor", this.a ? null : com.amazon.device.iap.internal.util.b.a((String) b().d().a(AnalyticAttribute.USER_ID_ATTRIBUTE)));
    }
}

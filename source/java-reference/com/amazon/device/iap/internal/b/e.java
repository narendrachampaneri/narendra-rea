package com.amazon.device.iap.internal.b;

import android.content.Context;
import android.os.Handler;
import com.amazon.device.iap.PurchasingListener;
import com.amazon.device.iap.model.ProductDataResponse;
import com.amazon.device.iap.model.PurchaseResponse;
import com.amazon.device.iap.model.PurchaseUpdatesResponse;
import com.amazon.device.iap.model.RequestId;
import com.amazon.device.iap.model.UserDataResponse;

/* JADX INFO: compiled from: KiwiRequest.java */
/* JADX INFO: loaded from: classes.dex */
public class e {
    private static final String a = e.class.getSimpleName();
    private final RequestId b;
    private final h c = new h();
    private i d = null;

    public e(RequestId requestId) {
        this.b = requestId;
    }

    protected void a(i iVar) {
        this.d = iVar;
    }

    protected void a(Object obj) {
        a(obj, null);
    }

    protected void a(final Object obj, final i iVar) {
        com.amazon.device.iap.internal.util.d.a(obj, "response");
        Context contextB = com.amazon.device.iap.internal.d.d().b();
        final PurchasingListener purchasingListenerA = com.amazon.device.iap.internal.d.d().a();
        if (contextB == null || purchasingListenerA == null) {
            com.amazon.device.iap.internal.util.e.a(a, "PurchasingListener is not set. Dropping response: " + obj);
        } else {
            new Handler(contextB.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.iap.internal.b.e.1
                @Override // java.lang.Runnable
                public void run() {
                    e.this.d().a("notifyListenerResult", Boolean.FALSE);
                    try {
                        if (obj instanceof ProductDataResponse) {
                            purchasingListenerA.onProductDataResponse((ProductDataResponse) obj);
                        } else if (obj instanceof UserDataResponse) {
                            purchasingListenerA.onUserDataResponse((UserDataResponse) obj);
                        } else if (obj instanceof PurchaseUpdatesResponse) {
                            PurchaseUpdatesResponse purchaseUpdatesResponse = (PurchaseUpdatesResponse) obj;
                            purchasingListenerA.onPurchaseUpdatesResponse(purchaseUpdatesResponse);
                            Object objA = e.this.d().a("newCursor");
                            if (objA != null && (objA instanceof String)) {
                                com.amazon.device.iap.internal.util.b.a(purchaseUpdatesResponse.getUserData().getUserId(), objA.toString());
                            }
                        } else if (!(obj instanceof PurchaseResponse)) {
                            com.amazon.device.iap.internal.util.e.b(e.a, "Unknown response type:" + obj.getClass().getName());
                        } else {
                            purchasingListenerA.onPurchaseResponse((PurchaseResponse) obj);
                        }
                        e.this.d().a("notifyListenerResult", Boolean.TRUE);
                    } catch (Throwable th) {
                        com.amazon.device.iap.internal.util.e.b(e.a, "Error in sendResponse: " + th);
                    }
                    if (iVar != null) {
                        iVar.a(true);
                        iVar.a_();
                    }
                }
            });
        }
    }

    public RequestId c() {
        return this.b;
    }

    public h d() {
        return this.c;
    }

    public void e() {
        if (this.d != null) {
            this.d.a_();
        } else {
            a();
        }
    }

    public void a() {
    }

    public void b() {
    }
}

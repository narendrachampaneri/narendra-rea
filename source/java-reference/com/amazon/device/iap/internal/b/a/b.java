package com.amazon.device.iap.internal.b.a;

import com.amazon.device.iap.internal.b.e;
import com.amazon.device.iap.internal.model.PurchaseResponseBuilder;
import com.amazon.device.iap.internal.model.UserDataBuilder;
import com.amazon.device.iap.model.ProductType;
import com.amazon.device.iap.model.PurchaseResponse;
import com.amazon.device.iap.model.Receipt;
import com.amazon.venezia.command.SuccessResult;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: PurchaseResponseCommandV1.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends c {
    private static final String a = b.class.getSimpleName();

    public b(e eVar) {
        super(eVar, "1.0");
    }

    private void a(String str, String str2, String str3) {
        if (str != null && str2 != null && str3 != null) {
            try {
                JSONObject jSONObjectInit = JSONObjectInstrumentation.init(str3);
                if (PurchaseResponse.RequestStatus.safeValueOf(jSONObjectInit.getString("orderStatus")) == PurchaseResponse.RequestStatus.SUCCESSFUL) {
                    com.amazon.device.iap.internal.c.a.a().a(str, str2, com.amazon.device.iap.internal.util.a.a(jSONObjectInit, str2, str).getReceiptId(), str3);
                }
            } catch (Throwable th) {
                com.amazon.device.iap.internal.util.e.b(a, "Error in savePendingReceipt: " + th);
            }
        }
    }

    @Override // com.amazon.device.iap.internal.b.i
    protected boolean a(SuccessResult successResult) throws Exception {
        Receipt receipt;
        Map data = successResult.getData();
        com.amazon.device.iap.internal.util.e.a(a, "data: " + data);
        String str = (String) getCommandData().get("requestId");
        String str2 = (String) data.get(AnalyticAttribute.USER_ID_ATTRIBUTE);
        String str3 = (String) data.get("marketplace");
        String str4 = (String) data.get("receipt");
        if (str == null || !com.amazon.device.iap.internal.c.b.a().a(str)) {
            b().d().b();
            return true;
        }
        if (com.amazon.device.iap.internal.util.d.a(str4)) {
            a(str2, str3, str, PurchaseResponse.RequestStatus.FAILED);
            return false;
        }
        JSONObject jSONObjectInit = JSONObjectInstrumentation.init(str4);
        PurchaseResponse.RequestStatus requestStatusSafeValueOf = PurchaseResponse.RequestStatus.safeValueOf(jSONObjectInit.getString("orderStatus"));
        if (requestStatusSafeValueOf != PurchaseResponse.RequestStatus.SUCCESSFUL) {
            receipt = null;
        } else {
            try {
                Receipt receiptA = com.amazon.device.iap.internal.util.a.a(jSONObjectInit, str2, str);
                if (ProductType.CONSUMABLE == receiptA.getProductType()) {
                    a(str, str2, str4);
                }
                receipt = receiptA;
            } catch (Throwable th) {
                a(str2, str3, str, PurchaseResponse.RequestStatus.FAILED);
                return false;
            }
        }
        e eVarB = b();
        eVarB.d().a(new PurchaseResponseBuilder().setRequestId(eVarB.c()).setRequestStatus(requestStatusSafeValueOf).setUserData(new UserDataBuilder().setUserId(str2).setMarketplace(str3).build()).setReceipt(receipt).build());
        return true;
    }
}

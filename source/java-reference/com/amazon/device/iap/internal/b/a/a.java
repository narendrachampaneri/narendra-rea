package com.amazon.device.iap.internal.b.a;

import com.amazon.device.iap.internal.b.e;
import com.amazon.device.iap.internal.model.PurchaseResponseBuilder;
import com.amazon.device.iap.internal.model.UserDataBuilder;
import com.amazon.device.iap.model.PurchaseResponse;
import com.amazon.device.iap.model.Receipt;
import com.amazon.venezia.command.SuccessResult;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: PurchaseResponseCommandV2.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends c {
    private static final String a = a.class.getSimpleName();

    public a(e eVar) {
        super(eVar, "2.0");
    }

    @Override // com.amazon.device.iap.internal.b.i
    protected boolean a(SuccessResult successResult) throws Exception {
        Receipt receiptA;
        Map data = successResult.getData();
        com.amazon.device.iap.internal.util.e.a(a, "data: " + data);
        String str = (String) getCommandData().get("requestId");
        String str2 = (String) data.get(AnalyticAttribute.USER_ID_ATTRIBUTE);
        String str3 = (String) data.get("marketplace");
        String str4 = (String) data.get("receipt");
        if (com.amazon.device.iap.internal.util.d.a(str4)) {
            a(str2, str3, str, PurchaseResponse.RequestStatus.FAILED);
            return false;
        }
        JSONObject jSONObjectInit = JSONObjectInstrumentation.init(str4);
        PurchaseResponse.RequestStatus requestStatusSafeValueOf = PurchaseResponse.RequestStatus.safeValueOf(jSONObjectInit.getString("orderStatus"));
        if (requestStatusSafeValueOf != PurchaseResponse.RequestStatus.SUCCESSFUL) {
            receiptA = null;
        } else {
            try {
                receiptA = com.amazon.device.iap.internal.util.a.a(jSONObjectInit, str2, str);
            } catch (Throwable th) {
                a(str2, str3, str, PurchaseResponse.RequestStatus.FAILED);
                return false;
            }
        }
        e eVarB = b();
        eVarB.d().a(new PurchaseResponseBuilder().setRequestId(eVarB.c()).setRequestStatus(requestStatusSafeValueOf).setUserData(new UserDataBuilder().setUserId(str2).setMarketplace(str3).build()).setReceipt(receiptA).build());
        return true;
    }
}

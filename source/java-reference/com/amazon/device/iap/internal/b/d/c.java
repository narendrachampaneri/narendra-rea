package com.amazon.device.iap.internal.b.d;

import com.amazon.device.iap.internal.b.e;
import com.amazon.device.iap.internal.model.PurchaseUpdatesResponseBuilder;
import com.amazon.device.iap.internal.model.UserDataBuilder;
import com.amazon.device.iap.model.PurchaseUpdatesResponse;
import com.amazon.device.iap.model.Receipt;
import com.amazon.venezia.command.SuccessResult;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.instrumentation.JSONArrayInstrumentation;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: PurchaseUpdatesCommandV2.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends b {
    private static final String b = c.class.getSimpleName();

    public c(e eVar, boolean z) {
        super(eVar, "2.0", z);
    }

    @Override // com.amazon.device.iap.internal.b.i
    protected boolean a(SuccessResult successResult) throws Exception {
        Map data = successResult.getData();
        com.amazon.device.iap.internal.util.e.a(b, "data: " + data);
        String str = (String) data.get(AnalyticAttribute.USER_ID_ATTRIBUTE);
        String str2 = (String) data.get("marketplace");
        List<Receipt> listA = a(str, (String) data.get("receipts"), (String) data.get("requestId"));
        String str3 = (String) data.get("cursor");
        boolean zBooleanValue = Boolean.valueOf((String) data.get("hasMore")).booleanValue();
        e eVarB = b();
        PurchaseUpdatesResponse purchaseUpdatesResponseBuild = new PurchaseUpdatesResponseBuilder().setRequestId(eVarB.c()).setRequestStatus(PurchaseUpdatesResponse.RequestStatus.SUCCESSFUL).setUserData(new UserDataBuilder().setUserId(str).setMarketplace(str2).build()).setReceipts(listA).setHasMore(zBooleanValue).build();
        eVarB.d().a("newCursor", str3);
        eVarB.d().a(purchaseUpdatesResponseBuild);
        return true;
    }

    private List<Receipt> a(String str, String str2, String str3) throws JSONException {
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArrayInit = JSONArrayInstrumentation.init(str2);
        for (int i = 0; i < jSONArrayInit.length(); i++) {
            try {
                arrayList.add(com.amazon.device.iap.internal.util.a.a(jSONArrayInit.getJSONObject(i), str, str3));
            } catch (com.amazon.device.iap.internal.b.a e) {
                com.amazon.device.iap.internal.util.e.b(b, "fail to parse receipt, requestId:" + e.a());
            } catch (com.amazon.device.iap.internal.b.d e2) {
                com.amazon.device.iap.internal.util.e.b(b, "fail to verify receipt, requestId:" + e2.a());
            } catch (Throwable th) {
                com.amazon.device.iap.internal.util.e.b(b, "fail to verify receipt, requestId:" + th.getMessage());
            }
        }
        return arrayList;
    }
}

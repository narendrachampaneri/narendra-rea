package com.amazon.device.iap.internal.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.device.iap.PurchasingListener;
import com.amazon.device.iap.PurchasingService;
import com.amazon.device.iap.internal.model.ProductBuilder;
import com.amazon.device.iap.internal.model.ProductDataResponseBuilder;
import com.amazon.device.iap.internal.model.PurchaseResponseBuilder;
import com.amazon.device.iap.internal.model.PurchaseUpdatesResponseBuilder;
import com.amazon.device.iap.internal.model.ReceiptBuilder;
import com.amazon.device.iap.internal.model.UserDataBuilder;
import com.amazon.device.iap.internal.model.UserDataResponseBuilder;
import com.amazon.device.iap.internal.util.e;
import com.amazon.device.iap.model.FulfillmentResult;
import com.amazon.device.iap.model.Product;
import com.amazon.device.iap.model.ProductDataResponse;
import com.amazon.device.iap.model.ProductType;
import com.amazon.device.iap.model.PurchaseResponse;
import com.amazon.device.iap.model.PurchaseUpdatesResponse;
import com.amazon.device.iap.model.Receipt;
import com.amazon.device.iap.model.RequestId;
import com.amazon.device.iap.model.UserData;
import com.amazon.device.iap.model.UserDataResponse;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.android.gms.drive.DriveFile;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.mopub.mobileads.VastIconXmlManager;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.math.BigDecimal;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: SandboxRequestHandler.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements com.amazon.device.iap.internal.c {
    private static final String a = c.class.getSimpleName();

    @Override // com.amazon.device.iap.internal.c
    public void a(RequestId requestId) {
        e.a(a, "sendGetUserDataRequest");
        a(requestId.toString(), false, false);
    }

    private void a(String str, boolean z, boolean z2) {
        try {
            Context contextB = com.amazon.device.iap.internal.d.d().b();
            Bundle bundle = new Bundle();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("requestId", str);
            jSONObject.put("packageName", contextB.getPackageName());
            jSONObject.put("sdkVersion", PurchasingService.SDK_VERSION);
            jSONObject.put("isPurchaseUpdates", z);
            jSONObject.put("reset", z2);
            bundle.putString("userInput", !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject));
            Intent intentA = a("com.amazon.testclient.iap.appUserId");
            intentA.addFlags(DriveFile.MODE_READ_ONLY);
            intentA.putExtras(bundle);
            contextB.startService(intentA);
        } catch (JSONException e) {
            e.b(a, "Error in sendGetUserDataRequest.");
        }
    }

    @Override // com.amazon.device.iap.internal.c
    public void a(RequestId requestId, String str) {
        e.a(a, "sendPurchaseRequest");
        try {
            Context contextB = com.amazon.device.iap.internal.d.d().b();
            Bundle bundle = new Bundle();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sku", str);
            jSONObject.put("requestId", requestId.toString());
            jSONObject.put("packageName", contextB.getPackageName());
            jSONObject.put("sdkVersion", PurchasingService.SDK_VERSION);
            bundle.putString("purchaseInput", !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject));
            Intent intentA = a("com.amazon.testclient.iap.purchase");
            intentA.addFlags(DriveFile.MODE_READ_ONLY);
            intentA.putExtras(bundle);
            contextB.startService(intentA);
        } catch (JSONException e) {
            e.b(a, "Error in sendPurchaseRequest.");
        }
    }

    @Override // com.amazon.device.iap.internal.c
    public void a(RequestId requestId, Set<String> set) {
        e.a(a, "sendItemDataRequest");
        try {
            Context contextB = com.amazon.device.iap.internal.d.d().b();
            Bundle bundle = new Bundle();
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray((Collection) set);
            jSONObject.put("requestId", requestId.toString());
            jSONObject.put("packageName", contextB.getPackageName());
            jSONObject.put("skus", jSONArray);
            jSONObject.put("sdkVersion", PurchasingService.SDK_VERSION);
            bundle.putString("itemDataInput", !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject));
            Intent intentA = a("com.amazon.testclient.iap.itemData");
            intentA.addFlags(DriveFile.MODE_READ_ONLY);
            intentA.putExtras(bundle);
            contextB.startService(intentA);
        } catch (JSONException e) {
            e.b(a, "Error in sendItemDataRequest.");
        }
    }

    @Override // com.amazon.device.iap.internal.c
    public void a(RequestId requestId, boolean z) {
        if (requestId == null) {
            requestId = new RequestId();
        }
        e.a(a, "sendPurchaseUpdatesRequest/sendGetUserData first:" + requestId);
        a(requestId.toString(), true, z);
    }

    @Override // com.amazon.device.iap.internal.c
    public void a(RequestId requestId, String str, FulfillmentResult fulfillmentResult) {
        e.a(a, "sendNotifyPurchaseFulfilled");
        try {
            Context contextB = com.amazon.device.iap.internal.d.d().b();
            Bundle bundle = new Bundle();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("requestId", requestId.toString());
            jSONObject.put("packageName", contextB.getPackageName());
            jSONObject.put("receiptId", str);
            jSONObject.put("fulfillmentResult", fulfillmentResult);
            jSONObject.put("sdkVersion", PurchasingService.SDK_VERSION);
            bundle.putString("purchaseFulfilledInput", !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject));
            Intent intentA = a("com.amazon.testclient.iap.purchaseFulfilled");
            intentA.addFlags(DriveFile.MODE_READ_ONLY);
            intentA.putExtras(bundle);
            contextB.startService(intentA);
        } catch (JSONException e) {
            e.b(a, "Error in sendNotifyPurchaseFulfilled.");
        }
    }

    @Override // com.amazon.device.iap.internal.c
    public void a(Context context, Intent intent) {
        e.a(a, "handleResponse");
        intent.setComponent(new ComponentName("com.amazon.sdktestclient", "com.amazon.sdktestclient.command.CommandBroker"));
        try {
            String string = intent.getExtras().getString("responseType");
            if (string.equalsIgnoreCase("com.amazon.testclient.iap.purchase")) {
                g(intent);
            } else if (string.equalsIgnoreCase("com.amazon.testclient.iap.appUserId")) {
                e(intent);
            } else if (string.equalsIgnoreCase("com.amazon.testclient.iap.itemData")) {
                c(intent);
            } else if (string.equalsIgnoreCase("com.amazon.testclient.iap.purchaseUpdates")) {
                a(intent);
            }
        } catch (Exception e) {
            Log.e(a, "Error handling response.", e);
        }
    }

    private Intent a(String str) {
        Intent intent = new Intent(str);
        intent.setComponent(new ComponentName("com.amazon.sdktestclient", "com.amazon.sdktestclient.command.CommandBroker"));
        return intent;
    }

    protected void a(final Object obj) {
        com.amazon.device.iap.internal.util.d.a(obj, "response");
        Context contextB = com.amazon.device.iap.internal.d.d().b();
        final PurchasingListener purchasingListenerA = com.amazon.device.iap.internal.d.d().a();
        if (contextB == null || purchasingListenerA == null) {
            e.a(a, "PurchasingListener is not set. Dropping response: " + obj);
        } else {
            new Handler(contextB.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.iap.internal.a.c.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (obj instanceof ProductDataResponse) {
                            purchasingListenerA.onProductDataResponse((ProductDataResponse) obj);
                        } else if (obj instanceof UserDataResponse) {
                            purchasingListenerA.onUserDataResponse((UserDataResponse) obj);
                        } else if (obj instanceof PurchaseUpdatesResponse) {
                            purchasingListenerA.onPurchaseUpdatesResponse((PurchaseUpdatesResponse) obj);
                        } else if (!(obj instanceof PurchaseResponse)) {
                            e.b(c.a, "Unknown response type:" + obj.getClass().getName());
                        } else {
                            purchasingListenerA.onPurchaseResponse((PurchaseResponse) obj);
                        }
                    } catch (Exception e) {
                        e.b(c.a, "Error in sendResponse: " + e);
                    }
                }
            });
        }
    }

    private void a(Intent intent) throws JSONException {
        PurchaseUpdatesResponse purchaseUpdatesResponseB = b(intent);
        if (purchaseUpdatesResponseB.getRequestStatus() == PurchaseUpdatesResponse.RequestStatus.SUCCESSFUL) {
            String strOptString = JSONObjectInstrumentation.init(intent.getStringExtra("purchaseUpdatesOutput")).optString(VastIconXmlManager.OFFSET);
            Log.i(a, "Offset for PurchaseUpdatesResponse:" + strOptString);
            com.amazon.device.iap.internal.util.b.a(purchaseUpdatesResponseB.getUserData().getUserId(), strOptString);
        }
        a(purchaseUpdatesResponseB);
    }

    private PurchaseUpdatesResponse b(Intent intent) {
        Exception exc;
        UserData userData;
        RequestId requestId;
        ArrayList arrayList;
        PurchaseUpdatesResponse.RequestStatus requestStatus;
        boolean z;
        PurchaseUpdatesResponse.RequestStatus requestStatusValueOf = PurchaseUpdatesResponse.RequestStatus.FAILED;
        try {
            JSONObject jSONObjectInit = JSONObjectInstrumentation.init(intent.getStringExtra("purchaseUpdatesOutput"));
            RequestId requestIdFromString = RequestId.fromString(jSONObjectInit.optString("requestId"));
            try {
                requestStatusValueOf = PurchaseUpdatesResponse.RequestStatus.valueOf(jSONObjectInit.optString("status"));
                boolean zOptBoolean = jSONObjectInit.optBoolean("isMore");
                try {
                    UserData userDataBuild = new UserDataBuilder().setUserId(jSONObjectInit.optString(AnalyticAttribute.USER_ID_ATTRIBUTE)).setMarketplace(jSONObjectInit.optString("marketplace")).build();
                    try {
                        if (requestStatusValueOf == PurchaseUpdatesResponse.RequestStatus.SUCCESSFUL) {
                            arrayList = new ArrayList();
                            try {
                                JSONArray jSONArrayOptJSONArray = jSONObjectInit.optJSONArray("receipts");
                                if (jSONArrayOptJSONArray != null) {
                                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                                        try {
                                            arrayList.add(a(jSONObjectOptJSONObject));
                                        } catch (Exception e) {
                                            Log.e(a, "Failed to parse receipt from json:" + jSONObjectOptJSONObject);
                                        }
                                    }
                                }
                            } catch (Exception e2) {
                                requestStatus = requestStatusValueOf;
                                z = zOptBoolean;
                                userData = userDataBuild;
                                requestId = requestIdFromString;
                                exc = e2;
                                Log.e(a, "Error parsing purchase updates output", exc);
                                return new PurchaseUpdatesResponseBuilder().setRequestId(requestId).setRequestStatus(requestStatus).setUserData(userData).setReceipts(arrayList).setHasMore(z).build();
                            }
                        } else {
                            arrayList = null;
                        }
                        requestStatus = requestStatusValueOf;
                        z = zOptBoolean;
                        userData = userDataBuild;
                        requestId = requestIdFromString;
                    } catch (Exception e3) {
                        arrayList = null;
                        requestStatus = requestStatusValueOf;
                        z = zOptBoolean;
                        userData = userDataBuild;
                        requestId = requestIdFromString;
                        exc = e3;
                    }
                } catch (Exception e4) {
                    requestId = requestIdFromString;
                    exc = e4;
                    arrayList = null;
                    userData = null;
                    requestStatus = requestStatusValueOf;
                    z = zOptBoolean;
                }
            } catch (Exception e5) {
                userData = null;
                requestId = requestIdFromString;
                exc = e5;
                arrayList = null;
                requestStatus = requestStatusValueOf;
                z = false;
            }
        } catch (Exception e6) {
            exc = e6;
            userData = null;
            requestId = null;
            arrayList = null;
            requestStatus = requestStatusValueOf;
            z = false;
        }
        return new PurchaseUpdatesResponseBuilder().setRequestId(requestId).setRequestStatus(requestStatus).setUserData(userData).setReceipts(arrayList).setHasMore(z).build();
    }

    private void c(Intent intent) {
        a(d(intent));
    }

    private ProductDataResponse d(Intent intent) {
        Exception exc;
        LinkedHashSet linkedHashSet;
        ProductDataResponse.RequestStatus requestStatus;
        RequestId requestId;
        LinkedHashSet linkedHashSet2;
        HashMap map = null;
        ProductDataResponse.RequestStatus requestStatusValueOf = ProductDataResponse.RequestStatus.FAILED;
        try {
            JSONObject jSONObjectInit = JSONObjectInstrumentation.init(intent.getStringExtra("itemDataOutput"));
            RequestId requestIdFromString = RequestId.fromString(jSONObjectInit.optString("requestId"));
            try {
                requestStatusValueOf = ProductDataResponse.RequestStatus.valueOf(jSONObjectInit.optString("status"));
                if (requestStatusValueOf != ProductDataResponse.RequestStatus.FAILED) {
                    linkedHashSet = new LinkedHashSet();
                    try {
                        HashMap map2 = new HashMap();
                        try {
                            JSONArray jSONArrayOptJSONArray = jSONObjectInit.optJSONArray("unavailableSkus");
                            if (jSONArrayOptJSONArray != null) {
                                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                                    linkedHashSet.add(jSONArrayOptJSONArray.getString(i));
                                }
                            }
                            JSONObject jSONObjectOptJSONObject = jSONObjectInit.optJSONObject("items");
                            if (jSONObjectOptJSONObject != null) {
                                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                                while (itKeys.hasNext()) {
                                    String next = itKeys.next();
                                    map2.put(next, a(next, jSONObjectOptJSONObject.optJSONObject(next)));
                                }
                            }
                            map = map2;
                            linkedHashSet2 = linkedHashSet;
                        } catch (Exception e) {
                            map = map2;
                            requestStatus = requestStatusValueOf;
                            requestId = requestIdFromString;
                            exc = e;
                            Log.e(a, "Error parsing item data output", exc);
                        }
                    } catch (Exception e2) {
                        requestStatus = requestStatusValueOf;
                        requestId = requestIdFromString;
                        exc = e2;
                    }
                } else {
                    linkedHashSet2 = null;
                }
                linkedHashSet = linkedHashSet2;
                requestStatus = requestStatusValueOf;
                requestId = requestIdFromString;
            } catch (Exception e3) {
                linkedHashSet = null;
                ProductDataResponse.RequestStatus requestStatus2 = requestStatusValueOf;
                requestId = requestIdFromString;
                exc = e3;
                requestStatus = requestStatus2;
            }
        } catch (Exception e4) {
            exc = e4;
            linkedHashSet = null;
            requestStatus = requestStatusValueOf;
            requestId = null;
        }
        return new ProductDataResponseBuilder().setRequestId(requestId).setRequestStatus(requestStatus).setProductData(map).setUnavailableSkus(linkedHashSet).build();
    }

    private Product a(String str, JSONObject jSONObject) throws JSONException {
        ProductType productTypeValueOf = ProductType.valueOf(jSONObject.optString(AnalyticsSQLiteHelper.TRANSACTION_ITEM_TYPE));
        JSONObject jSONObject2 = jSONObject.getJSONObject("priceJson");
        String str2 = Currency.getInstance(jSONObject2.optString(AppLovinEventParameters.REVENUE_CURRENCY)).getSymbol() + new BigDecimal(jSONObject2.optString(NativeCallKeys.VALUE));
        return new ProductBuilder().setSku(str).setProductType(productTypeValueOf).setDescription(jSONObject.optString("description")).setPrice(str2).setSmallIconUrl(jSONObject.optString("smallIconUrl")).setTitle(jSONObject.optString("title")).build();
    }

    private void e(Intent intent) {
        JSONObject jSONObjectInit;
        UserDataResponse userDataResponseF = f(intent);
        RequestId requestId = userDataResponseF.getRequestId();
        String stringExtra = intent.getStringExtra("userInput");
        try {
            jSONObjectInit = JSONObjectInstrumentation.init(stringExtra);
        } catch (JSONException e) {
            Log.e(a, "Unable to parse request data: " + stringExtra, e);
            jSONObjectInit = null;
        }
        if (requestId == null || jSONObjectInit == null) {
            a(userDataResponseF);
            return;
        }
        if (!jSONObjectInit.optBoolean("isPurchaseUpdates", false)) {
            a(userDataResponseF);
            return;
        }
        if (userDataResponseF.getUserData() == null || com.amazon.device.iap.internal.util.d.a(userDataResponseF.getUserData().getUserId())) {
            Log.e(a, "No Userid found in userDataResponse" + userDataResponseF);
            a(new PurchaseUpdatesResponseBuilder().setRequestId(requestId).setRequestStatus(PurchaseUpdatesResponse.RequestStatus.FAILED).setUserData(userDataResponseF.getUserData()).setReceipts(new ArrayList()).setHasMore(false).build());
        } else {
            Log.i(a, "sendGetPurchaseUpdates with user id" + userDataResponseF.getUserData().getUserId());
            a(requestId.toString(), userDataResponseF.getUserData().getUserId(), jSONObjectInit.optBoolean("reset", true));
        }
    }

    private void a(String str, String str2, boolean z) {
        try {
            Context contextB = com.amazon.device.iap.internal.d.d().b();
            String strA = com.amazon.device.iap.internal.util.b.a(str2);
            Log.i(a, "send PurchaseUpdates with user id:" + str2 + ";reset flag:" + z + ", local cursor:" + strA + ", parsed from old requestId:" + str);
            Bundle bundle = new Bundle();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("requestId", str.toString());
            if (z) {
                strA = null;
            }
            jSONObject.put(VastIconXmlManager.OFFSET, strA);
            jSONObject.put("sdkVersion", PurchasingService.SDK_VERSION);
            jSONObject.put("packageName", contextB.getPackageName());
            bundle.putString("purchaseUpdatesInput", !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject));
            Intent intentA = a("com.amazon.testclient.iap.purchaseUpdates");
            intentA.addFlags(DriveFile.MODE_READ_ONLY);
            intentA.putExtras(bundle);
            contextB.startService(intentA);
        } catch (JSONException e) {
            e.b(a, "Error in sendPurchaseUpdatesRequest.");
        }
    }

    private UserDataResponse f(Intent intent) {
        RequestId requestIdFromString;
        Exception e;
        UserDataResponse.RequestStatus requestStatusValueOf;
        UserData userData;
        UserDataResponse.RequestStatus requestStatus;
        UserData userDataBuild = null;
        UserDataResponse.RequestStatus requestStatus2 = UserDataResponse.RequestStatus.FAILED;
        try {
            JSONObject jSONObjectInit = JSONObjectInstrumentation.init(intent.getStringExtra("userOutput"));
            requestIdFromString = RequestId.fromString(jSONObjectInit.optString("requestId"));
            try {
                requestStatusValueOf = UserDataResponse.RequestStatus.valueOf(jSONObjectInit.optString("status"));
                try {
                    if (requestStatusValueOf == UserDataResponse.RequestStatus.SUCCESSFUL) {
                        userDataBuild = new UserDataBuilder().setUserId(jSONObjectInit.optString(AnalyticAttribute.USER_ID_ATTRIBUTE)).setMarketplace(jSONObjectInit.optString("marketplace")).build();
                    }
                    userData = userDataBuild;
                    requestStatus = requestStatusValueOf;
                } catch (Exception e2) {
                    e = e2;
                    Log.e(a, "Error parsing userid output", e);
                    UserDataResponse.RequestStatus requestStatus3 = requestStatusValueOf;
                    userData = null;
                    requestStatus = requestStatus3;
                }
            } catch (Exception e3) {
                requestStatusValueOf = requestStatus2;
                e = e3;
            }
        } catch (Exception e4) {
            requestIdFromString = null;
            e = e4;
            requestStatusValueOf = requestStatus2;
        }
        return new UserDataResponseBuilder().setRequestId(requestIdFromString).setRequestStatus(requestStatus).setUserData(userData).build();
    }

    private void g(Intent intent) {
        a(h(intent));
    }

    private PurchaseResponse h(Intent intent) {
        UserData userDataBuild;
        RequestId requestIdFromString;
        PurchaseResponse.RequestStatus requestStatusSafeValueOf;
        Exception e;
        Receipt receiptA = null;
        PurchaseResponse.RequestStatus requestStatus = PurchaseResponse.RequestStatus.FAILED;
        try {
            JSONObject jSONObjectInit = JSONObjectInstrumentation.init(intent.getStringExtra("purchaseOutput"));
            requestIdFromString = RequestId.fromString(jSONObjectInit.optString("requestId"));
            try {
                userDataBuild = new UserDataBuilder().setUserId(jSONObjectInit.optString(AnalyticAttribute.USER_ID_ATTRIBUTE)).setMarketplace(jSONObjectInit.optString("marketplace")).build();
                try {
                    requestStatusSafeValueOf = PurchaseResponse.RequestStatus.safeValueOf(jSONObjectInit.optString("purchaseStatus"));
                    try {
                        JSONObject jSONObjectOptJSONObject = jSONObjectInit.optJSONObject("receipt");
                        if (jSONObjectOptJSONObject != null) {
                            receiptA = a(jSONObjectOptJSONObject);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        Log.e(a, "Error parsing purchase output", e);
                    }
                } catch (Exception e3) {
                    requestStatusSafeValueOf = requestStatus;
                    e = e3;
                }
            } catch (Exception e4) {
                userDataBuild = null;
                e = e4;
                requestStatusSafeValueOf = requestStatus;
            }
        } catch (Exception e5) {
            userDataBuild = null;
            requestIdFromString = null;
            requestStatusSafeValueOf = requestStatus;
            e = e5;
        }
        return new PurchaseResponseBuilder().setRequestId(requestIdFromString).setRequestStatus(requestStatusSafeValueOf).setUserData(userDataBuild).setReceipt(receiptA).build();
    }

    private Receipt a(JSONObject jSONObject) throws ParseException {
        String strOptString = jSONObject.optString("receiptId");
        String strOptString2 = jSONObject.optString("sku");
        ProductType productTypeValueOf = ProductType.valueOf(jSONObject.optString(AnalyticsSQLiteHelper.TRANSACTION_ITEM_TYPE));
        Date date = b.a.parse(jSONObject.optString("purchaseDate"));
        String strOptString3 = jSONObject.optString("cancelDate");
        return new ReceiptBuilder().setReceiptId(strOptString).setSku(strOptString2).setProductType(productTypeValueOf).setPurchaseDate(date).setCancelDate((strOptString3 == null || strOptString3.length() == 0) ? null : b.a.parse(strOptString3)).build();
    }
}

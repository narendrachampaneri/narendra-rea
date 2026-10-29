package com.amazon.device.iap.internal.util;

import com.amazon.android.Kiwi;
import com.amazon.device.iap.PurchasingService;
import com.amazon.device.iap.internal.model.ReceiptBuilder;
import com.amazon.device.iap.model.ProductType;
import com.amazon.device.iap.model.Receipt;
import com.amazon.identity.auth.device.token.Token;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ReceiptHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class a {
    private static final String a = a.class.getSimpleName();

    public static Receipt a(JSONObject jSONObject, String str, String str2) throws com.amazon.device.iap.internal.b.d, com.amazon.device.iap.internal.b.a, IllegalArgumentException {
        switch (b(jSONObject)) {
            case V1:
                return c(jSONObject, str, str2);
            case LEGACY:
                return b(jSONObject, str, str2);
            default:
                return d(jSONObject, str, str2);
        }
    }

    private static Receipt b(JSONObject jSONObject, String str, String str2) throws com.amazon.device.iap.internal.b.d, com.amazon.device.iap.internal.b.a {
        String strOptString = jSONObject.optString("signature");
        if (d.a(strOptString)) {
            e.b(a, "a signature was not found in the receipt for request ID " + str2);
            MetricsHelper.submitReceiptVerificationFailureMetrics(str2, "NO Signature found", strOptString);
            throw new com.amazon.device.iap.internal.b.d(str2, null, strOptString);
        }
        try {
            Receipt receiptA = a(jSONObject);
            String str3 = str + "-" + receiptA.getReceiptId();
            boolean zIsSignedByKiwi = Kiwi.isSignedByKiwi(str3, strOptString);
            e.a(a, "stringToVerify/legacy:\n" + str3 + "\nsignature:\n" + strOptString);
            if (!zIsSignedByKiwi) {
                MetricsHelper.submitReceiptVerificationFailureMetrics(str2, str3, strOptString);
                throw new com.amazon.device.iap.internal.b.d(str2, str3, strOptString);
            }
            return receiptA;
        } catch (JSONException e) {
            throw new com.amazon.device.iap.internal.b.a(str2, !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject), e);
        }
    }

    private static Receipt a(JSONObject jSONObject) throws JSONException {
        String strOptString = jSONObject.optString(Token.KEY_TOKEN);
        String string = jSONObject.getString("sku");
        ProductType productTypeValueOf = ProductType.valueOf(jSONObject.getString(AnalyticsSQLiteHelper.TRANSACTION_ITEM_TYPE).toUpperCase());
        String strOptString2 = jSONObject.optString("startDate");
        Date dateB = a(strOptString2) ? null : b(strOptString2);
        String strOptString3 = jSONObject.optString("endDate");
        return new ReceiptBuilder().setReceiptId(strOptString).setSku(string).setProductType(productTypeValueOf).setPurchaseDate(dateB).setCancelDate(a(strOptString3) ? null : b(strOptString3)).build();
    }

    private static Receipt c(JSONObject jSONObject, String str, String str2) throws com.amazon.device.iap.internal.b.d, com.amazon.device.iap.internal.b.a {
        String strOptString = jSONObject.optString("DeviceId");
        String strOptString2 = jSONObject.optString("signature");
        if (d.a(strOptString2)) {
            e.b(a, "a signature was not found in the receipt for request ID " + str2);
            MetricsHelper.submitReceiptVerificationFailureMetrics(str2, "NO Signature found", strOptString2);
            throw new com.amazon.device.iap.internal.b.d(str2, null, strOptString2);
        }
        try {
            Receipt receiptA = a(jSONObject);
            Object[] objArr = new Object[9];
            objArr[0] = PurchasingService.SDK_VERSION;
            objArr[1] = str;
            objArr[2] = strOptString;
            objArr[3] = receiptA.getProductType();
            objArr[4] = receiptA.getSku();
            objArr[5] = receiptA.getReceiptId();
            objArr[6] = str2;
            objArr[7] = ProductType.SUBSCRIPTION == receiptA.getProductType() ? receiptA.getPurchaseDate() : null;
            objArr[8] = ProductType.SUBSCRIPTION == receiptA.getProductType() ? receiptA.getCancelDate() : null;
            String str3 = String.format("%s|%s|%s|%s|%s|%s|%s|%tQ|%tQ", objArr);
            e.a(a, "stringToVerify/v1:\n" + str3 + "\nsignature:\n" + strOptString2);
            if (!Kiwi.isSignedByKiwi(str3, strOptString2)) {
                MetricsHelper.submitReceiptVerificationFailureMetrics(str2, str3, strOptString2);
                throw new com.amazon.device.iap.internal.b.d(str2, str3, strOptString2);
            }
            return receiptA;
        } catch (JSONException e) {
            throw new com.amazon.device.iap.internal.b.a(str2, !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject), e);
        }
    }

    private static Receipt d(JSONObject jSONObject, String str, String str2) throws com.amazon.device.iap.internal.b.d, com.amazon.device.iap.internal.b.a {
        String strOptString = jSONObject.optString("DeviceId");
        String strOptString2 = jSONObject.optString("signature");
        if (d.a(strOptString2)) {
            e.b(a, "a signature was not found in the receipt for request ID " + str2);
            MetricsHelper.submitReceiptVerificationFailureMetrics(str2, "NO Signature found", strOptString2);
            throw new com.amazon.device.iap.internal.b.d(str2, null, strOptString2);
        }
        try {
            String string = jSONObject.getString("receiptId");
            String string2 = jSONObject.getString("sku");
            ProductType productTypeValueOf = ProductType.valueOf(jSONObject.getString(AnalyticsSQLiteHelper.TRANSACTION_ITEM_TYPE).toUpperCase());
            String strOptString3 = jSONObject.optString("purchaseDate");
            Date dateB = a(strOptString3) ? null : b(strOptString3);
            String strOptString4 = jSONObject.optString("cancelDate");
            Receipt receiptBuild = new ReceiptBuilder().setReceiptId(string).setSku(string2).setProductType(productTypeValueOf).setPurchaseDate(dateB).setCancelDate(a(strOptString4) ? null : b(strOptString4)).build();
            String str3 = String.format("%s|%s|%s|%s|%s|%tQ|%tQ", str, strOptString, receiptBuild.getProductType(), receiptBuild.getSku(), receiptBuild.getReceiptId(), receiptBuild.getPurchaseDate(), receiptBuild.getCancelDate());
            e.a(a, "stringToVerify/v2:\n" + str3 + "\nsignature:\n" + strOptString2);
            if (!Kiwi.isSignedByKiwi(str3, strOptString2)) {
                MetricsHelper.submitReceiptVerificationFailureMetrics(str2, str3, strOptString2);
                throw new com.amazon.device.iap.internal.b.d(str2, str3, strOptString2);
            }
            return receiptBuild;
        } catch (JSONException e) {
            throw new com.amazon.device.iap.internal.b.a(str2, !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject), e);
        }
    }

    protected static boolean a(String str) {
        return str == null || str.trim().length() == 0;
    }

    protected static Date b(String str) throws JSONException {
        try {
            Date date = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").parse(str);
            if (0 == date.getTime()) {
                return null;
            }
            return date;
        } catch (ParseException e) {
            throw new JSONException(e.getMessage());
        }
    }

    private static c b(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("DeviceId");
        if (!d.a(jSONObject.optString("receiptId"))) {
            return c.V2;
        }
        if (d.a(strOptString)) {
            return c.LEGACY;
        }
        return c.V1;
    }
}

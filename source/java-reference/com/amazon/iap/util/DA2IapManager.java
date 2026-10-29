package com.amazon.iap.util;

import android.util.Log;
import com.amazon.device.iap.PurchasingService;
import com.amazon.device.iap.model.FulfillmentResult;
import com.amazon.device.iap.model.Product;
import com.amazon.device.iap.model.Receipt;
import com.amazon.device.iap.model.UserData;
import com.appsomniacs.da2.DA2Activity;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class DA2IapManager {
    private static final String TAG = "Da2IAPManager";
    private final DA2Activity mainActivity;
    private boolean productAvailable;
    private UserIapData userIapData;

    /* JADX INFO: loaded from: classes2.dex */
    public static class EntitlementRecord {
        public static final long DATE_NOT_SET = -1;
        private long cancelDate;
        private long purchaseDate;
        private String receiptId;
        private String sku;
        private String userId;

        public long getCancelDate() {
            return this.cancelDate;
        }

        public void setCancelDate(long cancelDate) {
            this.cancelDate = cancelDate;
        }

        public String getReceiptId() {
            return this.receiptId;
        }

        public void setReceiptId(String receiptId) {
            this.receiptId = receiptId;
        }

        public String getUserId() {
            return this.userId;
        }

        public void setUserId(String userId) {
            this.userId = userId;
        }

        public String getSku() {
            return this.sku;
        }

        public void setSku(String sku) {
            this.sku = sku;
        }

        public long getPurchaseDate() {
            return this.purchaseDate;
        }

        public void setPurchaseDate(long purchaseDate) {
            this.purchaseDate = purchaseDate;
        }
    }

    public DA2IapManager(DA2Activity mainActivity) {
        this.mainActivity = mainActivity;
    }

    public void setAmazonUserId(String newAmazonUserId, String newAmazonMarketplace) {
        if (newAmazonUserId == null) {
            if (this.userIapData != null) {
                this.userIapData = null;
                refreshProductAvailability();
                return;
            }
            return;
        }
        if (this.userIapData == null || !newAmazonUserId.equals(this.userIapData.getAmazonUserId())) {
            this.userIapData = new UserIapData(newAmazonUserId, newAmazonMarketplace);
            refreshProductAvailability();
        }
    }

    public void enablePurchaseForSkus(Map<String, Product> productData) {
        if (productData.containsKey(DA2Sku.PROPACK.getSku()) || productData.containsKey(DA2Sku.BATTLEPACK1.getSku()) || productData.containsKey(DA2Sku.BATTLEPACK2.getSku()) || productData.containsKey(DA2Sku.BATTLEPACK3.getSku()) || productData.containsKey(DA2Sku.BATTLEPACK4.getSku())) {
            this.productAvailable = true;
        }
    }

    public void disablePurchaseForSkus(Set<String> unavailableSkus) {
        if (unavailableSkus.contains(DA2Sku.PROPACK.toString()) || unavailableSkus.contains(DA2Sku.BATTLEPACK1.toString()) || unavailableSkus.contains(DA2Sku.BATTLEPACK2.toString()) || unavailableSkus.contains(DA2Sku.BATTLEPACK3.toString()) || unavailableSkus.contains(DA2Sku.BATTLEPACK4.toString())) {
            this.productAvailable = false;
            this.mainActivity.showDialog("Warning", "the product isn't available now! ");
        }
    }

    public void disableAllPurchases() {
        this.productAvailable = false;
        refreshProductAvailability();
    }

    public void refreshProductAvailability() {
    }

    public void deactivate() {
    }

    public void activate() {
    }

    public void handleReceipt(String requestId, Receipt receipt, UserData userData) {
        switch (receipt.getProductType()) {
            case ENTITLED:
                handleEntitlementPurchase(receipt, userData);
                break;
        }
    }

    public void purchaseFailed(String sku) {
        this.mainActivity.showDialog("Warning", "Purchase failed!");
    }

    public UserIapData getUserIapData() {
        return this.userIapData;
    }

    private void grantEntitlementPurchase(Receipt receipt, UserData userData) {
        DA2Sku receiptSku = DA2Sku.fromSku(receipt.getSku(), this.userIapData.getAmazonMarketplace());
        boolean matchesExpectedSku = receiptSku == DA2Sku.PROPACK || receiptSku == DA2Sku.BATTLEPACK1 || receiptSku == DA2Sku.BATTLEPACK2 || receiptSku == DA2Sku.BATTLEPACK3 || receiptSku == DA2Sku.BATTLEPACK4;
        if (!matchesExpectedSku) {
            Log.w(TAG, "The SKU [" + receipt.getSku() + "] in the receipt is not valid anymore ");
            PurchasingService.notifyFulfillment(receipt.getReceiptId(), FulfillmentResult.UNAVAILABLE);
            return;
        }
        try {
            DA2Activity dA2Activity = this.mainActivity;
            JSONObject json = receipt.toJSON();
            dA2Activity.registerPurchase(!(json instanceof JSONObject) ? json.toString() : JSONObjectInstrumentation.toString(json), receiptSku.getSku());
        } catch (Throwable e) {
            Log.e(TAG, "Failed to grant entitlement purchase, with error " + e.getMessage());
        }
    }

    private boolean verifyReceiptFromYourService(String receiptId, UserData userData) {
        return true;
    }

    private void handleEntitlementPurchase(Receipt receipt, UserData userData) {
        try {
            if (receipt.isCanceled()) {
                revokeEntitlement(receipt, userData.getUserId());
            } else if (!verifyReceiptFromYourService(receipt.getReceiptId(), userData)) {
                this.mainActivity.showDialog("Verification Error", "Purchase cannot be verified, please retry later.\nIf the issue persists please contact support@appsomniacs.com");
            } else {
                grantEntitlementPurchase(receipt, userData);
            }
        } catch (Throwable e) {
            String msg = new StringBuilder().append("Purchase cannot be completed, please retry.\nError:\"").append(e).toString() != null ? e.getMessage() : "Undefined Error\"\nIf the issue persists please contact support@appsomniacs.com";
            Log.e(TAG, msg, e);
            this.mainActivity.showDialog("Purchase Error", msg);
        }
    }

    private void revokeEntitlement(Receipt receipt, String userId) {
        receipt.getReceiptId();
    }
}

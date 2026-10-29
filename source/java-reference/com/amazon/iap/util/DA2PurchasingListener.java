package com.amazon.iap.util;

import android.provider.Settings;
import com.amazon.device.iap.PurchasingListener;
import com.amazon.device.iap.PurchasingService;
import com.amazon.device.iap.model.ProductDataResponse;
import com.amazon.device.iap.model.PurchaseResponse;
import com.amazon.device.iap.model.PurchaseUpdatesResponse;
import com.amazon.device.iap.model.Receipt;
import com.amazon.device.iap.model.UserDataResponse;
import com.appsomniacs.da2.DA2Activity;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class DA2PurchasingListener implements PurchasingListener {
    private static final String TAG = "Da2PurchasingListener";
    private final DA2IapManager iapManager;
    private String currentUserId = null;
    private String currentMarketplace = null;

    public DA2PurchasingListener(DA2IapManager iapManager) {
        this.iapManager = iapManager;
    }

    @Override // com.amazon.device.iap.PurchasingListener
    public void onUserDataResponse(UserDataResponse response) {
        UserDataResponse.RequestStatus status = response.getRequestStatus();
        switch (status) {
            case SUCCESSFUL:
                String userId = response.getUserData().getUserId();
                this.currentUserId = userId;
                this.currentMarketplace = response.getUserData().getMarketplace();
                DA2Activity.setIdentity(userId);
                this.iapManager.setAmazonUserId(response.getUserData().getUserId(), response.getUserData().getMarketplace());
                DA2Activity.verifyInventory();
                break;
            case FAILED:
            case NOT_SUPPORTED:
                this.iapManager.setAmazonUserId(null, null);
                break;
        }
    }

    @Override // com.amazon.device.iap.PurchasingListener
    public void onProductDataResponse(ProductDataResponse response) {
        ProductDataResponse.RequestStatus status = response.getRequestStatus();
        switch (status) {
            case SUCCESSFUL:
                response.getUnavailableSkus();
                this.iapManager.enablePurchaseForSkus(response.getProductData());
                this.iapManager.disablePurchaseForSkus(response.getUnavailableSkus());
                this.iapManager.refreshProductAvailability();
                break;
            case FAILED:
            case NOT_SUPPORTED:
                this.iapManager.disableAllPurchases();
                break;
        }
    }

    @Override // com.amazon.device.iap.PurchasingListener
    public void onPurchaseUpdatesResponse(PurchaseUpdatesResponse response) {
        PurchaseUpdatesResponse.RequestStatus status = response.getRequestStatus();
        switch (status) {
            case SUCCESSFUL:
                String userId = response.getUserData().getUserId();
                if (userId == null || userId.isEmpty()) {
                    String claimedUserId = DA2Activity.nativeGetClaimedIdentity();
                    if (claimedUserId != null && !claimedUserId.isEmpty()) {
                        userId = claimedUserId;
                    } else {
                        this.iapManager.disableAllPurchases();
                        return;
                    }
                } else {
                    String claimedId = DA2Activity.nativeGetClaimedIdentity();
                    if (claimedId == null || !claimedId.equals(userId)) {
                        DA2Activity.nativeSetIdentity(userId, Settings.Secure.getString(DA2Activity.getContext().getContentResolver(), "android_id"));
                        this.iapManager.setAmazonUserId(userId, response.getUserData().getMarketplace());
                    }
                }
                if (userId != null && !userId.isEmpty()) {
                    for (Receipt receipt : response.getReceipts()) {
                        this.iapManager.handleReceipt(response.getRequestId().toString(), receipt, response.getUserData());
                    }
                    if (response.hasMore()) {
                        PurchasingService.getPurchaseUpdates(false);
                    }
                    this.iapManager.refreshProductAvailability();
                    return;
                }
                this.iapManager.disableAllPurchases();
                break;
                break;
            case FAILED:
            case NOT_SUPPORTED:
                break;
            default:
                return;
        }
        this.iapManager.disableAllPurchases();
    }

    @Override // com.amazon.device.iap.PurchasingListener
    public void onPurchaseResponse(PurchaseResponse response) {
        response.getRequestId().toString();
        String userId = response.getUserData().getUserId();
        PurchaseResponse.RequestStatus status = response.getRequestStatus();
        DA2Activity.nativeSetIdentity(userId, Settings.Secure.getString(DA2Activity.getContext().getContentResolver(), "android_id"));
        switch (status) {
            case SUCCESSFUL:
                Receipt receipt = response.getReceipt();
                this.iapManager.setAmazonUserId(response.getUserData().getUserId(), response.getUserData().getMarketplace());
                this.iapManager.handleReceipt(response.getRequestId().toString(), receipt, response.getUserData());
                this.iapManager.refreshProductAvailability();
                break;
            case INVALID_SKU:
                Set<String> unavailableSkus = new HashSet<>();
                unavailableSkus.add(response.getReceipt().getSku());
                this.iapManager.disablePurchaseForSkus(unavailableSkus);
                break;
            case FAILED:
            case NOT_SUPPORTED:
                this.iapManager.purchaseFailed(response.getReceipt().getSku());
                break;
        }
    }
}

package com.amazon.iap.util;

/* JADX INFO: loaded from: classes2.dex */
public class UserIapData {
    private final String amazonMarketplace;
    private final String amazonUserId;

    public String getAmazonUserId() {
        return this.amazonUserId;
    }

    public String getAmazonMarketplace() {
        return this.amazonMarketplace;
    }

    public UserIapData(String amazonUserId, String amazonMarketplace) {
        this.amazonUserId = amazonUserId;
        this.amazonMarketplace = amazonMarketplace;
    }
}

package com.amazon.device.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
interface PreferredMarketplaceRetriever {
    String retrievePreferredMarketplace(Context context);

    public static class NullPreferredMarketplaceRetriever implements PreferredMarketplaceRetriever {
        @Override // com.amazon.device.ads.PreferredMarketplaceRetriever
        public String retrievePreferredMarketplace(Context context) {
            return null;
        }
    }
}

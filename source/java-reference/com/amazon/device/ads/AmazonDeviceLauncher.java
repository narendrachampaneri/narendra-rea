package com.amazon.device.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
class AmazonDeviceLauncher {
    AmazonDeviceLauncher() {
    }

    boolean isWindowshopPresent(Context context) {
        Intent intent = context.getPackageManager().getLaunchIntentForPackage("com.amazon.windowshop");
        return intent != null;
    }

    void launchWindowshopDetailPage(Context context, String asin) {
        Intent intent = context.getPackageManager().getLaunchIntentForPackage("com.amazon.windowshop");
        if (intent != null) {
            intent.putExtra("com.amazon.windowshop.refinement.asin", asin);
            context.startActivity(intent);
        }
    }

    void launchWindowshopSearchPage(Context context, String keyword) {
        Intent intent = new Intent("android.intent.action.SEARCH");
        intent.setComponent(new ComponentName("com.amazon.windowshop", "com.amazon.windowshop.search.SearchResultsGridActivity"));
        intent.putExtra("query", keyword);
        try {
            context.startActivity(intent);
        } catch (RuntimeException e) {
        }
    }
}

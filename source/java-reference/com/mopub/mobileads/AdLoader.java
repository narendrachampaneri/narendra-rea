package com.mopub.mobileads;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.AdResponse;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class AdLoader {
    WeakReference<AdViewController> mWeakAdViewController;

    abstract void load();

    AdLoader(AdViewController adViewController) {
        this.mWeakAdViewController = new WeakReference<>(adViewController);
    }

    @Nullable
    static AdLoader fromAdResponse(AdResponse response, AdViewController adViewController) {
        MoPubLog.i("Performing custom event.");
        String adTypeCustomEventName = response.getCustomEventClassName();
        if (adTypeCustomEventName != null) {
            Map<String, String> customEventData = response.getServerExtras();
            return new CustomEventAdLoader(adViewController, adTypeCustomEventName, customEventData);
        }
        MoPubLog.i("Failed to create custom event.");
        return null;
    }

    static class CustomEventAdLoader extends AdLoader {
        private String mCustomEventClassName;
        private Map<String, String> mServerExtras;

        public CustomEventAdLoader(AdViewController adViewController, String customEventCLassName, Map<String, String> serverExtras) {
            super(adViewController);
            this.mCustomEventClassName = customEventCLassName;
            this.mServerExtras = serverExtras;
        }

        @Override // com.mopub.mobileads.AdLoader
        void load() {
            AdViewController adViewController = this.mWeakAdViewController.get();
            if (adViewController != null && !adViewController.isDestroyed() && !TextUtils.isEmpty(this.mCustomEventClassName)) {
                adViewController.setNotLoading();
                MoPubView moPubView = adViewController.getMoPubView();
                if (moPubView == null) {
                    MoPubLog.d("Can't load an ad in this ad view because it was destroyed.");
                } else {
                    moPubView.loadCustomEvent(this.mCustomEventClassName, this.mServerExtras);
                }
            }
        }

        @VisibleForTesting
        Map<String, String> getServerExtras() {
            return this.mServerExtras;
        }
    }
}

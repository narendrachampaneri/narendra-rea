package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdReport;

/* JADX INFO: loaded from: classes.dex */
public class HtmlBannerWebView extends BaseHtmlWebView {
    public static final String EXTRA_AD_CLICK_DATA = "com.mopub.intent.extra.AD_CLICK_DATA";

    public HtmlBannerWebView(Context context, AdReport adReport) {
        super(context, adReport);
    }

    public void init(CustomEventBanner.CustomEventBannerListener customEventBannerListener, boolean isScrollable, String redirectUrl, String clickthroughUrl) {
        super.init(isScrollable);
        setWebViewClient(new HtmlWebViewClient(new HtmlBannerWebViewListener(customEventBannerListener), this, clickthroughUrl, redirectUrl));
    }

    static class HtmlBannerWebViewListener implements HtmlWebViewListener {
        private final CustomEventBanner.CustomEventBannerListener mCustomEventBannerListener;

        public HtmlBannerWebViewListener(CustomEventBanner.CustomEventBannerListener customEventBannerListener) {
            this.mCustomEventBannerListener = customEventBannerListener;
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onLoaded(BaseHtmlWebView htmlWebView) {
            this.mCustomEventBannerListener.onBannerLoaded(htmlWebView);
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onFailed(MoPubErrorCode errorCode) {
            this.mCustomEventBannerListener.onBannerFailed(errorCode);
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onClicked() {
            this.mCustomEventBannerListener.onBannerClicked();
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onCollapsed() {
            this.mCustomEventBannerListener.onBannerCollapsed();
        }
    }
}

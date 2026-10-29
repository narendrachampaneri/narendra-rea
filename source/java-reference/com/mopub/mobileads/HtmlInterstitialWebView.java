package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.AdReport;

/* JADX INFO: loaded from: classes.dex */
public class HtmlInterstitialWebView extends BaseHtmlWebView {
    private Handler mHandler;

    public HtmlInterstitialWebView(Context context, AdReport adReport) {
        super(context, adReport);
        this.mHandler = new Handler();
    }

    public void init(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, boolean isScrollable, String redirectUrl, String clickthroughUrl) {
        super.init(isScrollable);
        HtmlInterstitialWebViewListener htmlInterstitialWebViewListener = new HtmlInterstitialWebViewListener(customEventInterstitialListener);
        HtmlWebViewClient htmlWebViewClient = new HtmlWebViewClient(htmlInterstitialWebViewListener, this, clickthroughUrl, redirectUrl);
        setWebViewClient(htmlWebViewClient);
    }

    private void postHandlerRunnable(Runnable r) {
        this.mHandler.post(r);
    }

    static class HtmlInterstitialWebViewListener implements HtmlWebViewListener {
        private final CustomEventInterstitial.CustomEventInterstitialListener mCustomEventInterstitialListener;

        public HtmlInterstitialWebViewListener(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
            this.mCustomEventInterstitialListener = customEventInterstitialListener;
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onLoaded(BaseHtmlWebView mHtmlWebView) {
            this.mCustomEventInterstitialListener.onInterstitialLoaded();
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onFailed(MoPubErrorCode errorCode) {
            this.mCustomEventInterstitialListener.onInterstitialFailed(errorCode);
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onClicked() {
            this.mCustomEventInterstitialListener.onInterstitialClicked();
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onCollapsed() {
        }
    }
}

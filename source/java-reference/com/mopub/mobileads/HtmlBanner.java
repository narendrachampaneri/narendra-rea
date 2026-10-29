package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.factories.HtmlBannerWebViewFactory;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HtmlBanner extends CustomEventBanner {
    private HtmlBannerWebView mHtmlBannerWebView;

    @Override // com.mopub.mobileads.CustomEventBanner
    protected void loadBanner(Context context, CustomEventBanner.CustomEventBannerListener customEventBannerListener, Map<String, Object> localExtras, Map<String, String> serverExtras) {
        if (extrasAreValid(serverExtras)) {
            String htmlData = serverExtras.get(DataKeys.HTML_RESPONSE_BODY_KEY);
            String redirectUrl = serverExtras.get(DataKeys.REDIRECT_URL_KEY);
            String clickthroughUrl = serverExtras.get(DataKeys.CLICKTHROUGH_URL_KEY);
            Boolean isScrollable = Boolean.valueOf(serverExtras.get(DataKeys.SCROLLABLE_KEY));
            try {
                AdReport adReport = (AdReport) localExtras.get(DataKeys.AD_REPORT_KEY);
                this.mHtmlBannerWebView = HtmlBannerWebViewFactory.create(context, adReport, customEventBannerListener, isScrollable.booleanValue(), redirectUrl, clickthroughUrl);
                AdViewController.setShouldHonorServerDimensions(this.mHtmlBannerWebView);
                this.mHtmlBannerWebView.loadHtmlResponse(htmlData);
                return;
            } catch (ClassCastException e) {
                MoPubLog.e("LocalExtras contained an incorrect type.");
                customEventBannerListener.onBannerFailed(MoPubErrorCode.INTERNAL_ERROR);
                return;
            }
        }
        customEventBannerListener.onBannerFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    protected void onInvalidate() {
        if (this.mHtmlBannerWebView != null) {
            this.mHtmlBannerWebView.destroy();
        }
    }

    private boolean extrasAreValid(Map<String, String> serverExtras) {
        return serverExtras.containsKey(DataKeys.HTML_RESPONSE_BODY_KEY);
    }
}

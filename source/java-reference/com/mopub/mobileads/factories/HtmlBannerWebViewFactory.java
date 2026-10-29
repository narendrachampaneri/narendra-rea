package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventBanner;
import com.mopub.mobileads.HtmlBannerWebView;

/* JADX INFO: loaded from: classes.dex */
public class HtmlBannerWebViewFactory {
    protected static HtmlBannerWebViewFactory instance = new HtmlBannerWebViewFactory();

    public static HtmlBannerWebView create(Context context, AdReport adReport, CustomEventBanner.CustomEventBannerListener customEventBannerListener, boolean isScrollable, String redirectUrl, String clickthroughUrl) {
        return instance.internalCreate(context, adReport, customEventBannerListener, isScrollable, redirectUrl, clickthroughUrl);
    }

    public HtmlBannerWebView internalCreate(Context context, AdReport adReport, CustomEventBanner.CustomEventBannerListener customEventBannerListener, boolean isScrollable, String redirectUrl, String clickthroughUrl) {
        HtmlBannerWebView htmlBannerWebView = new HtmlBannerWebView(context, adReport);
        htmlBannerWebView.init(customEventBannerListener, isScrollable, redirectUrl, clickthroughUrl);
        return htmlBannerWebView;
    }

    @Deprecated
    public static void setInstance(HtmlBannerWebViewFactory factory) {
        instance = factory;
    }
}

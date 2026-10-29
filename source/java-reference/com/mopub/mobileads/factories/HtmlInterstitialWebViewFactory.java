package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.HtmlInterstitialWebView;

/* JADX INFO: loaded from: classes.dex */
public class HtmlInterstitialWebViewFactory {
    protected static HtmlInterstitialWebViewFactory instance = new HtmlInterstitialWebViewFactory();

    public static HtmlInterstitialWebView create(Context context, AdReport adReport, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, boolean isScrollable, String redirectUrl, String clickthroughUrl) {
        return instance.internalCreate(context, adReport, customEventInterstitialListener, isScrollable, redirectUrl, clickthroughUrl);
    }

    public HtmlInterstitialWebView internalCreate(Context context, AdReport adReport, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, boolean isScrollable, String redirectUrl, String clickthroughUrl) {
        HtmlInterstitialWebView htmlInterstitialWebView = new HtmlInterstitialWebView(context, adReport);
        htmlInterstitialWebView.init(customEventInterstitialListener, isScrollable, redirectUrl, clickthroughUrl);
        return htmlInterstitialWebView;
    }

    @Deprecated
    public static void setInstance(HtmlInterstitialWebViewFactory factory) {
        instance = factory;
    }
}

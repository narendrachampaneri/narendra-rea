package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.Rect;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.amazon.device.ads.WebRequest;
import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;

/* JADX INFO: loaded from: classes.dex */
class o extends WebView {
    private final AppLovinLogger a;
    private AppLovinAd b;
    private boolean c;

    o(r rVar, AppLovinSdk appLovinSdk, Context context) {
        super(context);
        this.b = null;
        this.c = false;
        this.a = appLovinSdk.getLogger();
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        setWebViewClient(rVar);
        setWebChromeClient(new n(appLovinSdk));
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setScrollBarStyle(33554432);
        setOnTouchListener(new p(this));
        setOnLongClickListener(new q(this));
    }

    AppLovinAd a() {
        return this.b;
    }

    public void a(AppLovinAd appLovinAd) {
        if (this.c) {
            this.a.userError("AdWebView", "Ad can not be loaded in a destroyed web view");
            return;
        }
        this.b = appLovinAd;
        try {
            loadDataWithBaseURL("/", ((AppLovinAdImpl) appLovinAd).getHtmlSource(), WebRequest.CONTENT_TYPE_HTML, null, "");
            this.a.d("AdWebView", "AppLovinAd rendered");
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.c = true;
        try {
            super.destroy();
            this.a.d("AdWebView", "Web view destroyed");
        } catch (Throwable th) {
            if (this.a != null) {
                this.a.e("AdWebView", "destroy() threw exception", th);
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        try {
            super.onFocusChanged(z, i, rect);
        } catch (Exception e) {
            this.a.e("AdWebView", "onFocusChanged() threw exception", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
    }

    @Override // android.webkit.WebView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        try {
            super.onWindowFocusChanged(z);
        } catch (Exception e) {
            this.a.e("AdWebView", "onWindowFocusChanged() threw exception", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onWindowVisibilityChanged(int i) {
        try {
            super.onWindowVisibilityChanged(i);
        } catch (Exception e) {
            this.a.e("AdWebView", "onWindowVisibilityChanged() threw exception", e);
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        try {
            return super.requestFocus(i, rect);
        } catch (Exception e) {
            this.a.e("AdWebView", "requestFocus() threw exception", e);
            return false;
        }
    }
}

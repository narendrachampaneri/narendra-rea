package com.amazon.ags.html5.javascript;

import android.webkit.WebView;

/* JADX INFO: loaded from: classes.dex */
public interface JavascriptRepository {
    void loadAlertJavascript(WebView webView);

    void loadBackgroundJavascript(WebView webView);

    void loadOverlayJavascript(WebView webView);

    void loadToastJavascript(WebView webView);
}

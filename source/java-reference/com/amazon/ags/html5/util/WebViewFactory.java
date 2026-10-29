package com.amazon.ags.html5.util;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.amazon.ags.html5.factory.ServiceFactory;
import com.amazon.ags.html5.javascript.JavascriptRepository;

/* JADX INFO: loaded from: classes.dex */
public class WebViewFactory {
    private static final String TAG = "GC_" + WebViewFactory.class.getSimpleName();
    private final Context context;
    private final WebView globalBackgroundWebview;

    public WebViewFactory(Context context, JavascriptRepository javascriptRepository) {
        this.context = context;
        this.globalBackgroundWebview = newWebView(this.context);
    }

    public WebView newToastWebView() {
        return newWebView(this.context);
    }

    public WebView newOverlayWebView(Activity activity) {
        return newWebView(activity);
    }

    private WebView newWebView(Context activityContext) {
        WebView webView = new WebView(activityContext);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setDefaultTextEncodingName("utf-8");
        webView.clearCache(true);
        webView.setWebViewClient(new WebViewClient() { // from class: com.amazon.ags.html5.util.WebViewFactory.1
            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
                Log.d(WebViewFactory.TAG, "WebView Error: " + description);
            }
        });
        webView.setWebChromeClient(new WebChromeClient() { // from class: com.amazon.ags.html5.util.WebViewFactory.2
            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                WebViewFactory.this.logConsoleMessage(consoleMessage);
                return true;
            }
        });
        return webView;
    }

    public WebView getBackgroundWebview() {
        return this.globalBackgroundWebview;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logConsoleMessage(ConsoleMessage consoleMessage) {
        if (consoleMessage.messageLevel().compareTo(ConsoleMessage.MessageLevel.ERROR) >= 0) {
            Log.e(TAG, "JS(line " + consoleMessage.lineNumber() + "): " + consoleMessage.message());
        } else if (ServiceFactory.isDebugLoggingEnabled()) {
            if (consoleMessage.messageLevel().compareTo(ConsoleMessage.MessageLevel.WARNING) >= 0) {
                Log.w(TAG, "JS(line " + consoleMessage.lineNumber() + "): " + consoleMessage.message());
            } else {
                Log.d(TAG, "JS(line " + consoleMessage.lineNumber() + "): " + consoleMessage.message());
            }
        }
    }
}

package com.mopub.mobileads.util;

import android.annotation.TargetApi;
import android.os.Build;
import android.support.annotation.NonNull;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Reflection;

/* JADX INFO: loaded from: classes.dex */
public class WebViews {
    @TargetApi(11)
    public static void onResume(@NonNull WebView webView) {
        if (Build.VERSION.SDK_INT >= 11) {
            webView.onResume();
        } else {
            try {
                new Reflection.MethodBuilder(webView, "onResume").setAccessible().execute();
            } catch (Exception e) {
            }
        }
    }

    @TargetApi(11)
    public static void onPause(@NonNull WebView webView, boolean isFinishing) {
        if (isFinishing) {
            webView.stopLoading();
            webView.loadUrl("");
        }
        if (Build.VERSION.SDK_INT >= 11) {
            webView.onPause();
        } else {
            try {
                new Reflection.MethodBuilder(webView, "onPause").setAccessible().execute();
            } catch (Exception e) {
            }
        }
    }

    public static void setDisableJSChromeClient(WebView webView) {
        webView.setWebChromeClient(new WebChromeClient() { // from class: com.mopub.mobileads.util.WebViews.1
            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView view, String url, String message, JsResult result) {
                MoPubLog.d(message);
                result.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsConfirm(WebView view, String url, String message, JsResult result) {
                MoPubLog.d(message);
                result.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
                MoPubLog.d(message);
                result.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsBeforeUnload(WebView view, String url, String message, JsResult result) {
                MoPubLog.d(message);
                result.confirm();
                return true;
            }
        });
    }
}

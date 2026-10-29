package com.vungle.publisher.display.controller;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.vungle.log.Logger;
import com.vungle.publisher.ar;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.util.ViewUtils;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AdWebViewClient extends WebViewClient {

    @Inject
    EventBus a;

    @Inject
    WebViewConfig b;

    @Inject
    public AdWebViewClient() {
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int code, String desc, String str) {
        Logger.e(Logger.AD_TAG, "failed to load web view: code " + code + ", " + desc);
        this.a.a(new ar());
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String url) {
        Logger.v(Logger.AD_TAG, "webview finished loading. appending config string");
        if (!url.toLowerCase().startsWith("javascript:")) {
            StringBuilder sb = new StringBuilder("javascript:function actionClicked(m,p){ var q = prompt('vungle:'+JSON.stringify({method:m,params:(p?p:null)}));if(q&&typeof q === 'string'){return JSON.parse(q).result;}};function noTapHighlight(){var l=document.getElementsByTagName('*');for(var i=0; i<l.length; i++){l[i].style.webkitTapHighlightColor='rgba(0,0,0,0)';}};noTapHighlight();");
            try {
                sb.append("if (typeof vungleInit == 'function') {vungleInit($webviewConfig$);};".replace("$webviewConfig$", this.b.c()));
            } catch (JSONException e) {
                Logger.e(Logger.AD_TAG, "webview failed to load config object", e);
            }
            String string = sb.toString();
            Logger.v(Logger.AD_TAG, "webview client injecting javascript: " + string);
            webView.loadUrl(string);
            ViewUtils.b(webView);
        }
    }
}

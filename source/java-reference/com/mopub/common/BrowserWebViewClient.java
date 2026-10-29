package com.mopub.common;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Drawables;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
class BrowserWebViewClient extends WebViewClient {
    private static final EnumSet<UrlAction> SUPPORTED_URL_ACTIONS = EnumSet.of(UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);

    @NonNull
    private MoPubBrowser mMoPubBrowser;

    public BrowserWebViewClient(@NonNull MoPubBrowser moPubBrowser) {
        this.mMoPubBrowser = moPubBrowser;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
        MoPubLog.d("MoPubBrowser error: " + description);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        if (TextUtils.isEmpty(url)) {
            return false;
        }
        UrlHandler urlHandler = new UrlHandler.Builder().withSupportedUrlActions(SUPPORTED_URL_ACTIONS).withoutMoPubBrowser().withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.common.BrowserWebViewClient.1
            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingSucceeded(@NonNull String url2, @NonNull UrlAction urlAction) {
                if (urlAction.equals(UrlAction.OPEN_IN_APP_BROWSER)) {
                    BrowserWebViewClient.this.mMoPubBrowser.getWebView().loadUrl(url2);
                } else {
                    BrowserWebViewClient.this.mMoPubBrowser.finish();
                }
            }

            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingFailed(@NonNull String url2, @NonNull UrlAction lastFailedUrlAction) {
            }
        }).build();
        return urlHandler.handleResolvedUrl(this.mMoPubBrowser.getApplicationContext(), url, true, null);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        super.onPageStarted(view, url, favicon);
        this.mMoPubBrowser.getForwardButton().setImageDrawable(Drawables.UNRIGHT_ARROW.createDrawable(this.mMoPubBrowser));
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView view, String url) {
        Drawable backImageDrawable;
        Drawable forwardImageDrawable;
        super.onPageFinished(view, url);
        if (view.canGoBack()) {
            backImageDrawable = Drawables.LEFT_ARROW.createDrawable(this.mMoPubBrowser);
        } else {
            backImageDrawable = Drawables.UNLEFT_ARROW.createDrawable(this.mMoPubBrowser);
        }
        this.mMoPubBrowser.getBackButton().setImageDrawable(backImageDrawable);
        if (view.canGoForward()) {
            forwardImageDrawable = Drawables.RIGHT_ARROW.createDrawable(this.mMoPubBrowser);
        } else {
            forwardImageDrawable = Drawables.UNRIGHT_ARROW.createDrawable(this.mMoPubBrowser);
        }
        this.mMoPubBrowser.getForwardButton().setImageDrawable(forwardImageDrawable);
    }
}

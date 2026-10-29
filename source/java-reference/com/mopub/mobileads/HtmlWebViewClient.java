package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
class HtmlWebViewClient extends WebViewClient {
    static final String MOPUB_FAIL_LOAD = "mopub://failLoad";
    static final String MOPUB_FINISH_LOAD = "mopub://finishLoad";
    private final EnumSet<UrlAction> SUPPORTED_URL_ACTIONS = EnumSet.of(UrlAction.HANDLE_MOPUB_SCHEME, UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);
    private final String mClickthroughUrl;
    private final Context mContext;
    private BaseHtmlWebView mHtmlWebView;
    private HtmlWebViewListener mHtmlWebViewListener;
    private final String mRedirectUrl;

    HtmlWebViewClient(HtmlWebViewListener htmlWebViewListener, BaseHtmlWebView htmlWebView, String clickthrough, String redirect) {
        this.mHtmlWebViewListener = htmlWebViewListener;
        this.mHtmlWebView = htmlWebView;
        this.mClickthroughUrl = clickthrough;
        this.mRedirectUrl = redirect;
        this.mContext = htmlWebView.getContext();
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        new UrlHandler.Builder().withSupportedUrlActions(this.SUPPORTED_URL_ACTIONS).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.HtmlWebViewClient.2
            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingSucceeded(@NonNull String url2, @NonNull UrlAction urlAction) {
                if (HtmlWebViewClient.this.mHtmlWebView.wasClicked()) {
                    HtmlWebViewClient.this.mHtmlWebViewListener.onClicked();
                    HtmlWebViewClient.this.mHtmlWebView.onResetUserClick();
                }
            }

            @Override // com.mopub.common.UrlHandler.ResultActions
            public void urlHandlingFailed(@NonNull String url2, @NonNull UrlAction lastFailedUrlAction) {
            }
        }).withMoPubSchemeListener(new UrlHandler.MoPubSchemeListener() { // from class: com.mopub.mobileads.HtmlWebViewClient.1
            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public void onFinishLoad() {
                HtmlWebViewClient.this.mHtmlWebViewListener.onLoaded(HtmlWebViewClient.this.mHtmlWebView);
            }

            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public void onClose() {
                HtmlWebViewClient.this.mHtmlWebViewListener.onCollapsed();
            }

            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public void onFailLoad() {
                HtmlWebViewClient.this.mHtmlWebViewListener.onFailed(MoPubErrorCode.UNSPECIFIED);
            }
        }).build().handleUrl(this.mContext, url, this.mHtmlWebView.wasClicked());
        return true;
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        if (this.mRedirectUrl != null && url.startsWith(this.mRedirectUrl)) {
            view.stopLoading();
            if (this.mHtmlWebView.wasClicked()) {
                try {
                    Intents.showMoPubBrowserForUrl(this.mContext, Uri.parse(url));
                    return;
                } catch (IntentNotResolvableException e) {
                    MoPubLog.d(e.getMessage());
                    return;
                }
            }
            MoPubLog.d("Attempted to redirect without user interaction");
        }
    }
}

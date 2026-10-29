package com.amazon.identity.auth.device.authorization;

import android.R;
import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.authorization.api.AuthorizationListener;
import com.amazon.identity.auth.device.authorization.api.AuthzConstants;
import com.amazon.identity.auth.device.endpoint.AbstractTokenRequest;
import com.amazon.identity.auth.device.service.MAPServiceResult;
import com.amazon.identity.auth.device.token.MAPCookie;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.amazon.identity.auth.device.utils.MAPUtils;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
class MAPAuthzDialog extends Dialog implements DialogInterface.OnCancelListener {
    private static final String AT_MAIN_COOKIE_NAME = "at-main";
    private static final int DEFAULT_THEME = 16973831;
    private static final String LOG_TAG = MAPAuthzDialog.class.getName();
    private static final String LOG_TAG_CLIENT = MAPAuthzDialog.class.getName() + ".Client";
    private static final String REDIRECT_SCHEME = "amzn://";
    private static final String US_DOMAIN = ".amazon.com";
    private final AuthorizationListener authorizationListener;
    private boolean isDetachedFromWindow;
    private RelativeLayout mAuthzDialogViewContainer;
    private ProgressBar mProgressBar;
    private RelativeLayout mProgressBarContainer;
    private final UUID mRequestId;
    private final String[] mRequestedScopes;
    private boolean mShowProgressBar;
    private final String mUrl;
    private WebView mWebView;
    private LinearLayout mWebViewContainer;

    MAPAuthzDialog(Context context, String url, AuthorizationListener listener, UUID requestId, String[] scopes) {
        super(context, 16973831);
        this.isDetachedFromWindow = false;
        this.mShowProgressBar = false;
        this.authorizationListener = listener;
        this.mUrl = url;
        MAPLog.pii(LOG_TAG, "Starting MAP Authz Dialog", "url=" + this.mUrl);
        this.mRequestId = requestId;
        this.mRequestedScopes = scopes;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        MAPLog.i(LOG_TAG, "OnCreate Oauth Dialog");
        this.mProgressBar = new ProgressBar(getContext(), null, R.attr.progressBarStyleHorizontal);
        this.mProgressBar.setIndeterminate(true);
        this.mProgressBar.getIndeterminateDrawable().setAlpha(150);
        super.onCreate(savedInstanceState);
        MAPLog.i(LOG_TAG, "ONCreate MAP Authz Dialog");
        requestWindowFeature(1);
        setUpWebView();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void setUpWebView() {
        MAPLog.i(LOG_TAG, "Setting up webview");
        this.mAuthzDialogViewContainer = new RelativeLayout(getContext());
        this.mProgressBarContainer = new RelativeLayout(getContext());
        float pixelDensity = getContext().getResources().getDisplayMetrics().density;
        int pixelHeight = (int) (30 * pixelDensity);
        RelativeLayout.LayoutParams myParams = new RelativeLayout.LayoutParams(-1, pixelHeight);
        this.mProgressBarContainer.setLayoutParams(myParams);
        this.mProgressBarContainer.setVisibility(8);
        RelativeLayout.LayoutParams progressBarParams = new RelativeLayout.LayoutParams(200, -2);
        progressBarParams.addRule(13);
        this.mProgressBar.setLayoutParams(progressBarParams);
        this.mProgressBarContainer.addView(this.mProgressBar);
        AlphaAnimation alphaUp = new AlphaAnimation(0.6f, 0.6f);
        alphaUp.setFillAfter(true);
        this.mProgressBar.startAnimation(alphaUp);
        this.mWebViewContainer = new LinearLayout(getContext());
        ViewGroup.LayoutParams webViewParams = new ViewGroup.LayoutParams(-1, -1);
        this.mWebViewContainer.setLayoutParams(webViewParams);
        this.mWebView = new WebView(getContext());
        this.mWebView.setVerticalScrollBarEnabled(false);
        this.mWebView.setHorizontalScrollBarEnabled(false);
        this.mWebView.setWebViewClient(new MAPAuthzWebViewClient());
        this.mWebView.getSettings().setJavaScriptEnabled(true);
        this.mWebView.loadUrl(this.mUrl);
        this.mWebView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.mWebView.setVisibility(0);
        this.mWebView.getSettings().setSavePassword(false);
        this.mWebViewContainer.addView(this.mWebView);
        this.mAuthzDialogViewContainer.addView(this.mWebViewContainer);
        this.mAuthzDialogViewContainer.addView(this.mProgressBarContainer);
        setContentView(this.mAuthzDialogViewContainer, new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.mWebView != null) {
            this.mWebView.stopLoading();
        }
        if (!this.isDetachedFromWindow) {
            showProgressBar(false);
            super.dismiss();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.isDetachedFromWindow = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        this.isDetachedFromWindow = false;
        super.onAttachedToWindow();
    }

    private class MAPAuthzWebViewClient extends WebViewClient {
        public MAPAuthzWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            MAPLog.pii(MAPAuthzDialog.LOG_TAG_CLIENT, "onPageFinished", "url=" + url);
            super.onPageFinished(view, url);
            if (!MAPAuthzDialog.this.isDetachedFromWindow) {
                MAPAuthzDialog.this.showProgressBar(false);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            MAPLog.pii(MAPAuthzDialog.LOG_TAG_CLIENT, "onPageStarted", "url=" + url);
            super.onPageStarted(view, url, favicon);
            if (!MAPAuthzDialog.this.isDetachedFromWindow) {
                MAPAuthzDialog.this.showProgressBar(true);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            MAPLog.pii(MAPAuthzDialog.LOG_TAG_CLIENT, "shouldOverrideUrlLoading", "url=" + url);
            if (url != null && url.startsWith(MAPAuthzDialog.REDIRECT_SCHEME)) {
                MAPLog.i(MAPAuthzDialog.LOG_TAG, "Processing redirectUrl");
                if (!MAPAuthzDialog.this.isDetachedFromWindow) {
                    MAPAuthzDialog.this.showProgressBar(false);
                }
                MAPAuthzDialog.this.dismiss();
                cleanCookies(MAPAuthzDialog.this.getContext(), url);
                try {
                    AuthorizationResponseParser parser = new AuthorizationResponseParser();
                    Bundle results = parser.extractResultsBundle(url, MAPAuthzDialog.this.mRequestId.toString(), MAPAuthzDialog.this.mRequestedScopes);
                    if (results.containsKey(AuthzConstants.BUNDLE_KEY.CAUSE_ID.val)) {
                        MAPAuthzDialog.this.authorizationListener.onCancel(results);
                    } else {
                        MAPAuthzDialog.this.authorizationListener.onSuccess(results);
                    }
                    return true;
                } catch (AuthError e) {
                    MAPAuthzDialog.this.authorizationListener.onError(e);
                    return true;
                }
            }
            if (MAPUtils.isMAPUrl(url)) {
                return false;
            }
            MAPLog.pii(MAPAuthzDialog.LOG_TAG, "URL clicked - override", "url=" + url);
            Intent browserIntent = new Intent("android.intent.action.VIEW", Uri.parse(url));
            view.getContext().startActivity(browserIntent);
            return true;
        }

        private void cleanCookies(Context context, String url) {
            try {
                MAPCookie atMain = new MAPCookie(MAPAuthzDialog.AT_MAIN_COOKIE_NAME, "", ".amazon.com", null, true);
                MAPCookie.clearCookieInCookieManager(context, atMain, url, null);
            } catch (AuthError e) {
                MAPLog.i(MAPAuthzDialog.LOG_TAG_CLIENT, "Unable to clear cookies : " + e.getMessage());
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            MAPLog.i(MAPAuthzDialog.LOG_TAG_CLIENT, "onReceivedError=" + errorCode + " desc=" + description);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            MAPLog.i(MAPAuthzDialog.LOG_TAG_CLIENT, "onReceivedSslError");
            if (isDevo()) {
                MAPLog.d(MAPAuthzDialog.LOG_TAG_CLIENT, "Hitting devo");
                handler.proceed();
            } else {
                super.onReceivedSslError(view, handler, error);
                handler.cancel();
                MAPAuthzDialog.this.dismiss();
                MAPAuthzDialog.this.authorizationListener.onError(new AuthError("SSL Error", AuthError.ERROR_TYPE.ERROR_WEBVIEW_SSL));
            }
        }

        private boolean isDevo() {
            Context context = MAPAuthzDialog.this.getContext();
            String packageName = context.getPackageName();
            try {
                ApplicationInfo appInfo = context.getPackageManager().getApplicationInfo(packageName, 128);
                if (appInfo.metaData == null) {
                    return false;
                }
                String hostType = appInfo.metaData.getString("host.type");
                return hostType.equals(AbstractTokenRequest.DEVO_PREFIX);
            } catch (PackageManager.NameNotFoundException e) {
                return false;
            }
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        MAPLog.i(LOG_TAG, "OnKeyDown");
        if (keyCode == 4) {
            MAPLog.i(LOG_TAG, "KeyEvent.KEYCODE_BACK");
            if (!this.isDetachedFromWindow) {
                showProgressBar(false);
            }
            if (this.mWebView != null && this.mWebView.canGoBack()) {
                MAPLog.i(LOG_TAG, "Going back in webview");
                this.mWebView.goBack();
                return true;
            }
            MAPLog.i(LOG_TAG, "onKeyDown Dismissing webview");
            this.authorizationListener.onCancel(MAPServiceResult.getOnCancelBundle(0, this.mRequestedScopes));
            dismiss();
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialog) {
        MAPLog.i(LOG_TAG, "Spinner in webview cancelled");
        if (this.mWebView == null || !this.mWebView.canGoBack()) {
            MAPLog.i(LOG_TAG, "Dismissing Dialog");
            this.authorizationListener.onCancel(MAPServiceResult.getOnCancelBundle(0, this.mRequestedScopes));
            dismiss();
        } else {
            this.mWebView.goBack();
            MAPLog.i(LOG_TAG, "Stop Loading");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showProgressBar(boolean showProgressBar) {
        if (this.mShowProgressBar != showProgressBar) {
            PeekingAnimationView peekingViewAnimation = new PeekingAnimationView(this.mProgressBarContainer, showProgressBar);
            this.mAuthzDialogViewContainer.startAnimation(peekingViewAnimation);
            this.mShowProgressBar = showProgressBar;
        }
    }

    private class PeekingAnimationView extends Animation {
        private static final int DURATION = 600;
        private final View mPeekingView;
        private final int mPeekingViewHeight;
        private final boolean mShowState;

        public PeekingAnimationView(View view, boolean state) {
            setDuration(600L);
            this.mPeekingView = view;
            this.mPeekingViewHeight = this.mPeekingView.getLayoutParams().height;
            this.mShowState = state;
            if (this.mShowState) {
                this.mPeekingView.setVisibility(0);
                this.mPeekingView.getLayoutParams().height = 0;
            }
        }

        @Override // android.view.animation.Animation
        protected void applyTransformation(float interpolatedTime, Transformation t) {
            super.applyTransformation(interpolatedTime, t);
            if (interpolatedTime < 1.0f) {
                if (this.mShowState) {
                    this.mPeekingView.getLayoutParams().height = (int) (this.mPeekingViewHeight * interpolatedTime);
                } else {
                    this.mPeekingView.getLayoutParams().height = this.mPeekingViewHeight - ((int) (this.mPeekingViewHeight * interpolatedTime));
                }
                this.mPeekingView.requestLayout();
                return;
            }
            if (this.mShowState) {
                this.mPeekingView.getLayoutParams().height = this.mPeekingViewHeight;
                this.mPeekingView.requestLayout();
            } else {
                this.mPeekingView.getLayoutParams().height = 0;
                this.mPeekingView.setVisibility(8);
                this.mPeekingView.requestLayout();
                this.mPeekingView.getLayoutParams().height = this.mPeekingViewHeight;
            }
        }
    }
}

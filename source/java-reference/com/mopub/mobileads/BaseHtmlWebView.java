package com.mopub.mobileads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.amazon.device.ads.WebRequest;
import com.mopub.common.AdReport;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.VersionCode;

/* JADX INFO: loaded from: classes.dex */
public class BaseHtmlWebView extends BaseWebView implements ViewGestureDetector.UserClickListener {
    private boolean mClicked;
    private final ViewGestureDetector mViewGestureDetector;

    public BaseHtmlWebView(Context context, AdReport adReport) {
        super(context);
        disableScrollingAndZoom();
        getSettings().setJavaScriptEnabled(true);
        this.mViewGestureDetector = new ViewGestureDetector(context, this, adReport);
        this.mViewGestureDetector.setUserClickListener(this);
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH)) {
            enablePlugins(true);
        }
        setBackgroundColor(0);
    }

    public void init(boolean isScrollable) {
        initializeOnTouchListener(isScrollable);
    }

    @Override // android.webkit.WebView
    public void loadUrl(String url) {
        if (url != null) {
            MoPubLog.d("Loading url: " + url);
            if (url.startsWith("javascript:")) {
                super.loadUrl(url);
            }
        }
    }

    private void disableScrollingAndZoom() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
    }

    void loadHtmlResponse(String htmlResponse) {
        loadDataWithBaseURL("http://ads.mopub.com/", htmlResponse, WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
    }

    void initializeOnTouchListener(final boolean isScrollable) {
        setOnTouchListener(new View.OnTouchListener() { // from class: com.mopub.mobileads.BaseHtmlWebView.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                BaseHtmlWebView.this.mViewGestureDetector.sendTouchEvent(event);
                return event.getAction() == 2 && !isScrollable;
            }
        });
    }

    @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
    public void onUserClick() {
        this.mClicked = true;
    }

    @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
    public void onResetUserClick() {
        this.mClicked = false;
    }

    @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
    public boolean wasClicked() {
        return this.mClicked;
    }
}

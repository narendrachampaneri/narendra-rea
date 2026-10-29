package com.mopub.mobileads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.view.View;
import com.amazon.device.ads.WebRequest;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Utils;
import com.mopub.common.util.VersionCode;

/* JADX INFO: loaded from: classes.dex */
class VastWebView extends BaseWebView {

    @Nullable
    VastWebViewClickListener mVastWebViewClickListener;

    interface VastWebViewClickListener {
        void onVastWebViewClick();
    }

    VastWebView(Context context) {
        super(context);
        disableScrollingAndZoom();
        getSettings().setJavaScriptEnabled(true);
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH)) {
            enablePlugins(true);
        }
        setBackgroundColor(0);
        setOnTouchListener(new VastWebViewOnTouchListener());
        setId((int) Utils.generateUniqueId());
    }

    void loadData(String data) {
        loadDataWithBaseURL("http://ads.mopub.com/", data, WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
    }

    void setVastWebViewClickListener(@NonNull VastWebViewClickListener vastWebViewClickListener) {
        this.mVastWebViewClickListener = vastWebViewClickListener;
    }

    private void disableScrollingAndZoom() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
        setScrollBarStyle(0);
    }

    @NonNull
    static VastWebView createView(@NonNull Context context, @NonNull VastResource vastResource) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(vastResource);
        VastWebView webView = new VastWebView(context);
        vastResource.initializeWebView(webView);
        return webView;
    }

    class VastWebViewOnTouchListener implements View.OnTouchListener {
        private boolean mClickStarted;

        VastWebViewOnTouchListener() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v, MotionEvent event) {
            switch (event.getAction()) {
                case 0:
                    this.mClickStarted = true;
                    return false;
                case 1:
                    if (this.mClickStarted) {
                        this.mClickStarted = false;
                        if (VastWebView.this.mVastWebViewClickListener != null) {
                            VastWebView.this.mVastWebViewClickListener.onVastWebViewClick();
                        }
                    }
                    return false;
                default:
                    return false;
            }
        }
    }

    @NonNull
    @VisibleForTesting
    @Deprecated
    VastWebViewClickListener getVastWebViewClickListener() {
        return this.mVastWebViewClickListener;
    }
}

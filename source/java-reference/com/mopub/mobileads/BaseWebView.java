package com.mopub.mobileads;

import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.amazon.device.ads.WebRequest;
import com.google.android.gms.cast.CastStatusCodes;
import com.mopub.common.util.VersionCode;
import com.mopub.common.util.Views;
import com.mopub.mobileads.util.WebViews;

/* JADX INFO: loaded from: classes.dex */
public class BaseWebView extends WebView {
    private static boolean sDeadlockCleared = false;
    protected boolean mIsDestroyed;

    public BaseWebView(Context context) {
        super(context.getApplicationContext());
        enablePlugins(false);
        WebViews.setDisableJSChromeClient(this);
        if (!sDeadlockCleared) {
            clearWebViewDeadlock(getContext());
            sDeadlockCleared = true;
        }
    }

    protected void enablePlugins(boolean enabled) {
        if (!VersionCode.currentApiLevel().isAtLeast(VersionCode.JELLY_BEAN_MR2)) {
            if (enabled) {
                getSettings().setPluginState(WebSettings.PluginState.ON);
            } else {
                getSettings().setPluginState(WebSettings.PluginState.OFF);
            }
        }
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.mIsDestroyed = true;
        Views.removeFromParent(this);
        removeAllViews();
        super.destroy();
    }

    @Deprecated
    void setIsDestroyed(boolean isDestroyed) {
        this.mIsDestroyed = isDestroyed;
    }

    private void clearWebViewDeadlock(@NonNull Context context) {
        if (Build.VERSION.SDK_INT == 19) {
            WebView webView = new WebView(context.getApplicationContext());
            webView.setBackgroundColor(0);
            webView.loadDataWithBaseURL(null, "", WebRequest.CONTENT_TYPE_HTML, "UTF-8", null);
            WindowManager.LayoutParams params = new WindowManager.LayoutParams();
            params.width = 1;
            params.height = 1;
            params.type = CastStatusCodes.APPLICATION_NOT_RUNNING;
            params.flags = 16777240;
            params.format = -2;
            params.gravity = 8388659;
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            windowManager.addView(webView, params);
        }
    }
}

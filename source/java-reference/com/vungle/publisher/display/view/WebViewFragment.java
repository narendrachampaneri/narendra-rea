package com.vungle.publisher.display.view;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.vungle.log.Logger;
import com.vungle.publisher.bt;
import com.vungle.publisher.display.controller.AdWebViewClient;
import com.vungle.publisher.util.ViewUtils;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class WebViewFragment extends AdFragment {
    protected String c;
    protected WebView d;

    @Inject
    bt e;

    @Inject
    AdWebViewClient f;

    @Inject
    WebViewFactory g;

    @Override // com.vungle.publisher.display.view.AdFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState != null) {
            this.c = savedInstanceState.getString("url");
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Logger.v(Logger.AD_TAG, "creating webview");
        FragmentActivity activity = getActivity();
        WebView webView = new WebView(this.g.a);
        this.d = webView;
        this.e.a(webView);
        webView.setWebViewClient(this.f);
        WebSettings settings = webView.getSettings();
        settings.setBuiltInZoomControls(false);
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSaveFormData(true);
        settings.setUseWideViewPort(false);
        webView.setBackgroundColor(0);
        webView.setBackgroundResource(0);
        webView.loadUrl(this.c);
        ViewUtils.a((View) webView);
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.addView(webView);
        ViewGroup.LayoutParams layoutParams = webView.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        return frameLayout;
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putString("url", this.c);
    }
}

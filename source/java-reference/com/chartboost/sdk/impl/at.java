package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.amazon.device.ads.WebRequest;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.mopub.common.AdType;

/* JADX INFO: loaded from: classes.dex */
public class at extends ap {
    private WebView a;
    private View.OnClickListener b;

    public at(aw awVar, Context context) {
        super(context);
        this.b = null;
        this.a = new WebView(context);
        addView(this.a, new LinearLayout.LayoutParams(-1, -1));
        this.a.setBackgroundColor(0);
        this.a.setWebViewClient(new WebViewClient() { // from class: com.chartboost.sdk.impl.at.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                if (url == null) {
                    return false;
                }
                if (url.contains("chartboost") && url.contains("click") && at.this.b != null) {
                    at.this.b.onClick(at.this);
                }
                return true;
            }
        });
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener clickListener) {
        super.setOnClickListener(clickListener);
        this.b = clickListener;
    }

    @Override // com.chartboost.sdk.impl.ap
    public void a(com.chartboost.sdk.Libraries.e.a aVar, int i) {
        String strE = aVar.e(AdType.HTML);
        if (strE != null) {
            try {
                this.a.loadDataWithBaseURL("file:///android_res/", strE, WebRequest.CONTENT_TYPE_HTML, "UTF-8", null);
            } catch (Exception e) {
                CBLogging.b("AppCellWebView", "Exception raised loading data into webview", e);
            }
        }
    }

    @Override // com.chartboost.sdk.impl.ap
    public int a() {
        return CBUtility.a(100, getContext());
    }
}

package com.mopub.mobileads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.FrameLayout;
import com.mopub.common.AdReport;
import com.mopub.common.CloseableLayout;
import com.mopub.common.DataKeys;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
abstract class BaseInterstitialActivity extends Activity implements TraceFieldInterface {
    protected AdReport mAdReport;
    private Long mBroadcastIdentifier;
    private CloseableLayout mCloseableLayout;

    public abstract View getAdView();

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }

    BaseInterstitialActivity() {
    }

    enum JavaScriptWebViewCallbacks {
        WEB_VIEW_DID_APPEAR("webviewDidAppear();"),
        WEB_VIEW_DID_CLOSE("webviewDidClose();");

        private String mJavascript;

        JavaScriptWebViewCallbacks(String javascript) {
            this.mJavascript = javascript;
        }

        protected String getJavascript() {
            return this.mJavascript;
        }

        protected String getUrl() {
            return "javascript:" + this.mJavascript;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        TraceMachine.startTracing("BaseInterstitialActivity");
        try {
            TraceMachine.enterMethod(this._nr_trace, "BaseInterstitialActivity#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "BaseInterstitialActivity#onCreate", null);
        }
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.mBroadcastIdentifier = getBroadcastIdentifierFromIntent(intent);
        this.mAdReport = getAdReportFromIntent(intent);
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        View adView = getAdView();
        this.mCloseableLayout = new CloseableLayout(this);
        this.mCloseableLayout.setOnCloseListener(new CloseableLayout.OnCloseListener() { // from class: com.mopub.mobileads.BaseInterstitialActivity.1
            @Override // com.mopub.common.CloseableLayout.OnCloseListener
            public void onClose() {
                BaseInterstitialActivity.this.finish();
            }
        });
        this.mCloseableLayout.addView(adView, new FrameLayout.LayoutParams(-1, -1));
        setContentView(this.mCloseableLayout);
        TraceMachine.exitMethod();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.mCloseableLayout.removeAllViews();
        super.onDestroy();
    }

    Long getBroadcastIdentifier() {
        return this.mBroadcastIdentifier;
    }

    protected void showInterstitialCloseButton() {
        this.mCloseableLayout.setCloseVisible(true);
    }

    protected void hideInterstitialCloseButton() {
        this.mCloseableLayout.setCloseVisible(false);
    }

    protected static Long getBroadcastIdentifierFromIntent(Intent intent) {
        if (intent.hasExtra(DataKeys.BROADCAST_IDENTIFIER_KEY)) {
            return Long.valueOf(intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L));
        }
        return null;
    }

    @Nullable
    protected static AdReport getAdReportFromIntent(Intent intent) {
        try {
            return (AdReport) intent.getSerializableExtra(DataKeys.AD_REPORT_KEY);
        } catch (ClassCastException e) {
            return null;
        }
    }
}

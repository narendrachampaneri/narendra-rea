package com.chartboost.sdk;

import android.app.Activity;
import android.os.Bundle;
import com.chartboost.sdk.Model.CBError;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public abstract class ChartboostActivity extends Activity implements a, TraceFieldInterface {
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        TraceMachine.startTracing("ChartboostActivity");
        try {
            TraceMachine.enterMethod(this._nr_trace, "ChartboostActivity#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "ChartboostActivity#onCreate", null);
        }
        super.onCreate(bundle);
        b.a((a) this);
        Chartboost.onCreate(this);
        TraceMachine.exitMethod();
    }

    @Override // android.app.Activity
    protected void onStart() {
        ApplicationStateMonitor.getInstance().activityStarted();
        super.onStart();
        Chartboost.onStart(this);
    }

    @Override // android.app.Activity
    protected void onStop() {
        ApplicationStateMonitor.getInstance().activityStopped();
        super.onStop();
        Chartboost.onStop(this);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (isFinishing()) {
            Chartboost.onDestroy(this);
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        Chartboost.onPause(this);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Chartboost.onResume(this);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!Chartboost.onBackPressed()) {
            super.onBackPressed();
        }
    }

    @Override // com.chartboost.sdk.a
    public boolean shouldRequestInterstitial(String location) {
        return true;
    }

    @Override // com.chartboost.sdk.a
    public boolean shouldDisplayInterstitial(String location) {
        return true;
    }

    @Override // com.chartboost.sdk.a
    public void didCacheInterstitial(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didFailToLoadInterstitial(String location, CBError.CBImpressionError error) {
    }

    @Override // com.chartboost.sdk.a
    public void didDismissInterstitial(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didCloseInterstitial(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didClickInterstitial(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didDisplayInterstitial(String location) {
    }

    @Override // com.chartboost.sdk.a
    public boolean shouldRequestMoreApps(String location) {
        return true;
    }

    @Override // com.chartboost.sdk.a
    public boolean shouldDisplayMoreApps(String location) {
        return true;
    }

    @Override // com.chartboost.sdk.a
    public void didFailToLoadMoreApps(String location, CBError.CBImpressionError error) {
    }

    @Override // com.chartboost.sdk.a
    public void didCacheMoreApps(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didDismissMoreApps(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didCloseMoreApps(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didClickMoreApps(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didDisplayMoreApps(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didFailToRecordClick(String uri, CBError.CBClickError error) {
    }

    @Override // com.chartboost.sdk.a
    public void didPauseClickForConfirmation() {
    }

    @Override // com.chartboost.sdk.a
    public boolean shouldDisplayRewardedVideo(String location) {
        return true;
    }

    @Override // com.chartboost.sdk.a
    public void didCacheRewardedVideo(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didFailToLoadRewardedVideo(String location, CBError.CBImpressionError error) {
    }

    @Override // com.chartboost.sdk.a
    public void didDismissRewardedVideo(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didCloseRewardedVideo(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didClickRewardedVideo(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didCompleteRewardedVideo(String location, int reward) {
    }

    @Override // com.chartboost.sdk.a
    public void didDisplayRewardedVideo(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void willDisplayVideo(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didCacheInPlay(String location) {
    }

    @Override // com.chartboost.sdk.a
    public void didFailToLoadInPlay(String location, CBError.CBImpressionError error) {
    }
}

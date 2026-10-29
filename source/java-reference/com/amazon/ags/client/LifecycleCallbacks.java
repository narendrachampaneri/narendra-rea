package com.amazon.ags.client;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.amazon.ags.api.AmazonGamesCallback;
import com.amazon.ags.api.AmazonGamesClient;
import com.amazon.ags.api.AmazonGamesFeature;
import com.amazon.ags.api.AmazonGamesStatus;
import com.amazon.ags.html5.overlay.GameCircleAlertUserInterface;
import com.amazon.ags.html5.overlay.GameCircleUserInterface;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(14)
public class LifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
    private EnumSet<AmazonGamesFeature> initFeatures;

    public LifecycleCallbacks(EnumSet<AmazonGamesFeature> features) {
        this.initFeatures = features;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (!(activity instanceof GameCircleUserInterface) && !(activity instanceof GameCircleAlertUserInterface)) {
            AmazonGamesClient.release();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (!(activity instanceof GameCircleUserInterface) && !(activity instanceof GameCircleAlertUserInterface)) {
            AmazonGamesClient.initialize(activity, new AmazonGamesCallback() { // from class: com.amazon.ags.client.LifecycleCallbacks.1
                @Override // com.amazon.ags.api.AmazonGamesCallback
                public void onServiceReady(AmazonGamesClient amazonGamesClient) {
                }

                @Override // com.amazon.ags.api.AmazonGamesCallback
                public void onServiceNotReady(AmazonGamesStatus reason) {
                }
            }, this.initFeatures);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}

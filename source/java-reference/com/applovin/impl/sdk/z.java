package com.applovin.impl.sdk;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes.dex */
public class z {
    private static String k = null;
    private final AppLovinSdkImpl a;
    private final AppLovinAdServiceImpl b;
    private AppLovinAdImpl c;
    private SoftReference d;
    private volatile String g;
    private de h;
    private SoftReference j;
    private final Object f = new Object();
    private volatile boolean i = false;
    private final Handler e = new Handler(Looper.getMainLooper());

    public z(AppLovinSdk appLovinSdk) {
        this.a = (AppLovinSdkImpl) appLovinSdk;
        this.b = (AppLovinAdServiceImpl) appLovinSdk.getAdService();
    }

    public static void a(String str) {
        k = str;
    }

    public static String b() {
        return k;
    }

    private void e() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        if (this.d == null || (appLovinAdLoadListener = (AppLovinAdLoadListener) this.d.get()) == null) {
            return;
        }
        appLovinAdLoadListener.failedToReceiveAd(AppLovinErrorCodes.INCENTIVIZED_NO_AD_PRELOADED);
    }

    private AppLovinAdRewardListener f() {
        return new aa(this);
    }

    public void a(Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        AppLovinAdRewardListener appLovinAdRewardListenerF = appLovinAdRewardListener == null ? f() : appLovinAdRewardListener;
        if (!a()) {
            this.a.getLogger().userError("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
            e();
            return;
        }
        if (!AppLovinSdkUtils.isValidString(this.c.getVideoFilename()) || this.a.getFileManager().a(this.c.getVideoFilename(), activity)) {
            if (!((Boolean) this.a.a(bw.ah)).booleanValue()) {
                b(activity, appLovinAdRewardListenerF, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
                return;
            }
            aq aqVar = new aq(this.a, this);
            aqVar.a(activity);
            aqVar.a(appLovinAdDisplayListener);
            aqVar.a(appLovinAdClickListener);
            aqVar.a(appLovinAdVideoPlaybackListener);
            aqVar.a(appLovinAdRewardListenerF);
            aqVar.a();
        }
    }

    void a(AppLovinAd appLovinAd, AppLovinAdRewardListener appLovinAdRewardListener) {
        this.h = new de(this.a, appLovinAd, appLovinAdRewardListener);
        this.a.a().a(this.h, cr.BACKGROUND);
    }

    public void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.d = new SoftReference(appLovinAdLoadListener);
        if (!a()) {
            this.b.loadNextAd(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED, new ab(this, appLovinAdLoadListener));
            return;
        }
        this.a.getLogger().userError("IncentivizedAdController", "Attempted to call preloadAndNotify: while an ad was already loaded or currently being played. Do not call preloadAndNotify: again until the last ad has been closed (adHidden).");
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.adReceived(this.c);
        }
    }

    void a(AppLovinAdRewardListener appLovinAdRewardListener) {
        appLovinAdRewardListener.userDeclinedToViewAd(this.c);
    }

    void a(String str, Activity activity) {
        if (str == null || !((Boolean) this.a.a(bw.ai)).booleanValue()) {
            return;
        }
        new ao(this.a, activity, str).a();
    }

    public boolean a() {
        return this.c != null;
    }

    void b(Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        if (!a()) {
            this.a.getLogger().userError("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
            e();
            return;
        }
        AppLovinAd appLovinAd = this.c;
        if (!appLovinAd.getType().equals(AppLovinAdType.INCENTIVIZED)) {
            this.a.getLogger().e("IncentivizedAdController", "Attempted to render an ad of type " + this.c.getType() + " in an Incentivized Ad interstitial.");
            appLovinAdVideoPlaybackListener.videoPlaybackEnded(this.c, 0.0d, false);
            return;
        }
        AppLovinInterstitialAdDialog appLovinInterstitialAdDialogCreate = AppLovinInterstitialAd.create(this.a, activity);
        ae aeVar = new ae(this, activity, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener, null);
        appLovinInterstitialAdDialogCreate.setAdDisplayListener(aeVar);
        appLovinInterstitialAdDialogCreate.setAdVideoPlaybackListener(aeVar);
        appLovinInterstitialAdDialogCreate.setAdClickListener(aeVar);
        appLovinInterstitialAdDialogCreate.showAndRender(appLovinAd);
        this.j = new SoftReference(appLovinInterstitialAdDialogCreate);
        a(appLovinAd, aeVar);
    }

    void b(String str) {
        synchronized (this.f) {
            this.g = str;
        }
    }

    String c() {
        String str;
        synchronized (this.f) {
            str = this.g;
        }
        return str;
    }

    public void d() {
        AppLovinInterstitialAdDialog appLovinInterstitialAdDialog;
        if (this.j == null || (appLovinInterstitialAdDialog = (AppLovinInterstitialAdDialog) this.j.get()) == null) {
            return;
        }
        appLovinInterstitialAdDialog.dismiss();
    }
}

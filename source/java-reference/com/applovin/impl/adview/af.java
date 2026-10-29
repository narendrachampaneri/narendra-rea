package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Intent;
import com.applovin.adview.AppLovinInterstitialActivity;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.impl.sdk.AppLovinSdkImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class af implements AppLovinInterstitialAdDialog {
    private static volatile boolean n;
    private final String d;
    private final AppLovinSdkImpl e;
    private final Activity f;
    private volatile AppLovinAdLoadListener g;
    private volatile AppLovinAdDisplayListener h;
    private volatile AppLovinAdVideoPlaybackListener i;
    private volatile AppLovinAdClickListener j;
    private volatile AppLovinAdImpl k;
    private volatile AppLovinAdImpl.AdTarget l;
    private volatile w m;
    private static final Map c = Collections.synchronizedMap(new HashMap());
    public static volatile boolean a = false;
    public static volatile boolean b = false;

    af(AppLovinSdk appLovinSdk, Activity activity) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.e = (AppLovinSdkImpl) appLovinSdk;
        this.d = UUID.randomUUID().toString();
        a = true;
        b = false;
        this.f = activity;
        c.put(this.d, this);
    }

    public static af a(String str) {
        return (af) c.get(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        this.f.runOnUiThread(new aj(this, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinAd appLovinAd) {
        this.f.runOnUiThread(new ai(this, appLovinAd));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        x xVar = new x(this.e, this.f);
        xVar.a(this);
        this.m = xVar;
        xVar.a(this.k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        Intent intent = new Intent(this.f, (Class<?>) AppLovinInterstitialActivity.class);
        intent.putExtra(AppLovinInterstitialActivity.KEY_WRAPPER_ID, this.d);
        AppLovinInterstitialActivity.lastKnownWrapper = this;
        this.f.startActivity(intent);
        a(true);
    }

    public AppLovinSdk a() {
        return this.e;
    }

    public void a(w wVar) {
        this.m = wVar;
    }

    public void a(boolean z) {
        n = z;
    }

    public AppLovinAd b() {
        return this.k;
    }

    public AppLovinAdVideoPlaybackListener c() {
        return this.i;
    }

    public AppLovinAdDisplayListener d() {
        return this.h;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void dismiss() {
        if (this.m != null) {
            this.f.runOnUiThread(new ak(this));
        }
    }

    public AppLovinAdClickListener e() {
        return this.j;
    }

    public AppLovinAdImpl.AdTarget f() {
        return this.l;
    }

    public void g() {
        a = false;
        b = true;
        c.remove(this.d);
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public boolean isAdReadyToDisplay() {
        return this.e.getAdService().hasPreloadedAd(AppLovinAdSize.INTERSTITIAL);
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public boolean isShowing() {
        return n;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.j = appLovinAdClickListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.h = appLovinAdDisplayListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.g = appLovinAdLoadListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.i = appLovinAdVideoPlaybackListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void show() {
        this.e.getAdService().loadNextAd(AppLovinAdSize.INTERSTITIAL, new ag(this));
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd) {
        if (isShowing()) {
            this.e.getLogger().userError("AppLovinInterstitialAdDialog", "Attempted to show an interstitial while one is already displayed; ignoring.");
            return;
        }
        this.k = (AppLovinAdImpl) appLovinAd;
        this.l = this.k != null ? this.k.getTarget() : AppLovinAdImpl.AdTarget.DEFAULT;
        if (!AppLovinSdkUtils.isValidString(this.k.getVideoFilename()) || this.e.getFileManager().a(this.k.getVideoFilename(), this.f)) {
            this.f.runOnUiThread(new ah(this, com.applovin.impl.sdk.n.a(AppLovinInterstitialActivity.class, this.f), this.l == AppLovinAdImpl.AdTarget.ACTIVITY_LANDSCAPE || this.l == AppLovinAdImpl.AdTarget.ACTIVITY_PORTRAIT));
        }
    }
}

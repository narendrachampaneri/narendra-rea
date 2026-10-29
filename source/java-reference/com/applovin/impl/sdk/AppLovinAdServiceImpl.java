package com.applovin.impl.sdk;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdUpdateListener;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinAdServiceImpl implements AppLovinAdService {
    public static String URI_NO_OP = "/adservice/no_op";
    public static String URI_TRACK_CLICK_IMMEDIATELY = "/adservice/track_click_now";
    private final AppLovinSdkImpl a;
    private final AppLovinLogger b;
    private Handler c;
    private final Map d;

    AppLovinAdServiceImpl(AppLovinSdkImpl appLovinSdkImpl) {
        e eVar = null;
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.a = appLovinSdkImpl;
        this.b = appLovinSdkImpl.getLogger();
        this.c = new Handler(Looper.getMainLooper());
        this.d = new HashMap(2);
        Iterator it = AppLovinAdType.allTypes().iterator();
        while (it.hasNext()) {
            this.d.put((AppLovinAdType) it.next(), new HashMap());
        }
        ((Map) this.d.get(AppLovinAdType.REGULAR)).put(AppLovinAdSize.BANNER, new i(AppLovinAdSize.BANNER, eVar));
        ((Map) this.d.get(AppLovinAdType.REGULAR)).put(AppLovinAdSize.MREC, new i(AppLovinAdSize.MREC, eVar));
        ((Map) this.d.get(AppLovinAdType.REGULAR)).put(AppLovinAdSize.INTERSTITIAL, new i(AppLovinAdSize.INTERSTITIAL, eVar));
        ((Map) this.d.get(AppLovinAdType.REGULAR)).put(AppLovinAdSize.LEADER, new i(AppLovinAdSize.LEADER, eVar));
        ((Map) this.d.get(AppLovinAdType.INCENTIVIZED)).put(AppLovinAdSize.INTERSTITIAL, new i(AppLovinAdSize.INTERSTITIAL, eVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Uri uri, AppLovinAdImpl appLovinAdImpl, AppLovinAdView appLovinAdView, AdViewControllerImpl adViewControllerImpl) {
        adViewControllerImpl.removeClickTrackingOverlay();
        expireAdLoadState(appLovinAdImpl);
        AppLovinSdkUtils.openUri(appLovinAdView.getContext(), uri, this.a);
        adViewControllerImpl.dismissInterstitialIfRequired();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, AppLovinAdLoadListener appLovinAdLoadListener) {
        c cVar = new c(appLovinAdSize, appLovinAdType);
        AppLovinAd appLovinAd = (AppLovinAd) this.a.c().b(cVar);
        if (appLovinAd != null) {
            this.b.d("AppLovinAdService", "Using pre-loaded ad: " + appLovinAd + " for size " + appLovinAdSize + " and type " + appLovinAdType);
            appLovinAdLoadListener.adReceived(appLovinAd);
        } else {
            this.a.a().a(new cm(appLovinAdSize, appLovinAdType, appLovinAdLoadListener, this.a), cr.MAIN);
        }
        this.a.c().f(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        return ((PowerManager) this.a.getApplicationContext().getSystemService("power")).isScreenOn();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(AppLovinAdSize appLovinAdSize) {
        if (appLovinAdSize == AppLovinAdSize.BANNER) {
            return ((Boolean) this.a.a(bw.z)).booleanValue();
        }
        if (appLovinAdSize == AppLovinAdSize.MREC) {
            return ((Boolean) this.a.a(bw.B)).booleanValue();
        }
        if (appLovinAdSize == AppLovinAdSize.LEADER) {
            return ((Boolean) this.a.a(bw.D)).booleanValue();
        }
        return false;
    }

    private boolean a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType) {
        if (!((Boolean) this.a.a(bw.G)).booleanValue()) {
            return false;
        }
        if (appLovinAdType.equals(AppLovinAdType.INCENTIVIZED)) {
            return ((Boolean) this.a.a(bw.aD)).booleanValue() && ((Boolean) this.a.a(bw.K)).booleanValue();
        }
        if (appLovinAdSize.equals(AppLovinAdSize.INTERSTITIAL)) {
            return ((Boolean) this.a.a(bw.aE)).booleanValue() && ((String) this.a.a(bw.J)).contains(AppLovinAdSize.INTERSTITIAL.getLabel());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long b(AppLovinAdSize appLovinAdSize) {
        if (appLovinAdSize == AppLovinAdSize.BANNER) {
            return ((Long) this.a.a(bw.A)).longValue();
        }
        if (appLovinAdSize == AppLovinAdSize.MREC) {
            return ((Long) this.a.a(bw.C)).longValue();
        }
        if (appLovinAdSize == AppLovinAdSize.LEADER) {
            return ((Long) this.a.a(bw.E)).longValue();
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(AppLovinAdSize appLovinAdSize) {
        long jB = b(appLovinAdSize);
        if (jB > 0) {
            this.a.a().a(new j(this, appLovinAdSize), cr.MAIN, (jB + 2) * 1000);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void addAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener) {
        addAdUpdateListener(appLovinAdUpdateListener, AppLovinAdSize.BANNER);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void addAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener, AppLovinAdSize appLovinAdSize) {
        boolean z;
        if (appLovinAdUpdateListener == null) {
            throw new IllegalArgumentException("No ad listener specified");
        }
        i iVar = (i) ((Map) this.d.get(AppLovinAdType.REGULAR)).get(appLovinAdSize);
        synchronized (iVar.b) {
            if (iVar.f.contains(appLovinAdUpdateListener)) {
                z = false;
            } else {
                iVar.f.add(appLovinAdUpdateListener);
                z = true;
                this.b.d("AppLovinAdService", "Added update listener: " + appLovinAdUpdateListener);
            }
        }
        if (z) {
            this.a.a().a(new j(this, appLovinAdSize), cr.MAIN);
        }
    }

    public void expireAdLoadState(AppLovinAd appLovinAd) {
        if (appLovinAd == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        i iVar = (i) ((Map) this.d.get(appLovinAdImpl.getType())).get(appLovinAdImpl.getSize());
        synchronized (iVar.b) {
            iVar.c = null;
            iVar.d = 0L;
        }
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public boolean hasPreloadedAd(AppLovinAdSize appLovinAdSize) {
        return this.a.c().e(new c(appLovinAdSize, AppLovinAdType.REGULAR));
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAd(AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        loadNextAd(appLovinAdSize, AppLovinAdType.REGULAR, appLovinAdLoadListener);
    }

    public void loadNextAd(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, AppLovinAdLoadListener appLovinAdLoadListener) {
        AppLovinAd appLovinAd;
        if (appLovinAdSize == null) {
            throw new IllegalArgumentException("No ad size specified");
        }
        if (appLovinAdLoadListener == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        if (appLovinAdType == null) {
            throw new IllegalArgumentException("No ad type specificed");
        }
        if (appLovinAdSize.equals(AppLovinAdSize.BANNER) || appLovinAdSize.equals(AppLovinAdSize.MREC) || appLovinAdSize.equals(AppLovinAdSize.LEADER)) {
            this.a.getLogger().userError("AppLovinAdService", "Banners, MRecs and Leaderboards are deprecated and will be removed in a future SDK version!");
        }
        i iVar = (i) ((Map) this.d.get(appLovinAdType)).get(appLovinAdSize);
        synchronized (iVar.b) {
            boolean z = System.currentTimeMillis() > iVar.d;
            if (iVar.c == null || z) {
                this.b.d("AppLovinAdService", "Loading next ad...");
                iVar.g.add(appLovinAdLoadListener);
                if (iVar.e) {
                    appLovinAd = null;
                } else {
                    iVar.e = true;
                    h hVar = new h(this, (i) ((Map) this.d.get(appLovinAdType)).get(appLovinAdSize), null);
                    if (!a(appLovinAdSize, appLovinAdType)) {
                        this.b.d("AppLovinAdService", "Task merge not necessary.");
                        a(appLovinAdSize, appLovinAdType, hVar);
                        appLovinAd = null;
                    } else if (this.a.c().a(new c(appLovinAdSize, appLovinAdType), hVar)) {
                        this.b.d("AppLovinAdService", "Attaching load listener to initial preload task...");
                        appLovinAd = null;
                    } else {
                        this.b.d("AppLovinAdService", "Skipped attach of initial preload callback.");
                        a(appLovinAdSize, appLovinAdType, hVar);
                        appLovinAd = null;
                    }
                }
            } else {
                appLovinAd = iVar.c;
            }
        }
        if (appLovinAd != null) {
            appLovinAdLoadListener.adReceived(appLovinAd);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void preloadAd(AppLovinAdSize appLovinAdSize) {
        this.a.c().f(new c(appLovinAdSize, AppLovinAdType.REGULAR));
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void removeAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener, AppLovinAdSize appLovinAdSize) {
        if (appLovinAdUpdateListener == null) {
            return;
        }
        i iVar = (i) ((Map) this.d.get(AppLovinAdType.REGULAR)).get(appLovinAdSize);
        synchronized (iVar.b) {
            iVar.f.remove(appLovinAdUpdateListener);
        }
        this.b.d("AppLovinAdService", "Removed update listener: " + appLovinAdUpdateListener);
    }

    public void trackClickOn(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, AdViewControllerImpl adViewControllerImpl, Uri uri) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        String supplementalClickTrackingUrl = appLovinAdImpl.getSupplementalClickTrackingUrl();
        if (AppLovinSdkUtils.isValidString(supplementalClickTrackingUrl)) {
            this.a.getPersistentPostbackManager().a(supplementalClickTrackingUrl, (Map) null);
        }
        a(uri, appLovinAdImpl, appLovinAdView, adViewControllerImpl);
    }

    public void trackForegroundClick(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, AdViewControllerImpl adViewControllerImpl, Uri uri) {
        if (appLovinAd == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        this.b.d("AppLovinAdService", "Tracking foreground click on an ad...");
        int iIntValue = ((Integer) this.a.a(bw.bp)).intValue();
        int iIntValue2 = ((Integer) this.a.a(bw.bq)).intValue();
        int iIntValue3 = ((Integer) this.a.a(bw.br)).intValue();
        this.a.getPostbackService().dispatchPostbackAsync(((AppLovinAdImpl) appLovinAd).getSupplementalClickTrackingUrl(), null, iIntValue, iIntValue2, iIntValue3, new e(this, adViewControllerImpl, uri, (AppLovinAdImpl) appLovinAd, appLovinAdView));
    }
}

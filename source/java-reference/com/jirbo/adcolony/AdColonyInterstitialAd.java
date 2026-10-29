package com.jirbo.adcolony;

import com.inmobi.re.controller.JSController;
import com.mopub.common.AdType;

/* JADX INFO: loaded from: classes2.dex */
public class AdColonyInterstitialAd extends AdColonyAd {
    AdColonyNativeAdListener C;
    boolean D;

    public AdColonyInterstitialAd() {
        a.D = false;
        a.e();
        this.k = AdType.INTERSTITIAL;
        this.l = JSController.FULL_SCREEN;
        this.D = false;
        this.m = aa.b();
    }

    public AdColonyInterstitialAd(String zone_id) {
        this.k = AdType.INTERSTITIAL;
        this.l = JSController.FULL_SCREEN;
        a.e();
        this.h = zone_id;
        this.D = false;
        this.m = aa.b();
    }

    @Override // com.jirbo.adcolony.AdColonyAd
    boolean b() {
        return false;
    }

    public AdColonyInterstitialAd withListener(AdColonyAdListener listener) {
        this.y = listener;
        return this;
    }

    @Override // com.jirbo.adcolony.AdColonyAd
    boolean a(boolean z) {
        if (this.h == null) {
            this.h = a.l.e();
            if (this.h == null) {
                return false;
            }
        }
        return a.l.a(this.h, z, z ? false : true);
    }

    @Override // com.jirbo.adcolony.AdColonyAd
    public boolean isReady() {
        if (this.h == null) {
            this.h = a.l.e();
            if (this.h == null) {
                return false;
            }
        }
        if (AdColony.isZoneNative(this.h)) {
            a.am = 12;
            return false;
        }
        return a.l.e(this.h);
    }

    public void show() {
        if (this.D) {
            l.d.b((Object) "Show attempt on out of date ad object. Please instantiate a new ad object for each ad attempt.");
            return;
        }
        a.am = 0;
        this.k = AdType.INTERSTITIAL;
        this.l = JSController.FULL_SCREEN;
        if (!isReady()) {
            this.g = a.am;
            new j(a.l) { // from class: com.jirbo.adcolony.AdColonyInterstitialAd.1
                @Override // com.jirbo.adcolony.j
                void a() {
                    if (AdColonyInterstitialAd.this.h != null) {
                        this.o.d.a(AdColonyInterstitialAd.this.h, AdColonyInterstitialAd.this);
                    }
                }
            };
            this.f = 2;
            if (this.y != null) {
                this.y.onAdColonyAdAttemptFinished(this);
            }
            this.D = true;
            return;
        }
        this.g = a.am;
        this.D = true;
        if (a.E) {
            new j(a.l) { // from class: com.jirbo.adcolony.AdColonyInterstitialAd.2
                @Override // com.jirbo.adcolony.j
                void a() {
                    this.o.d.a(AdColonyInterstitialAd.this.h, AdColonyInterstitialAd.this);
                }
            };
            a.E = false;
            c();
            a.T = this;
            if (!a.l.b(this)) {
                if (this.y != null) {
                    this.y.onAdColonyAdAttemptFinished(this);
                }
                a.E = true;
                return;
            } else if (this.y != null) {
                this.y.onAdColonyAdStarted(this);
            }
        }
        this.f = 4;
    }

    @Override // com.jirbo.adcolony.AdColonyAd
    void a() {
        int i = 0;
        this.k = AdType.INTERSTITIAL;
        this.l = JSController.FULL_SCREEN;
        if (this.y != null && !this.w) {
            this.y.onAdColonyAdAttemptFinished(this);
        } else if (this.C != null) {
            if (canceled()) {
                this.x.I = true;
            } else {
                this.x.I = false;
            }
            this.C.onAdColonyNativeAdFinished(true, this.x);
        }
        System.gc();
        if (!a.D && !AdColonyBrowser.B) {
            while (true) {
                int i2 = i;
                if (i2 >= a.an.size()) {
                    break;
                }
                a.an.get(i2).recycle();
                i = i2 + 1;
            }
            a.an.clear();
        }
        this.w = true;
        a.U = null;
        a.E = true;
    }
}

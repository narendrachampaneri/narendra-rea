package com.jirbo.adcolony;

/* JADX INFO: loaded from: classes2.dex */
public class AdColonyVideoAd extends AdColonyInterstitialAd {
    public AdColonyVideoAd() {
    }

    public AdColonyVideoAd(String zone_id) {
        super(zone_id);
    }

    @Override // com.jirbo.adcolony.AdColonyInterstitialAd
    public AdColonyVideoAd withListener(AdColonyAdListener listener) {
        this.y = listener;
        return this;
    }
}

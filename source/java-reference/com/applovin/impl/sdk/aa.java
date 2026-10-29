package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdRewardListener;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class aa implements AppLovinAdRewardListener {
    final /* synthetic */ z a;

    aa(z zVar) {
        this.a = zVar;
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userDeclinedToViewAd(AppLovinAd appLovinAd) {
        this.a.a.getLogger().d("IncentivizedAdController", "User declined to view");
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userOverQuota(AppLovinAd appLovinAd, Map map) {
        this.a.a.getLogger().d("IncentivizedAdController", "User over quota: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardRejected(AppLovinAd appLovinAd, Map map) {
        this.a.a.getLogger().d("IncentivizedAdController", "Reward rejected: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardVerified(AppLovinAd appLovinAd, Map map) {
        this.a.a.getLogger().d("IncentivizedAdController", "Reward validated: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
        this.a.a.getLogger().d("IncentivizedAdController", "Reward validation failed: " + i);
    }
}

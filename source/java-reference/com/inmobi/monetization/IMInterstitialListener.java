package com.inmobi.monetization;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface IMInterstitialListener {
    void onDismissInterstitialScreen(IMInterstitial iMInterstitial);

    void onInterstitialFailed(IMInterstitial iMInterstitial, IMErrorCode iMErrorCode);

    void onInterstitialInteraction(IMInterstitial iMInterstitial, Map<String, String> map);

    void onInterstitialLoaded(IMInterstitial iMInterstitial);

    void onLeaveApplication(IMInterstitial iMInterstitial);

    void onShowInterstitialScreen(IMInterstitial iMInterstitial);
}

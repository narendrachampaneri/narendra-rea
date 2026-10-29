package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.inmobi.commons.InMobi;
import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.IMInterstitial;
import com.inmobi.monetization.IMInterstitialListener;
import com.mopub.common.MoPub;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class InMobiInterstitial extends CustomEventInterstitial implements IMInterstitialListener {
    private static boolean isAppInitialized = false;
    private IMInterstitial iMInterstitial;
    private CustomEventInterstitial.CustomEventInterstitialListener mInterstitialListener;

    @Override // com.mopub.mobileads.CustomEventInterstitial
    protected void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener interstitialListener, Map<String, Object> localExtras, Map<String, String> serverExtras) {
        this.mInterstitialListener = interstitialListener;
        Activity activity = null;
        if (context instanceof Activity) {
            activity = (Activity) context;
        }
        if (activity == null) {
            this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
            return;
        }
        if (!isAppInitialized) {
            InMobi.initialize(activity, "e5fda0998ffa46d9bf09332cc01eb783");
            isAppInitialized = true;
        }
        this.iMInterstitial = new IMInterstitial(activity, "e5fda0998ffa46d9bf09332cc01eb783");
        Map<String, String> map = new HashMap<>();
        map.put("tp", "c_mopub");
        map.put("tp-ver", MoPub.SDK_VERSION);
        this.iMInterstitial.setRequestParams(map);
        this.iMInterstitial.setIMInterstitialListener(this);
        this.iMInterstitial.loadInterstitial();
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        if (this.iMInterstitial != null && IMInterstitial.State.READY.equals(this.iMInterstitial.getState())) {
            this.iMInterstitial.show();
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        if (this.iMInterstitial != null) {
            this.iMInterstitial.setIMInterstitialListener(null);
            this.iMInterstitial.destroy();
        }
    }

    @Override // com.inmobi.monetization.IMInterstitialListener
    public void onDismissInterstitialScreen(IMInterstitial imInterstitial) {
        this.mInterstitialListener.onInterstitialDismissed();
    }

    @Override // com.inmobi.monetization.IMInterstitialListener
    public void onInterstitialFailed(IMInterstitial imInterstitial, IMErrorCode imErrorCode) {
        if (imErrorCode == IMErrorCode.INTERNAL_ERROR) {
            this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
            return;
        }
        if (imErrorCode == IMErrorCode.INVALID_REQUEST) {
            this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        if (imErrorCode == IMErrorCode.NETWORK_ERROR) {
            this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
        } else if (imErrorCode == IMErrorCode.NO_FILL) {
            this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.NO_FILL);
        } else {
            this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
        }
    }

    @Override // com.inmobi.monetization.IMInterstitialListener
    public void onInterstitialInteraction(IMInterstitial imInterstitial, Map<String, String> map) {
        this.mInterstitialListener.onInterstitialClicked();
    }

    @Override // com.inmobi.monetization.IMInterstitialListener
    public void onInterstitialLoaded(IMInterstitial imInterstitial) {
        this.mInterstitialListener.onInterstitialLoaded();
    }

    @Override // com.inmobi.monetization.IMInterstitialListener
    public void onLeaveApplication(IMInterstitial imInterstitial) {
    }

    @Override // com.inmobi.monetization.IMInterstitialListener
    public void onShowInterstitialScreen(IMInterstitial imInterstitial) {
        this.mInterstitialListener.onInterstitialShown();
    }
}

package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.inmobi.commons.InMobi;
import com.inmobi.monetization.IMBanner;
import com.inmobi.monetization.IMBannerListener;
import com.inmobi.monetization.IMErrorCode;
import com.mopub.common.MoPub;
import com.mopub.common.util.Views;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class InMobiBanner extends CustomEventBanner implements IMBannerListener {
    private static boolean isAppInitialized = false;
    private IMBanner iMBanner;
    private CustomEventBanner.CustomEventBannerListener mBannerListener;

    @Override // com.mopub.mobileads.CustomEventBanner
    protected void loadBanner(Context context, CustomEventBanner.CustomEventBannerListener bannerListener, Map<String, Object> localExtras, Map<String, String> serverExtras) {
        this.mBannerListener = bannerListener;
        Activity activity = null;
        if (context instanceof Activity) {
            activity = (Activity) context;
        }
        if (activity == null) {
            this.mBannerListener.onBannerFailed(null);
            return;
        }
        if (!isAppInitialized) {
            InMobi.initialize(activity, "e5fda0998ffa46d9bf09332cc01eb783");
            isAppInitialized = true;
        }
        this.iMBanner = new IMBanner(activity, "e5fda0998ffa46d9bf09332cc01eb783", 15);
        Map<String, String> map = new HashMap<>();
        map.put("tp", "c_mopub");
        map.put("tp-ver", MoPub.SDK_VERSION);
        this.iMBanner.setRequestParams(map);
        InMobi.setLogLevel(InMobi.LOG_LEVEL.VERBOSE);
        this.iMBanner.setIMBannerListener(this);
        this.iMBanner.setRefreshInterval(-1);
        this.iMBanner.loadBanner();
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    public void onInvalidate() {
        if (this.iMBanner != null) {
            this.iMBanner.setIMBannerListener(null);
            Views.removeFromParent(this.iMBanner);
            this.iMBanner.destroy();
        }
    }

    @Override // com.inmobi.monetization.IMBannerListener
    public void onBannerInteraction(IMBanner imBanner, Map<String, String> map) {
        this.mBannerListener.onBannerClicked();
    }

    @Override // com.inmobi.monetization.IMBannerListener
    public void onBannerRequestFailed(IMBanner imBanner, IMErrorCode imErrorCode) {
        if (imErrorCode == IMErrorCode.INTERNAL_ERROR) {
            this.mBannerListener.onBannerFailed(MoPubErrorCode.INTERNAL_ERROR);
            return;
        }
        if (imErrorCode == IMErrorCode.INVALID_REQUEST) {
            this.mBannerListener.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        if (imErrorCode == IMErrorCode.NETWORK_ERROR) {
            this.mBannerListener.onBannerFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
        } else if (imErrorCode == IMErrorCode.NO_FILL) {
            this.mBannerListener.onBannerFailed(MoPubErrorCode.NO_FILL);
        } else {
            this.mBannerListener.onBannerFailed(MoPubErrorCode.UNSPECIFIED);
        }
    }

    @Override // com.inmobi.monetization.IMBannerListener
    public void onBannerRequestSucceeded(IMBanner imBanner) {
        if (this.iMBanner != null) {
            this.mBannerListener.onBannerLoaded(imBanner);
        } else {
            this.mBannerListener.onBannerFailed(null);
        }
    }

    @Override // com.inmobi.monetization.IMBannerListener
    public void onDismissBannerScreen(IMBanner imBanner) {
        this.mBannerListener.onBannerCollapsed();
    }

    @Override // com.inmobi.monetization.IMBannerListener
    public void onLeaveApplication(IMBanner imBanner) {
    }

    @Override // com.inmobi.monetization.IMBannerListener
    public void onShowBannerScreen(IMBanner imBanner) {
        this.mBannerListener.onBannerExpanded();
    }
}

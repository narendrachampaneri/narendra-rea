package com.mopub.mraid;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdViewController;
import com.mopub.mobileads.CustomEventBanner;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.factories.MraidControllerFactory;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class MraidBanner extends CustomEventBanner {

    @Nullable
    private CustomEventBanner.CustomEventBannerListener mBannerListener;

    @Nullable
    private MraidWebViewDebugListener mDebugListener;

    @Nullable
    private MraidController mMraidController;

    MraidBanner() {
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    protected void loadBanner(@NonNull Context context, @NonNull CustomEventBanner.CustomEventBannerListener customEventBannerListener, @NonNull Map<String, Object> localExtras, @NonNull Map<String, String> serverExtras) {
        this.mBannerListener = customEventBannerListener;
        if (extrasAreValid(serverExtras)) {
            String htmlData = serverExtras.get(DataKeys.HTML_RESPONSE_BODY_KEY);
            try {
                AdReport adReport = (AdReport) localExtras.get(DataKeys.AD_REPORT_KEY);
                this.mMraidController = MraidControllerFactory.create(context, adReport, PlacementType.INLINE);
                this.mMraidController.setDebugListener(this.mDebugListener);
                this.mMraidController.setMraidListener(new MraidController.MraidListener() { // from class: com.mopub.mraid.MraidBanner.1
                    @Override // com.mopub.mraid.MraidController.MraidListener
                    public void onLoaded(View view) {
                        AdViewController.setShouldHonorServerDimensions(view);
                        MraidBanner.this.mBannerListener.onBannerLoaded(view);
                    }

                    @Override // com.mopub.mraid.MraidController.MraidListener
                    public void onFailedToLoad() {
                        MraidBanner.this.mBannerListener.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
                    }

                    @Override // com.mopub.mraid.MraidController.MraidListener
                    public void onExpand() {
                        MraidBanner.this.mBannerListener.onBannerExpanded();
                        MraidBanner.this.mBannerListener.onBannerClicked();
                    }

                    @Override // com.mopub.mraid.MraidController.MraidListener
                    public void onOpen() {
                        MraidBanner.this.mBannerListener.onBannerClicked();
                    }

                    @Override // com.mopub.mraid.MraidController.MraidListener
                    public void onClose() {
                        MraidBanner.this.mBannerListener.onBannerCollapsed();
                    }
                });
                this.mMraidController.loadContent(htmlData);
                return;
            } catch (ClassCastException e) {
                MoPubLog.w("MRAID banner creating failed:", e);
                this.mBannerListener.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
                return;
            }
        }
        this.mBannerListener.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    protected void onInvalidate() {
        if (this.mMraidController != null) {
            this.mMraidController.setMraidListener(null);
            this.mMraidController.destroy();
        }
    }

    private boolean extrasAreValid(Map<String, String> serverExtras) {
        return serverExtras.containsKey(DataKeys.HTML_RESPONSE_BODY_KEY);
    }

    @VisibleForTesting
    public void setDebugListener(@Nullable MraidWebViewDebugListener debugListener) {
        this.mDebugListener = debugListener;
        if (this.mMraidController != null) {
            this.mMraidController.setDebugListener(debugListener);
        }
    }
}

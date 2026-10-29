package com.mopub.mobileads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.Display;
import android.view.WindowManager;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.mopub.common.CacheService;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;

/* JADX INFO: loaded from: classes.dex */
public class VastManager implements VastXmlManagerAggregator.VastXmlManagerAggregatorListener {
    private int mScreenAreaDp;
    private double mScreenAspectRatio;

    @Nullable
    private VastManagerListener mVastManagerListener;

    @Nullable
    private VastXmlManagerAggregator mVastXmlManagerAggregator;

    public interface VastManagerListener {
        void onVastVideoConfigurationPrepared(@Nullable VastVideoConfig vastVideoConfig);
    }

    public VastManager(@NonNull Context context) {
        initializeScreenDimensions(context);
    }

    public void prepareVastVideoConfiguration(@Nullable String vastXml, @NonNull VastManagerListener vastManagerListener, @NonNull Context context) {
        Preconditions.checkNotNull(vastManagerListener, "vastManagerListener cannot be null");
        Preconditions.checkNotNull(context, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        if (this.mVastXmlManagerAggregator == null) {
            this.mVastManagerListener = vastManagerListener;
            this.mVastXmlManagerAggregator = new VastXmlManagerAggregator(this, this.mScreenAspectRatio, this.mScreenAreaDp, context.getApplicationContext());
            try {
                AsyncTasks.safeExecuteOnExecutor(this.mVastXmlManagerAggregator, vastXml);
            } catch (Exception e) {
                MoPubLog.d("Failed to aggregate vast xml", e);
                this.mVastManagerListener.onVastVideoConfigurationPrepared(null);
            }
        }
    }

    public void cancel() {
        if (this.mVastXmlManagerAggregator != null) {
            this.mVastXmlManagerAggregator.cancel(true);
            this.mVastXmlManagerAggregator = null;
        }
    }

    @Override // com.mopub.mobileads.VastXmlManagerAggregator.VastXmlManagerAggregatorListener
    public void onAggregationComplete(@Nullable final VastVideoConfig vastVideoConfig) {
        if (this.mVastManagerListener == null) {
            throw new IllegalStateException("mVastManagerListener cannot be null here. Did you call prepareVastVideoConfiguration()?");
        }
        if (vastVideoConfig == null) {
            this.mVastManagerListener.onVastVideoConfigurationPrepared(null);
        } else if (updateDiskMediaFileUrl(vastVideoConfig)) {
            this.mVastManagerListener.onVastVideoConfigurationPrepared(vastVideoConfig);
        } else {
            VideoDownloader.VideoDownloaderListener videoDownloaderListener = new VideoDownloader.VideoDownloaderListener() { // from class: com.mopub.mobileads.VastManager.1
                @Override // com.mopub.mobileads.VideoDownloader.VideoDownloaderListener
                public void onComplete(boolean success) {
                    if (success && VastManager.this.updateDiskMediaFileUrl(vastVideoConfig)) {
                        VastManager.this.mVastManagerListener.onVastVideoConfigurationPrepared(vastVideoConfig);
                    } else {
                        MoPubLog.d("Failed to download VAST video.");
                        VastManager.this.mVastManagerListener.onVastVideoConfigurationPrepared(null);
                    }
                }
            };
            VideoDownloader.cache(vastVideoConfig.getNetworkMediaFileUrl(), videoDownloaderListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updateDiskMediaFileUrl(@NonNull VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        String networkMediaFileUrl = vastVideoConfig.getNetworkMediaFileUrl();
        if (!CacheService.containsKeyDiskCache(networkMediaFileUrl)) {
            return false;
        }
        String filePathDiskCache = CacheService.getFilePathDiskCache(networkMediaFileUrl);
        vastVideoConfig.setDiskMediaFileUrl(filePathDiskCache);
        return true;
    }

    private void initializeScreenDimensions(@NonNull Context context) {
        Preconditions.checkNotNull(context, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        Display display = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int xPx = display.getWidth();
        int yPx = display.getHeight();
        float density = context.getResources().getDisplayMetrics().density;
        if (density <= 0.0f) {
            density = 1.0f;
        }
        int screenWidth = Math.max(xPx, yPx);
        int screenHeight = Math.min(xPx, yPx);
        this.mScreenAspectRatio = ((double) screenWidth) / ((double) screenHeight);
        this.mScreenAreaDp = (int) ((screenWidth / density) * (screenHeight / density));
    }

    @VisibleForTesting
    @Deprecated
    int getScreenAreaDp() {
        return this.mScreenAreaDp;
    }

    @VisibleForTesting
    @Deprecated
    double getScreenAspectRatio() {
        return this.mScreenAspectRatio;
    }
}

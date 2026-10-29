package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class VastVideoViewController extends BaseVideoViewController {
    static final String CURRENT_POSITION = "current_position";
    static final int DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON = 5000;
    static final int MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON = 16000;
    private static final int MOPUB_BROWSER_REQUEST_CODE = 1;
    static final String RESUMED_VAST_CONFIG = "resumed_vast_config";
    private static final int SEEKER_POSITION_NOT_INITIALIZED = -1;
    static final String VAST_VIDEO_CONFIG = "vast_video_config";
    private static final long VIDEO_COUNTDOWN_UPDATE_INTERVAL = 250;
    private static final long VIDEO_PROGRESS_TIMER_CHECKER_DELAY = 50;
    public static final int WEBVIEW_PADDING = 16;

    @NonNull
    private ImageView mBlurredLastVideoFrameImageView;

    @NonNull
    private VastVideoGradientStripWidget mBottomGradientStripWidget;

    @NonNull
    private final View.OnTouchListener mClickThroughListener;

    @NonNull
    private VastVideoCloseButtonWidget mCloseButtonWidget;

    @NonNull
    private final VastVideoViewCountdownRunnable mCountdownRunnable;

    @NonNull
    private VastVideoCtaButtonWidget mCtaButtonWidget;
    private int mDuration;
    private boolean mHasSkipOffset;

    @NonNull
    private final View mIconView;
    private boolean mIsCalibrationDone;
    private boolean mIsClosing;
    private boolean mIsVideoFinishedPlaying;

    @NonNull
    private final View mLandscapeCompanionAdView;

    @NonNull
    private final View mPortraitCompanionAdView;

    @NonNull
    private VastVideoProgressBarWidget mProgressBarWidget;

    @NonNull
    private final VastVideoViewProgressRunnable mProgressCheckerRunnable;

    @NonNull
    private VastVideoRadialCountdownWidget mRadialCountdownWidget;
    private int mSeekerPositionOnPause;
    private int mShowCloseButtonDelay;
    private boolean mShowCloseButtonEventFired;

    @NonNull
    private VastVideoGradientStripWidget mTopGradientStripWidget;

    @Nullable
    private VastCompanionAdConfig mVastCompanionAdConfig;

    @Nullable
    private final VastIconConfig mVastIconConfig;
    private final VastVideoConfig mVastVideoConfig;
    private boolean mVideoError;

    @NonNull
    private final VastVideoView mVideoView;

    VastVideoViewController(final Activity activity, Bundle intentExtras, @Nullable Bundle savedInstanceState, long broadcastIdentifier, BaseVideoViewController.BaseVideoViewControllerListener baseVideoViewControllerListener) throws IllegalStateException {
        super(activity, Long.valueOf(broadcastIdentifier), baseVideoViewControllerListener);
        this.mShowCloseButtonDelay = 5000;
        this.mHasSkipOffset = false;
        this.mIsCalibrationDone = false;
        this.mIsClosing = false;
        this.mSeekerPositionOnPause = -1;
        Serializable resumedVastConfiguration = savedInstanceState != null ? savedInstanceState.getSerializable(RESUMED_VAST_CONFIG) : null;
        Serializable serializable = intentExtras.getSerializable(VAST_VIDEO_CONFIG);
        if (resumedVastConfiguration != null && (resumedVastConfiguration instanceof VastVideoConfig)) {
            this.mVastVideoConfig = (VastVideoConfig) resumedVastConfiguration;
            this.mSeekerPositionOnPause = savedInstanceState.getInt(CURRENT_POSITION, -1);
        } else if (serializable != null && (serializable instanceof VastVideoConfig)) {
            this.mVastVideoConfig = (VastVideoConfig) serializable;
        } else {
            throw new IllegalStateException("VastVideoConfig is invalid");
        }
        if (this.mVastVideoConfig.getDiskMediaFileUrl() == null) {
            throw new IllegalStateException("VastVideoConfig does not have a video disk path");
        }
        this.mVastCompanionAdConfig = this.mVastVideoConfig.getVastCompanionAd(activity.getResources().getConfiguration().orientation);
        this.mVastIconConfig = this.mVastVideoConfig.getVastIconConfig();
        this.mClickThroughListener = new View.OnTouchListener() { // from class: com.mopub.mobileads.VastVideoViewController.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int currentPosition;
                if (motionEvent.getAction() == 1 && VastVideoViewController.this.shouldAllowClickThrough()) {
                    VastVideoViewController.this.mIsClosing = true;
                    VastVideoViewController.this.broadcastAction(EventForwardingBroadcastReceiver.ACTION_INTERSTITIAL_CLICK);
                    VastVideoConfig vastVideoConfig = VastVideoViewController.this.mVastVideoConfig;
                    Activity activity2 = activity;
                    if (VastVideoViewController.this.mIsVideoFinishedPlaying) {
                        currentPosition = VastVideoViewController.this.mDuration;
                    } else {
                        currentPosition = VastVideoViewController.this.getCurrentPosition();
                    }
                    vastVideoConfig.handleClick(activity2, currentPosition, 1);
                }
                return true;
            }
        };
        getLayout().setBackgroundColor(-16777216);
        this.mVideoView = createVideoView(activity, 0);
        this.mVideoView.requestFocus();
        this.mLandscapeCompanionAdView = createCompanionAdView(activity, this.mVastVideoConfig.getVastCompanionAd(2), 4);
        this.mPortraitCompanionAdView = createCompanionAdView(activity, this.mVastVideoConfig.getVastCompanionAd(1), 4);
        addTopGradientStripWidget(activity);
        addProgressBarWidget(activity, 4);
        addBottomGradientStripWidget(activity);
        addRadialCountdownWidget(activity, 4);
        this.mIconView = createIconView(activity, this.mVastIconConfig, 4);
        addBlurredLastVideoFrameImageView(activity, 4);
        addCtaButtonWidget(activity);
        addCloseButtonWidget(activity, 8);
        Handler mainHandler = new Handler(Looper.getMainLooper());
        this.mProgressCheckerRunnable = new VastVideoViewProgressRunnable(this, this.mVastVideoConfig, mainHandler);
        this.mCountdownRunnable = new VastVideoViewCountdownRunnable(this, mainHandler);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected VideoView getVideoView() {
        return this.mVideoView;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void onCreate() {
        super.onCreate();
        switch (this.mVastVideoConfig.getCustomForceOrientation()) {
            case FORCE_PORTRAIT:
                getBaseVideoViewControllerListener().onSetRequestedOrientation(1);
                break;
            case FORCE_LANDSCAPE:
                getBaseVideoViewControllerListener().onSetRequestedOrientation(0);
                break;
        }
        this.mVastVideoConfig.handleImpression(getContext(), getCurrentPosition());
        broadcastAction(EventForwardingBroadcastReceiver.ACTION_INTERSTITIAL_SHOW);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void onResume() {
        startRunnables();
        if (this.mSeekerPositionOnPause > 0) {
            this.mVideoView.seekTo(this.mSeekerPositionOnPause);
        }
        if (!this.mIsVideoFinishedPlaying) {
            this.mVideoView.start();
        }
        if (this.mSeekerPositionOnPause != -1) {
            this.mVastVideoConfig.handleResume(getContext(), this.mSeekerPositionOnPause);
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void onPause() {
        stopRunnables();
        this.mSeekerPositionOnPause = getCurrentPosition();
        this.mVideoView.pause();
        if (!this.mIsVideoFinishedPlaying && !this.mIsClosing) {
            this.mVastVideoConfig.handlePause(getContext(), this.mSeekerPositionOnPause);
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void onDestroy() {
        stopRunnables();
        broadcastAction(EventForwardingBroadcastReceiver.ACTION_INTERSTITIAL_DISMISS);
        this.mVideoView.onDestroy();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void onSaveInstanceState(@NonNull Bundle outState) {
        outState.putInt(CURRENT_POSITION, this.mSeekerPositionOnPause);
        outState.putSerializable(RESUMED_VAST_CONFIG, this.mVastVideoConfig);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void onConfigurationChanged(@Nullable Configuration newConfig) {
        int orientation = getContext().getResources().getConfiguration().orientation;
        this.mVastCompanionAdConfig = this.mVastVideoConfig.getVastCompanionAd(orientation);
        if (this.mLandscapeCompanionAdView.getVisibility() == 0 || this.mPortraitCompanionAdView.getVisibility() == 0) {
            if (orientation == 1) {
                this.mLandscapeCompanionAdView.setVisibility(4);
                this.mPortraitCompanionAdView.setVisibility(0);
            } else {
                this.mPortraitCompanionAdView.setVisibility(4);
                this.mLandscapeCompanionAdView.setVisibility(0);
            }
            if (this.mVastCompanionAdConfig != null) {
                this.mVastCompanionAdConfig.handleImpression(getContext(), this.mDuration);
            }
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    public boolean backButtonEnabled() {
        return this.mShowCloseButtonEventFired;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 1 && resultCode == -1) {
            getBaseVideoViewControllerListener().onFinish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adjustSkipOffset() {
        int videoDuration = getDuration();
        if (videoDuration < MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON) {
            this.mShowCloseButtonDelay = videoDuration;
        }
        Integer skipOffsetMillis = this.mVastVideoConfig.getSkipOffsetMillis(videoDuration);
        if (skipOffsetMillis != null) {
            this.mShowCloseButtonDelay = skipOffsetMillis.intValue();
            this.mHasSkipOffset = true;
        }
    }

    private VastVideoView createVideoView(@NonNull final Context context, int initialVisibility) {
        if (this.mVastVideoConfig.getDiskMediaFileUrl() == null) {
            throw new IllegalStateException("VastVideoConfig does not have a video disk path");
        }
        final VastVideoView videoView = new VastVideoView(context);
        videoView.setId((int) Utils.generateUniqueId());
        videoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.mopub.mobileads.VastVideoViewController.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mp) {
                VastVideoViewController.this.mDuration = VastVideoViewController.this.mVideoView.getDuration();
                VastVideoViewController.this.adjustSkipOffset();
                if (VastVideoViewController.this.mVastCompanionAdConfig == null) {
                    videoView.prepareBlurredLastVideoFrame(VastVideoViewController.this.mBlurredLastVideoFrameImageView, VastVideoViewController.this.mVastVideoConfig.getDiskMediaFileUrl());
                }
                VastVideoViewController.this.mProgressBarWidget.calibrateAndMakeVisible(VastVideoViewController.this.getDuration(), VastVideoViewController.this.mShowCloseButtonDelay);
                VastVideoViewController.this.mRadialCountdownWidget.calibrateAndMakeVisible(VastVideoViewController.this.mShowCloseButtonDelay);
                VastVideoViewController.this.mIsCalibrationDone = true;
            }
        });
        videoView.setOnTouchListener(this.mClickThroughListener);
        videoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.mopub.mobileads.VastVideoViewController.3
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mp) {
                VastVideoViewController.this.stopRunnables();
                VastVideoViewController.this.makeVideoInteractable();
                VastVideoViewController.this.videoCompleted(false);
                VastVideoViewController.this.mIsVideoFinishedPlaying = true;
                if (!VastVideoViewController.this.mVideoError && VastVideoViewController.this.mVastVideoConfig.getRemainingProgressTrackerCount() == 0) {
                    VastVideoViewController.this.mVastVideoConfig.handleComplete(VastVideoViewController.this.getContext(), VastVideoViewController.this.getCurrentPosition());
                }
                videoView.setVisibility(4);
                VastVideoViewController.this.mProgressBarWidget.setVisibility(8);
                VastVideoViewController.this.mIconView.setVisibility(8);
                VastVideoViewController.this.mTopGradientStripWidget.notifyVideoComplete();
                VastVideoViewController.this.mBottomGradientStripWidget.notifyVideoComplete();
                VastVideoViewController.this.mCtaButtonWidget.notifyVideoComplete();
                if (VastVideoViewController.this.mVastCompanionAdConfig == null) {
                    if (VastVideoViewController.this.mBlurredLastVideoFrameImageView.getDrawable() != null) {
                        VastVideoViewController.this.mBlurredLastVideoFrameImageView.setVisibility(0);
                    }
                } else {
                    int orientation = context.getResources().getConfiguration().orientation;
                    if (orientation == 1) {
                        VastVideoViewController.this.mPortraitCompanionAdView.setVisibility(0);
                    } else {
                        VastVideoViewController.this.mLandscapeCompanionAdView.setVisibility(0);
                    }
                    VastVideoViewController.this.mVastCompanionAdConfig.handleImpression(context, VastVideoViewController.this.mDuration);
                }
            }
        });
        videoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.mopub.mobileads.VastVideoViewController.4
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int what, int extra) {
                if (videoView.retryMediaPlayer(mediaPlayer, what, extra, VastVideoViewController.this.mVastVideoConfig.getDiskMediaFileUrl())) {
                    return true;
                }
                VastVideoViewController.this.stopRunnables();
                VastVideoViewController.this.makeVideoInteractable();
                VastVideoViewController.this.videoError(false);
                VastVideoViewController.this.mVideoError = true;
                VastVideoViewController.this.mVastVideoConfig.handleError(VastVideoViewController.this.getContext(), VastErrorCode.GENERAL_LINEAR_AD_ERROR, VastVideoViewController.this.getCurrentPosition());
                return false;
            }
        });
        videoView.setVideoPath(this.mVastVideoConfig.getDiskMediaFileUrl());
        videoView.setVisibility(initialVisibility);
        return videoView;
    }

    private void addTopGradientStripWidget(@NonNull Context context) {
        boolean hasCompanionAd = this.mVastCompanionAdConfig != null;
        this.mTopGradientStripWidget = new VastVideoGradientStripWidget(context, GradientDrawable.Orientation.TOP_BOTTOM, this.mVastVideoConfig.getCustomForceOrientation(), hasCompanionAd, 0, 6, getLayout().getId());
        getLayout().addView(this.mTopGradientStripWidget);
    }

    private void addBottomGradientStripWidget(@NonNull Context context) {
        boolean hasCompanionAd = this.mVastCompanionAdConfig != null;
        this.mBottomGradientStripWidget = new VastVideoGradientStripWidget(context, GradientDrawable.Orientation.BOTTOM_TOP, this.mVastVideoConfig.getCustomForceOrientation(), hasCompanionAd, 8, 2, this.mProgressBarWidget.getId());
        getLayout().addView(this.mBottomGradientStripWidget);
    }

    private void addProgressBarWidget(@NonNull Context context, int initialVisibility) {
        this.mProgressBarWidget = new VastVideoProgressBarWidget(context, this.mVideoView.getId());
        this.mProgressBarWidget.setVisibility(initialVisibility);
        getLayout().addView(this.mProgressBarWidget);
    }

    private void addRadialCountdownWidget(@NonNull Context context, int initialVisibility) {
        this.mRadialCountdownWidget = new VastVideoRadialCountdownWidget(context);
        this.mRadialCountdownWidget.setVisibility(initialVisibility);
        getLayout().addView(this.mRadialCountdownWidget);
    }

    private void addCtaButtonWidget(@NonNull Context context) {
        boolean hasCompanionAd = this.mVastCompanionAdConfig != null;
        boolean hasClickthroughUrl = !TextUtils.isEmpty(this.mVastVideoConfig.getClickThroughUrl());
        this.mCtaButtonWidget = new VastVideoCtaButtonWidget(context, this.mVideoView.getId(), hasCompanionAd, hasClickthroughUrl);
        getLayout().addView(this.mCtaButtonWidget);
        this.mCtaButtonWidget.setOnTouchListener(this.mClickThroughListener);
        String customCtaText = this.mVastVideoConfig.getCustomCtaText();
        if (customCtaText != null) {
            this.mCtaButtonWidget.updateCtaText(customCtaText);
        }
    }

    private void addCloseButtonWidget(@NonNull Context context, int initialVisibility) {
        this.mCloseButtonWidget = new VastVideoCloseButtonWidget(context);
        this.mCloseButtonWidget.setVisibility(initialVisibility);
        getLayout().addView(this.mCloseButtonWidget);
        View.OnTouchListener closeOnTouchListener = new View.OnTouchListener() { // from class: com.mopub.mobileads.VastVideoViewController.5
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int currentPosition;
                if (VastVideoViewController.this.mIsVideoFinishedPlaying) {
                    currentPosition = VastVideoViewController.this.mDuration;
                } else {
                    currentPosition = VastVideoViewController.this.getCurrentPosition();
                }
                if (motionEvent.getAction() == 1) {
                    VastVideoViewController.this.mIsClosing = true;
                    VastVideoViewController.this.mVastVideoConfig.handleClose(VastVideoViewController.this.getContext(), currentPosition);
                    VastVideoViewController.this.getBaseVideoViewControllerListener().onFinish();
                }
                return true;
            }
        };
        this.mCloseButtonWidget.setOnTouchListenerToContent(closeOnTouchListener);
        String customSkipText = this.mVastVideoConfig.getCustomSkipText();
        if (customSkipText != null) {
            this.mCloseButtonWidget.updateCloseButtonText(customSkipText);
        }
        String customCloseIconUrl = this.mVastVideoConfig.getCustomCloseIconUrl();
        if (customCloseIconUrl != null) {
            this.mCloseButtonWidget.updateCloseButtonIcon(customCloseIconUrl);
        }
    }

    private void addBlurredLastVideoFrameImageView(@NonNull Context context, int initialVisibility) {
        this.mBlurredLastVideoFrameImageView = new ImageView(context);
        this.mBlurredLastVideoFrameImageView.setVisibility(initialVisibility);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        getLayout().addView(this.mBlurredLastVideoFrameImageView, layoutParams);
    }

    @NonNull
    @VisibleForTesting
    View createCompanionAdView(@NonNull final Context context, @Nullable final VastCompanionAdConfig vastCompanionAdConfig, int initialVisibility) {
        Preconditions.checkNotNull(context);
        if (vastCompanionAdConfig == null) {
            View emptyView = new View(context);
            emptyView.setVisibility(4);
            return emptyView;
        }
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setGravity(17);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        getLayout().addView(relativeLayout, layoutParams);
        VastWebView companionView = VastWebView.createView(context, vastCompanionAdConfig.getVastResource());
        companionView.setVastWebViewClickListener(new VastWebView.VastWebViewClickListener() { // from class: com.mopub.mobileads.VastVideoViewController.6
            @Override // com.mopub.mobileads.VastWebView.VastWebViewClickListener
            public void onVastWebViewClick() {
                VastVideoViewController.this.broadcastAction(EventForwardingBroadcastReceiver.ACTION_INTERSTITIAL_CLICK);
                TrackingRequest.makeVastTrackingHttpRequest(vastCompanionAdConfig.getClickTrackers(), null, Integer.valueOf(VastVideoViewController.this.mDuration), null, context);
                vastCompanionAdConfig.handleClick(context, 1, null);
            }
        });
        companionView.setWebViewClient(new WebViewClient() { // from class: com.mopub.mobileads.VastVideoViewController.7
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                vastCompanionAdConfig.handleClick(context, 1, url);
                return true;
            }
        });
        companionView.setVisibility(initialVisibility);
        RelativeLayout.LayoutParams companionAdLayout = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(vastCompanionAdConfig.getWidth() + 16, context), Dips.dipsToIntPixels(vastCompanionAdConfig.getHeight() + 16, context));
        companionAdLayout.addRule(13, -1);
        relativeLayout.addView(companionView, companionAdLayout);
        return companionView;
    }

    @NonNull
    @VisibleForTesting
    View createIconView(@NonNull final Context context, @Nullable final VastIconConfig vastIconConfig, int initialVisibility) {
        Preconditions.checkNotNull(context);
        if (vastIconConfig == null) {
            return new View(context);
        }
        VastWebView iconView = VastWebView.createView(context, vastIconConfig.getVastResource());
        iconView.setVastWebViewClickListener(new VastWebView.VastWebViewClickListener() { // from class: com.mopub.mobileads.VastVideoViewController.8
            @Override // com.mopub.mobileads.VastWebView.VastWebViewClickListener
            public void onVastWebViewClick() {
                TrackingRequest.makeVastTrackingHttpRequest(vastIconConfig.getClickTrackingUris(), null, Integer.valueOf(VastVideoViewController.this.getCurrentPosition()), VastVideoViewController.this.getNetworkMediaFileUrl(), context);
                vastIconConfig.handleClick(VastVideoViewController.this.getContext(), null);
            }
        });
        iconView.setWebViewClient(new WebViewClient() { // from class: com.mopub.mobileads.VastVideoViewController.9
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                vastIconConfig.handleClick(VastVideoViewController.this.getContext(), url);
                return true;
            }
        });
        iconView.setVisibility(initialVisibility);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.asIntPixels(vastIconConfig.getWidth() + 16, context), Dips.asIntPixels(vastIconConfig.getHeight() + 16, context));
        layoutParams.addRule(9);
        layoutParams.addRule(10);
        getLayout().addView(iconView, layoutParams);
        return iconView;
    }

    int getDuration() {
        return this.mVideoView.getDuration();
    }

    int getCurrentPosition() {
        return this.mVideoView.getCurrentPosition();
    }

    void makeVideoInteractable() {
        this.mShowCloseButtonEventFired = true;
        this.mRadialCountdownWidget.setVisibility(8);
        this.mCloseButtonWidget.setVisibility(0);
        this.mCtaButtonWidget.notifyVideoSkippable();
    }

    boolean shouldBeInteractable() {
        return !this.mShowCloseButtonEventFired && getCurrentPosition() >= this.mShowCloseButtonDelay;
    }

    void updateCountdown() {
        if (this.mIsCalibrationDone) {
            this.mRadialCountdownWidget.updateCountdownProgress(this.mShowCloseButtonDelay, getCurrentPosition());
        }
    }

    void updateProgressBar() {
        this.mProgressBarWidget.updateProgress(getCurrentPosition());
    }

    String getNetworkMediaFileUrl() {
        if (this.mVastVideoConfig == null) {
            return null;
        }
        return this.mVastVideoConfig.getNetworkMediaFileUrl();
    }

    void handleIconDisplay(int currentPosition) {
        if (this.mVastIconConfig != null && currentPosition >= this.mVastIconConfig.getOffsetMS()) {
            this.mIconView.setVisibility(0);
            this.mVastIconConfig.handleImpression(getContext(), currentPosition, getNetworkMediaFileUrl());
            if (this.mVastIconConfig.getDurationMS() != null && currentPosition >= this.mVastIconConfig.getOffsetMS() + this.mVastIconConfig.getDurationMS().intValue()) {
                this.mIconView.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldAllowClickThrough() {
        return this.mShowCloseButtonEventFired;
    }

    private void startRunnables() {
        this.mProgressCheckerRunnable.startRepeating(50L);
        this.mCountdownRunnable.startRepeating(VIDEO_COUNTDOWN_UPDATE_INTERVAL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopRunnables() {
        this.mProgressCheckerRunnable.stop();
        this.mCountdownRunnable.stop();
    }

    @VisibleForTesting
    @Deprecated
    VastVideoViewProgressRunnable getProgressCheckerRunnable() {
        return this.mProgressCheckerRunnable;
    }

    @VisibleForTesting
    @Deprecated
    VastVideoViewCountdownRunnable getCountdownRunnable() {
        return this.mCountdownRunnable;
    }

    @VisibleForTesting
    @Deprecated
    boolean getHasSkipOffset() {
        return this.mHasSkipOffset;
    }

    @VisibleForTesting
    @Deprecated
    int getShowCloseButtonDelay() {
        return this.mShowCloseButtonDelay;
    }

    @VisibleForTesting
    @Deprecated
    boolean isShowCloseButtonEventFired() {
        return this.mShowCloseButtonEventFired;
    }

    @VisibleForTesting
    @Deprecated
    void setCloseButtonVisible(boolean visible) {
        this.mShowCloseButtonEventFired = visible;
    }

    @VisibleForTesting
    @Deprecated
    boolean isVideoFinishedPlaying() {
        return this.mIsVideoFinishedPlaying;
    }

    @VisibleForTesting
    @Deprecated
    boolean isCalibrationDone() {
        return this.mIsCalibrationDone;
    }

    @VisibleForTesting
    @Deprecated
    View getLandscapeCompanionAdView() {
        return this.mLandscapeCompanionAdView;
    }

    @VisibleForTesting
    @Deprecated
    View getPortraitCompanionAdView() {
        return this.mPortraitCompanionAdView;
    }

    @VisibleForTesting
    @Deprecated
    boolean getVideoError() {
        return this.mVideoError;
    }

    @VisibleForTesting
    @Deprecated
    void setVideoError() {
        this.mVideoError = true;
    }

    @VisibleForTesting
    @Deprecated
    View getIconView() {
        return this.mIconView;
    }

    @VisibleForTesting
    @Deprecated
    VastVideoGradientStripWidget getTopGradientStripWidget() {
        return this.mTopGradientStripWidget;
    }

    @VisibleForTesting
    @Deprecated
    VastVideoGradientStripWidget getBottomGradientStripWidget() {
        return this.mBottomGradientStripWidget;
    }

    @VisibleForTesting
    @Deprecated
    VastVideoProgressBarWidget getProgressBarWidget() {
        return this.mProgressBarWidget;
    }

    @VisibleForTesting
    @Deprecated
    void setProgressBarWidget(@NonNull VastVideoProgressBarWidget progressBarWidget) {
        this.mProgressBarWidget = progressBarWidget;
    }

    @VisibleForTesting
    @Deprecated
    VastVideoRadialCountdownWidget getRadialCountdownWidget() {
        return this.mRadialCountdownWidget;
    }

    @VisibleForTesting
    @Deprecated
    void setRadialCountdownWidget(@NonNull VastVideoRadialCountdownWidget radialCountdownWidget) {
        this.mRadialCountdownWidget = radialCountdownWidget;
    }

    @VisibleForTesting
    @Deprecated
    VastVideoCtaButtonWidget getCtaButtonWidget() {
        return this.mCtaButtonWidget;
    }

    @VisibleForTesting
    @Deprecated
    VastVideoCloseButtonWidget getCloseButtonWidget() {
        return this.mCloseButtonWidget;
    }

    @VisibleForTesting
    @Deprecated
    ImageView getBlurredLastVideoFrameImageView() {
        return this.mBlurredLastVideoFrameImageView;
    }

    @VisibleForTesting
    @Deprecated
    VastVideoView getVastVideoView() {
        return this.mVideoView;
    }

    @VisibleForTesting
    @Deprecated
    void setIsClosing(boolean isClosing) {
        this.mIsClosing = isClosing;
    }
}

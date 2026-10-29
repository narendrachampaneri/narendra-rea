package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.support.annotation.NonNull;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.resource.CtaButtonDrawable;

/* JADX INFO: loaded from: classes.dex */
public class VastVideoCtaButtonWidget extends ImageView {

    @NonNull
    private CtaButtonDrawable mCtaButtonDrawable;
    private boolean mHasClickthroughUrl;
    private boolean mHasCompanionAd;
    private boolean mIsVideoComplete;
    private boolean mIsVideoSkippable;

    @NonNull
    private final RelativeLayout.LayoutParams mLandscapeLayoutParams;

    @NonNull
    private final RelativeLayout.LayoutParams mPortraitLayoutParams;

    public VastVideoCtaButtonWidget(@NonNull Context context, int videoViewId, boolean hasCompanionAd, boolean hasClickthroughUrl) {
        super(context);
        this.mHasCompanionAd = hasCompanionAd;
        this.mHasClickthroughUrl = hasClickthroughUrl;
        setId((int) Utils.generateUniqueId());
        int width = Dips.dipsToIntPixels(200.0f, context);
        int height = Dips.dipsToIntPixels(42.0f, context);
        int margin = Dips.dipsToIntPixels(16.0f, context);
        this.mCtaButtonDrawable = new CtaButtonDrawable(context);
        setImageDrawable(this.mCtaButtonDrawable);
        this.mLandscapeLayoutParams = new RelativeLayout.LayoutParams(width, height);
        this.mLandscapeLayoutParams.setMargins(margin, margin, margin, margin);
        this.mLandscapeLayoutParams.addRule(8, videoViewId);
        this.mLandscapeLayoutParams.addRule(7, videoViewId);
        this.mPortraitLayoutParams = new RelativeLayout.LayoutParams(width, height);
        this.mPortraitLayoutParams.setMargins(margin, margin, margin, margin);
        this.mPortraitLayoutParams.addRule(3, videoViewId);
        this.mPortraitLayoutParams.addRule(14);
        updateLayoutAndVisibility();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        updateLayoutAndVisibility();
    }

    void updateCtaText(@NonNull String customCtaText) {
        this.mCtaButtonDrawable.setCtaText(customCtaText);
    }

    void notifyVideoSkippable() {
        this.mIsVideoSkippable = true;
        updateLayoutAndVisibility();
    }

    void notifyVideoComplete() {
        this.mIsVideoSkippable = true;
        this.mIsVideoComplete = true;
        updateLayoutAndVisibility();
    }

    private void updateLayoutAndVisibility() {
        if (!this.mHasClickthroughUrl) {
            setVisibility(8);
        }
        if (!this.mIsVideoSkippable) {
            setVisibility(4);
            return;
        }
        if (this.mIsVideoComplete && this.mHasCompanionAd) {
            setVisibility(8);
            return;
        }
        int currentOrientation = getResources().getConfiguration().orientation;
        switch (currentOrientation) {
            case 0:
                MoPubLog.d("Screen orientation undefined: CTA button widget defaulting to portrait layout");
                setVisibility(0);
                setLayoutParams(this.mPortraitLayoutParams);
                break;
            case 1:
                setVisibility(0);
                setLayoutParams(this.mPortraitLayoutParams);
                break;
            case 2:
                setVisibility(0);
                setLayoutParams(this.mLandscapeLayoutParams);
                break;
            case 3:
                MoPubLog.d("Screen orientation is deprecated ORIENTATION_SQUARE: CTA button widget defaulting to portrait layout");
                setVisibility(0);
                setLayoutParams(this.mPortraitLayoutParams);
                break;
            default:
                MoPubLog.d("Unrecognized screen orientation: CTA button widget defaulting to portrait layout");
                setVisibility(0);
                setLayoutParams(this.mPortraitLayoutParams);
                break;
        }
    }

    @VisibleForTesting
    @Deprecated
    String getCtaText() {
        return this.mCtaButtonDrawable.getCtaText();
    }

    @VisibleForTesting
    @Deprecated
    boolean hasPortraitLayoutParams() {
        return getLayoutParams().equals(this.mPortraitLayoutParams);
    }

    @VisibleForTesting
    @Deprecated
    boolean hasLandscapeLayoutParams() {
        return getLayoutParams().equals(this.mLandscapeLayoutParams);
    }
}

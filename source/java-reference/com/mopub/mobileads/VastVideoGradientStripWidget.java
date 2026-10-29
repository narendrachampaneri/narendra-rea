package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.support.annotation.NonNull;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;

/* JADX INFO: loaded from: classes.dex */
public class VastVideoGradientStripWidget extends ImageView {

    @NonNull
    DeviceUtils.ForceOrientation mForceOrientation;
    private boolean mHasCompanionAd;
    private boolean mIsVideoComplete;
    private int mVisibilityForCompanionAd;

    public VastVideoGradientStripWidget(@NonNull Context context, @NonNull GradientDrawable.Orientation gradientOrientation, @NonNull DeviceUtils.ForceOrientation forceOrientation, boolean hasCompanionAd, int visibilityForCompanionAd, int layoutVerb, int layoutAnchor) {
        super(context);
        this.mForceOrientation = forceOrientation;
        this.mVisibilityForCompanionAd = visibilityForCompanionAd;
        this.mHasCompanionAd = hasCompanionAd;
        Drawable gradientDrawable = new GradientDrawable(gradientOrientation, new int[]{DrawableConstants.GradientStrip.START_COLOR, DrawableConstants.GradientStrip.END_COLOR});
        setImageDrawable(gradientDrawable);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, Dips.dipsToIntPixels(72.0f, context));
        layoutParams.addRule(layoutVerb, layoutAnchor);
        setLayoutParams(layoutParams);
        updateVisibility();
    }

    void notifyVideoComplete() {
        this.mIsVideoComplete = true;
        updateVisibility();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        updateVisibility();
    }

    private void updateVisibility() {
        if (this.mIsVideoComplete) {
            if (this.mHasCompanionAd) {
                setVisibility(this.mVisibilityForCompanionAd);
            } else {
                setVisibility(8);
                return;
            }
        }
        if (this.mForceOrientation == DeviceUtils.ForceOrientation.FORCE_PORTRAIT) {
            setVisibility(4);
            return;
        }
        if (this.mForceOrientation == DeviceUtils.ForceOrientation.FORCE_LANDSCAPE) {
            setVisibility(0);
            return;
        }
        int currentOrientation = getResources().getConfiguration().orientation;
        switch (currentOrientation) {
            case 0:
                MoPubLog.d("Screen orientation undefined: do not show gradient strip widget");
                setVisibility(4);
                break;
            case 1:
                setVisibility(4);
                break;
            case 2:
                setVisibility(0);
                break;
            case 3:
                MoPubLog.d("Screen orientation is deprecated ORIENTATION_SQUARE: do not show gradient strip widget");
                setVisibility(4);
                break;
            default:
                MoPubLog.d("Unrecognized screen orientation: do not show gradient strip widget");
                setVisibility(4);
                break;
        }
    }
}

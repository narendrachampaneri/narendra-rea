package com.mopub.mobileads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.resource.ProgressBarDrawable;

/* JADX INFO: loaded from: classes.dex */
public class VastVideoProgressBarWidget extends ImageView {

    @NonNull
    private ProgressBarDrawable mProgressBarDrawable;

    public VastVideoProgressBarWidget(@NonNull Context context, int anchorId) {
        super(context);
        setId((int) Utils.generateUniqueId());
        this.mProgressBarDrawable = new ProgressBarDrawable(context);
        setImageDrawable(this.mProgressBarDrawable);
        int progressBarHeight = Dips.dipsToIntPixels(4.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, progressBarHeight);
        layoutParams.addRule(8, anchorId);
        setLayoutParams(layoutParams);
    }

    void calibrateAndMakeVisible(int duration, int skipOffset) {
        this.mProgressBarDrawable.setDurationAndSkipOffset(duration, skipOffset);
        setVisibility(0);
    }

    void updateProgress(int progress) {
        this.mProgressBarDrawable.setProgress(progress);
    }

    @VisibleForTesting
    @Deprecated
    ProgressBarDrawable getImageViewDrawable() {
        return this.mProgressBarDrawable;
    }

    @VisibleForTesting
    @Deprecated
    void setImageViewDrawable(@NonNull ProgressBarDrawable drawable) {
        this.mProgressBarDrawable = drawable;
    }
}

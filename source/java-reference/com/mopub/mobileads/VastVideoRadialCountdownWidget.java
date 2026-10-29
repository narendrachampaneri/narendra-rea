package com.mopub.mobileads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.resource.RadialCountdownDrawable;

/* JADX INFO: loaded from: classes.dex */
public class VastVideoRadialCountdownWidget extends ImageView {
    private int mLastProgressMilliseconds;

    @NonNull
    private RadialCountdownDrawable mRadialCountdownDrawable;

    public VastVideoRadialCountdownWidget(@NonNull Context context) {
        super(context);
        setId((int) Utils.generateUniqueId());
        int sideLength = Dips.dipsToIntPixels(45.0f, context);
        int topMargin = Dips.dipsToIntPixels(16.0f, context);
        int rightMargin = Dips.dipsToIntPixels(16.0f, context);
        int padding = Dips.dipsToIntPixels(5.0f, context);
        this.mRadialCountdownDrawable = new RadialCountdownDrawable(context);
        setImageDrawable(this.mRadialCountdownDrawable);
        setPadding(padding, padding, padding, padding);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(sideLength, sideLength);
        layoutParams.setMargins(0, topMargin, rightMargin, 0);
        layoutParams.addRule(11);
        setLayoutParams(layoutParams);
    }

    void calibrateAndMakeVisible(int initialCountdownMilliseconds) {
        this.mRadialCountdownDrawable.setInitialCountdown(initialCountdownMilliseconds);
        setVisibility(0);
    }

    void updateCountdownProgress(int initialCountdownMilliseconds, int currentProgressMilliseconds) {
        if (currentProgressMilliseconds >= this.mLastProgressMilliseconds) {
            int millisecondsUntilSkippable = initialCountdownMilliseconds - currentProgressMilliseconds;
            if (millisecondsUntilSkippable < 0) {
                setVisibility(8);
            } else {
                this.mRadialCountdownDrawable.updateCountdownProgress(currentProgressMilliseconds);
                this.mLastProgressMilliseconds = currentProgressMilliseconds;
            }
        }
    }

    @VisibleForTesting
    @Deprecated
    RadialCountdownDrawable getImageViewDrawable() {
        return this.mRadialCountdownDrawable;
    }

    @VisibleForTesting
    @Deprecated
    void setImageViewDrawable(RadialCountdownDrawable drawable) {
        this.mRadialCountdownDrawable = drawable;
    }
}

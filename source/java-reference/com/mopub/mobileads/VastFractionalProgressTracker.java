package com.mopub.mobileads;

import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import java.io.Serializable;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class VastFractionalProgressTracker extends VastTracker implements Comparable<VastFractionalProgressTracker>, Serializable {
    private static final long serialVersionUID = 0;
    private final float mFraction;

    public VastFractionalProgressTracker(@NonNull String trackingUrl, float trackingFraction) {
        super(trackingUrl);
        Preconditions.checkArgument(trackingFraction >= 0.0f);
        this.mFraction = trackingFraction;
    }

    public float trackingFraction() {
        return this.mFraction;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull VastFractionalProgressTracker other) {
        float you = other.trackingFraction();
        float me = trackingFraction();
        return Double.compare(me, you);
    }

    public String toString() {
        return String.format(Locale.US, "%2f: %s", Float.valueOf(this.mFraction), this.mTrackingUrl);
    }
}

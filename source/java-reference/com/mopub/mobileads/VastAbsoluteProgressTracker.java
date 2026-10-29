package com.mopub.mobileads;

import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import java.io.Serializable;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class VastAbsoluteProgressTracker extends VastTracker implements Comparable<VastAbsoluteProgressTracker>, Serializable {
    private static final long serialVersionUID = 0;
    private final int mTrackingMilliseconds;

    public VastAbsoluteProgressTracker(@NonNull String trackingUrl, int trackingMilliseconds) {
        super(trackingUrl);
        Preconditions.checkArgument(trackingMilliseconds >= 0);
        this.mTrackingMilliseconds = trackingMilliseconds;
    }

    public int getTrackingMilliseconds() {
        return this.mTrackingMilliseconds;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull VastAbsoluteProgressTracker other) {
        int you = other.getTrackingMilliseconds();
        int me = getTrackingMilliseconds();
        return me - you;
    }

    public String toString() {
        return String.format(Locale.US, "%dms: %s", Integer.valueOf(this.mTrackingMilliseconds), this.mTrackingUrl);
    }
}

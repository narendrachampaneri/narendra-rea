package com.google.android.exoplayer.dash.mpd;

import com.google.android.exoplayer.util.ManifestFetcher;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MediaPresentationDescription implements ManifestFetcher.RedirectingManifest {
    public final long availabilityStartTime;
    public final long duration;
    public final boolean dynamic;
    public final String location;
    public final long minBufferTime;
    public final long minUpdatePeriod;
    public final List<Period> periods;
    public final long timeShiftBufferDepth;
    public final UtcTimingElement utcTiming;

    public MediaPresentationDescription(long availabilityStartTime, long duration, long minBufferTime, boolean dynamic, long minUpdatePeriod, long timeShiftBufferDepth, UtcTimingElement utcTiming, String location, List<Period> periods) {
        this.availabilityStartTime = availabilityStartTime;
        this.duration = duration;
        this.minBufferTime = minBufferTime;
        this.dynamic = dynamic;
        this.minUpdatePeriod = minUpdatePeriod;
        this.timeShiftBufferDepth = timeShiftBufferDepth;
        this.utcTiming = utcTiming;
        this.location = location;
        this.periods = Collections.unmodifiableList(periods);
    }

    @Override // com.google.android.exoplayer.util.ManifestFetcher.RedirectingManifest
    public String getNextManifestUri() {
        return this.location;
    }
}

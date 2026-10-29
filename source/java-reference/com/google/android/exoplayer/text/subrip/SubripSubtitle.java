package com.google.android.exoplayer.text.subrip;

import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.Subtitle;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class SubripSubtitle implements Subtitle {
    private final long[] cueTimesUs;
    private final Cue[] cues;
    private final long startTimeUs;

    public SubripSubtitle(long startTimeUs, Cue[] cues, long[] cueTimesUs) {
        this.startTimeUs = startTimeUs;
        this.cues = cues;
        this.cueTimesUs = cueTimesUs;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getStartTime() {
        return this.startTimeUs;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public int getNextEventTimeIndex(long timeUs) {
        int index = Util.binarySearchCeil(this.cueTimesUs, timeUs, false, false);
        if (index < this.cueTimesUs.length) {
            return index;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public int getEventTimeCount() {
        return this.cueTimesUs.length;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getEventTime(int index) {
        Assertions.checkArgument(index >= 0);
        Assertions.checkArgument(index < this.cueTimesUs.length);
        return this.cueTimesUs[index];
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getLastEventTime() {
        if (getEventTimeCount() == 0) {
            return -1L;
        }
        return this.cueTimesUs[this.cueTimesUs.length - 1];
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public List<Cue> getCues(long timeUs) {
        int index = Util.binarySearchFloor(this.cueTimesUs, timeUs, true, false);
        return (index == -1 || index % 2 == 1) ? Collections.emptyList() : Collections.singletonList(this.cues[index / 2]);
    }
}

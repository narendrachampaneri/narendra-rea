package com.google.android.exoplayer.text.tx3g;

import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.Subtitle;
import com.google.android.exoplayer.util.Assertions;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class Tx3gSubtitle implements Subtitle {
    private final List<Cue> cues;
    private final long startTimeUs;

    public Tx3gSubtitle(long startTimeUs, Cue cue) {
        this.startTimeUs = startTimeUs;
        this.cues = Collections.singletonList(cue);
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getStartTime() {
        return this.startTimeUs;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public int getNextEventTimeIndex(long timeUs) {
        return timeUs < this.startTimeUs ? 0 : -1;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public int getEventTimeCount() {
        return 1;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getEventTime(int index) {
        Assertions.checkArgument(index == 0);
        return this.startTimeUs;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getLastEventTime() {
        return this.startTimeUs;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public List<Cue> getCues(long timeUs) {
        return timeUs >= this.startTimeUs ? this.cues : Collections.emptyList();
    }
}

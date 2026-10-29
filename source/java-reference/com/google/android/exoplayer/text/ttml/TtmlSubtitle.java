package com.google.android.exoplayer.text.ttml;

import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.Subtitle;
import com.google.android.exoplayer.util.Util;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TtmlSubtitle implements Subtitle {
    private final long[] eventTimesUs;
    private final TtmlNode root;
    private final long startTimeUs;

    public TtmlSubtitle(TtmlNode root, long startTimeUs) {
        this.root = root;
        this.startTimeUs = startTimeUs;
        this.eventTimesUs = root.getEventTimesUs();
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getStartTime() {
        return this.startTimeUs;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public int getNextEventTimeIndex(long timeUs) {
        int index = Util.binarySearchCeil(this.eventTimesUs, timeUs - this.startTimeUs, false, false);
        if (index < this.eventTimesUs.length) {
            return index;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public int getEventTimeCount() {
        return this.eventTimesUs.length;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getEventTime(int index) {
        return this.eventTimesUs[index] + this.startTimeUs;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public long getLastEventTime() {
        return (this.eventTimesUs.length == 0 ? -1L : this.eventTimesUs[this.eventTimesUs.length - 1]) + this.startTimeUs;
    }

    @Override // com.google.android.exoplayer.text.Subtitle
    public List<Cue> getCues(long timeUs) {
        CharSequence cueText = this.root.getText(timeUs - this.startTimeUs);
        if (cueText == null) {
            return Collections.emptyList();
        }
        Cue cue = new Cue(cueText);
        return Collections.singletonList(cue);
    }
}

package com.google.android.exoplayer.text;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface Subtitle {
    List<Cue> getCues(long j);

    long getEventTime(int i);

    int getEventTimeCount();

    long getLastEventTime();

    int getNextEventTimeIndex(long j);

    long getStartTime();
}

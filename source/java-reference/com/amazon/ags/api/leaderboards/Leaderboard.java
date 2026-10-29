package com.amazon.ags.api.leaderboards;

import com.amazon.ags.constants.ScoreFormat;

/* JADX INFO: loaded from: classes2.dex */
public interface Leaderboard {
    String getDisplayText();

    String getId();

    String getImageURL();

    String getName();

    ScoreFormat getScoreFormat();
}

package com.amazon.ags.api.leaderboards;

import com.amazon.ags.api.RequestResponse;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface GetScoresResponse extends RequestResponse {
    Leaderboard getLeaderboard();

    int getNumScores();

    List<Score> getScores();
}

package com.amazon.ags.api.leaderboards;

import com.amazon.ags.api.RequestResponse;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface GetLeaderboardPercentilesResponse extends RequestResponse {
    Leaderboard getLeaderboard();

    List<LeaderboardPercentileItem> getPercentileList();

    int getUserIndex();
}

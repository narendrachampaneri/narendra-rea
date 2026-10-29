package com.amazon.ags.api.leaderboards;

import com.amazon.ags.api.AGResponseHandle;
import com.amazon.ags.api.RequestResponse;
import com.amazon.ags.constants.LeaderboardFilter;

/* JADX INFO: loaded from: classes2.dex */
public interface LeaderboardsClient {
    AGResponseHandle<GetLeaderboardsResponse> getLeaderboards(Object... objArr);

    AGResponseHandle<GetPlayerScoreResponse> getLocalPlayerScore(String str, LeaderboardFilter leaderboardFilter, Object... objArr);

    AGResponseHandle<GetLeaderboardPercentilesResponse> getPercentileRanks(String str, LeaderboardFilter leaderboardFilter, Object... objArr);

    AGResponseHandle<GetLeaderboardPercentilesResponse> getPercentileRanksForPlayer(String str, String str2, LeaderboardFilter leaderboardFilter, Object... objArr);

    AGResponseHandle<GetPlayerScoreResponse> getScoreForPlayer(String str, String str2, LeaderboardFilter leaderboardFilter, Object... objArr);

    AGResponseHandle<GetScoresResponse> getScores(String str, LeaderboardFilter leaderboardFilter, Object... objArr);

    AGResponseHandle<RequestResponse> showLeaderboardOverlay(String str, Object... objArr);

    AGResponseHandle<RequestResponse> showLeaderboardsOverlay(Object... objArr);

    AGResponseHandle<SubmitScoreResponse> submitScore(String str, long j, Object... objArr);
}

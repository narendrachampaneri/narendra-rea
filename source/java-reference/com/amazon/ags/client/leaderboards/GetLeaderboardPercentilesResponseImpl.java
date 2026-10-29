package com.amazon.ags.client.leaderboards;

import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.leaderboards.GetLeaderboardPercentilesResponse;
import com.amazon.ags.api.leaderboards.Leaderboard;
import com.amazon.ags.api.leaderboards.LeaderboardPercentileItem;
import com.amazon.ags.client.RequestResponseImpl;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GetLeaderboardPercentilesResponseImpl extends RequestResponseImpl implements GetLeaderboardPercentilesResponse {
    private final Leaderboard leaderboard;
    private final List<LeaderboardPercentileItem> percentileList;
    private final int userIndex;

    public GetLeaderboardPercentilesResponseImpl(Leaderboard leaderboard, List<LeaderboardPercentileItem> percentileList, int userIndex, int responseCode) {
        super(responseCode);
        this.userIndex = userIndex;
        this.leaderboard = leaderboard;
        this.percentileList = percentileList;
    }

    public GetLeaderboardPercentilesResponseImpl(int responseCode, ErrorCode error) {
        super(responseCode, error);
        this.userIndex = -1;
        this.leaderboard = null;
        this.percentileList = null;
    }

    @Override // com.amazon.ags.api.leaderboards.GetLeaderboardPercentilesResponse
    public int getUserIndex() {
        return this.userIndex;
    }

    @Override // com.amazon.ags.api.leaderboards.GetLeaderboardPercentilesResponse
    public Leaderboard getLeaderboard() {
        return this.leaderboard;
    }

    @Override // com.amazon.ags.api.leaderboards.GetLeaderboardPercentilesResponse
    public List<LeaderboardPercentileItem> getPercentileList() {
        return this.percentileList;
    }
}

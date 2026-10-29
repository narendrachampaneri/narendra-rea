package com.amazon.ags.api.leaderboards;

import com.amazon.ags.api.RequestResponse;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface GetLeaderboardsResponse extends RequestResponse {
    List<Leaderboard> getLeaderboards();

    int getNumLeaderboards();
}

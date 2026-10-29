package com.amazon.ags.client.leaderboards;

import com.amazon.ags.api.leaderboards.LeaderboardPercentileItem;
import com.amazon.ags.api.player.Player;

/* JADX INFO: loaded from: classes2.dex */
public class LeaderboardPercentileItemImpl implements LeaderboardPercentileItem {
    private final int percentile;
    private final Player player;
    private final long playerScore;

    public LeaderboardPercentileItemImpl(Player player, long playerScore, int percentile) {
        this.player = player;
        this.playerScore = playerScore;
        this.percentile = percentile;
    }

    @Override // com.amazon.ags.api.leaderboards.LeaderboardPercentileItem
    public Player getPlayer() {
        return this.player;
    }

    @Override // com.amazon.ags.api.leaderboards.LeaderboardPercentileItem
    public long getPlayerScore() {
        return this.playerScore;
    }

    @Override // com.amazon.ags.api.leaderboards.LeaderboardPercentileItem
    public int getPercentile() {
        return this.percentile;
    }
}

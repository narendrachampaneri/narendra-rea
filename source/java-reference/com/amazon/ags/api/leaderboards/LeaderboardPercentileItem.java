package com.amazon.ags.api.leaderboards;

import com.amazon.ags.api.player.Player;

/* JADX INFO: loaded from: classes2.dex */
public interface LeaderboardPercentileItem {
    int getPercentile();

    Player getPlayer();

    long getPlayerScore();
}

package com.amazon.ags.api.leaderboards;

import com.amazon.ags.api.player.Player;

/* JADX INFO: loaded from: classes2.dex */
public interface Score {
    String getLeaderboard();

    Player getPlayer();

    int getRank();

    String getScoreString();

    long getScoreValue();
}

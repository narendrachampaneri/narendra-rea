package com.amazon.ags.api;

import com.amazon.ags.api.achievements.AchievementsClient;
import com.amazon.ags.api.leaderboards.LeaderboardsClient;
import com.amazon.ags.api.overlay.PopUpLocation;
import com.amazon.ags.api.player.PlayerClient;

/* JADX INFO: loaded from: classes.dex */
public interface AmazonGames {
    AchievementsClient getAchievementsClient();

    LeaderboardsClient getLeaderboardsClient();

    PlayerClient getPlayerClient();

    void initializeJni();

    void setPopUpLocation(PopUpLocation popUpLocation);

    AGResponseHandle<RequestResponse> showGameCircle(Object... objArr);

    AGResponseHandle<RequestResponse> showSignInPage(Object... objArr);
}

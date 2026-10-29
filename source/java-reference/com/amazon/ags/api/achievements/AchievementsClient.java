package com.amazon.ags.api.achievements;

import com.amazon.ags.api.AGResponseHandle;
import com.amazon.ags.api.RequestResponse;

/* JADX INFO: loaded from: classes2.dex */
public interface AchievementsClient {
    AGResponseHandle<GetAchievementResponse> getAchievement(String str, Object... objArr);

    AGResponseHandle<GetAchievementResponse> getAchievementForPlayer(String str, String str2, Object... objArr);

    AGResponseHandle<GetAchievementsResponse> getAchievements(Object... objArr);

    AGResponseHandle<GetAchievementsResponse> getAchievementsForPlayer(String str, Object... objArr);

    AGResponseHandle<RequestResponse> showAchievementsOverlay(Object... objArr);

    AGResponseHandle<UpdateProgressResponse> updateProgress(String str, float f, Object... objArr);
}

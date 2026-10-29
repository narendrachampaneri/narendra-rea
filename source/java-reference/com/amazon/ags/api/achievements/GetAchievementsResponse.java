package com.amazon.ags.api.achievements;

import com.amazon.ags.api.RequestResponse;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface GetAchievementsResponse extends RequestResponse {
    List<Achievement> getAchievementsList();

    Map<String, Achievement> getAchievementsMap();

    int getNumVisibleAchievements();
}

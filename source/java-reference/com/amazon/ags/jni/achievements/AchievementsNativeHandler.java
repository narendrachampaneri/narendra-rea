package com.amazon.ags.jni.achievements;

import android.util.Log;
import com.amazon.ags.api.AGResponseHandle;
import com.amazon.ags.api.AmazonGamesClient;
import com.amazon.ags.api.RequestResponse;
import com.amazon.ags.api.achievements.AchievementsClient;
import com.amazon.ags.api.achievements.GetAchievementResponse;
import com.amazon.ags.api.achievements.GetAchievementsResponse;
import com.amazon.ags.api.achievements.UpdateProgressResponse;

/* JADX INFO: loaded from: classes2.dex */
public class AchievementsNativeHandler {
    private static String TAG = "AchievementsNativeHandler";
    private static AchievementsClient m_AchievementsClient = null;

    public static void initializeNativeHandler(AmazonGamesClient amazonGamesClient) {
        m_AchievementsClient = amazonGamesClient.getAchievementsClient();
    }

    public static void requestAchievements(String playerId, int developerTag, long callbackPointer) {
        if (m_AchievementsClient == null) {
            Log.e(TAG, "requestAchievements - initializeJni was not called beforehand.");
        } else {
            m_AchievementsClient.getAchievementsForPlayer(playerId, Integer.valueOf(developerTag)).setCallback(new GetAchievementsJniRespHandler(developerTag, callbackPointer));
        }
    }

    public static AGResponseHandle<GetAchievementsResponse> requestAchievementsHandle(String playerId, int developerTag) {
        if (m_AchievementsClient != null) {
            return m_AchievementsClient.getAchievementsForPlayer(playerId, Integer.valueOf(developerTag));
        }
        Log.e(TAG, "requestAchievementsHandle - initializeJni was not called beforehand.");
        return null;
    }

    public static void requestAchievement(String achievementId, String playerId, int developerTag, long callbackPointer) {
        if (m_AchievementsClient == null) {
            Log.e(TAG, "requestAchievement - initializeJni was not called beforehand.");
        } else {
            m_AchievementsClient.getAchievementForPlayer(achievementId, playerId, Integer.valueOf(developerTag)).setCallback(new GetAchievementJniRespHandler(developerTag, callbackPointer));
        }
    }

    public static AGResponseHandle<GetAchievementResponse> requestAchievementHandle(String achievementId, String playerId, int developerTag) {
        if (m_AchievementsClient != null) {
            return m_AchievementsClient.getAchievementForPlayer(achievementId, playerId, Integer.valueOf(developerTag));
        }
        Log.e(TAG, "requestAchievementHandle - initializeJni was not called beforehand.");
        return null;
    }

    public static void updateProgress(String achievementId, float percentComplete, int developerTag, long callbackPointer) {
        if (m_AchievementsClient == null) {
            Log.e(TAG, "updateProgress - initializeJni was not called beforehand.");
        } else {
            m_AchievementsClient.updateProgress(achievementId, percentComplete, new Object[0]).setCallback(new UpdateProgressJniRespHandler(achievementId, developerTag, callbackPointer));
        }
    }

    public static AGResponseHandle<UpdateProgressResponse> updateProgressHandle(String achievementId, float percentComplete, int developerTag) {
        if (m_AchievementsClient != null) {
            return m_AchievementsClient.updateProgress(achievementId, percentComplete, Integer.valueOf(developerTag));
        }
        Log.e(TAG, "updateProgressHandle - initializeJni was not called beforehand.");
        return null;
    }

    public static AGResponseHandle<RequestResponse> showAchievementsOverlay() {
        if (m_AchievementsClient != null) {
            return m_AchievementsClient.showAchievementsOverlay(new Object[0]);
        }
        Log.e(TAG, "showAchievementsOverlay - initializeJni was not called beforehand.");
        return null;
    }
}

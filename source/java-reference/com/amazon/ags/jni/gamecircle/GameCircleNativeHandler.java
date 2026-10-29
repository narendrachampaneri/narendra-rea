package com.amazon.ags.jni.gamecircle;

import android.util.Log;
import com.amazon.ags.api.AGResponseHandle;
import com.amazon.ags.api.AmazonGames;
import com.amazon.ags.api.RequestResponse;

/* JADX INFO: loaded from: classes2.dex */
public class GameCircleNativeHandler {
    private static final String TAG = "GameCircleNativeHandler";
    private static AmazonGames amazonGames = null;

    public static void initializeNativeHandler(AmazonGames amazonGamesClient) {
        amazonGames = amazonGamesClient;
    }

    public static void showGameCircle(int developerTag, long callbackPointer) {
        if (amazonGames == null) {
            Log.e(TAG, "showGameCircle - initializeJni was not called beforehand.");
        } else {
            amazonGames.showGameCircle(Integer.valueOf(developerTag)).setCallback(new ShowGameCircleJniRespHandler(developerTag, callbackPointer));
        }
    }

    public static AGResponseHandle<RequestResponse> showGameCircleHandle(int developerTag) {
        if (amazonGames != null) {
            return amazonGames.showGameCircle(Integer.valueOf(developerTag));
        }
        Log.e(TAG, "showGameCircle - initializeJni was not called beforehand.");
        return null;
    }

    public static void showSignInPage(int developerTag, long callbackPointer) {
        if (amazonGames == null) {
            Log.e(TAG, "showSignInPage - initializeJni was not called beforehand.");
        } else {
            amazonGames.showSignInPage(Integer.valueOf(developerTag)).setCallback(new ShowGameCircleJniRespHandler(developerTag, callbackPointer));
        }
    }

    public static AGResponseHandle<RequestResponse> showSignInPageHandle(int developerTag) {
        if (amazonGames != null) {
            return amazonGames.showSignInPage(Integer.valueOf(developerTag));
        }
        Log.e(TAG, "showSignInPage - initializeJni was not called beforehand.");
        return null;
    }
}

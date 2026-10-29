package com.amazon.ags.jni;

import android.util.Log;
import com.amazon.ags.api.AmazonGamesClient;
import com.amazon.ags.jni.achievements.AchievementsNativeHandler;
import com.amazon.ags.jni.gamecircle.GameCircleNativeHandler;
import com.amazon.ags.jni.leaderboards.LeaderboardsNativeHandler;
import com.amazon.ags.jni.player.ProfilesNativeHandler;
import com.amazon.ags.jni.whispersync.WhispersyncNativeHandler;

/* JADX INFO: loaded from: classes2.dex */
public class AGSJniHandler {
    private static final String JNI_LIBRARY_NAME = "AmazonGamesJni";
    public static final String TAG = "AGSJniHandler";
    private static boolean libraryLoaded = false;

    public static native void isLoaded();

    public static native void showGameCircleResponseFailure(long j, int i, int i2);

    public static native void showGameCircleResponseSuccess(long j, int i);

    public static native void showSignInPageResponseFailure(long j, int i, int i2);

    public static native void showSignInPageResponseSuccess(long j, int i);

    public static void initializeJni(AmazonGamesClient amazonGamesClient) {
        Log.i(TAG, "Initializing Native Handlers");
        GameCircleNativeHandler.initializeNativeHandler(amazonGamesClient);
        LeaderboardsNativeHandler.initializeNativeHandler(amazonGamesClient);
        AchievementsNativeHandler.initializeNativeHandler(amazonGamesClient);
        ProfilesNativeHandler.initializeNativeHandler(amazonGamesClient);
        WhispersyncNativeHandler.initializeNativeHandler();
    }

    public static void loadLibrary() {
        try {
            isLoaded();
            libraryLoaded = true;
            Log.i(TAG, "AmazonGamesJni is already loaded");
        } catch (UnsatisfiedLinkError e) {
            Log.i(TAG, "AmazonGamesJni is not loaded, trying to load library");
            try {
                System.loadLibrary(JNI_LIBRARY_NAME);
                libraryLoaded = true;
            } catch (UnsatisfiedLinkError e2) {
                Log.w(TAG, "AmazonGamesJni not found.  Java Native Interface will not be available");
            }
        }
    }

    public static boolean isLibraryLoaded() {
        return libraryLoaded;
    }
}

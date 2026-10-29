package com.amazon.ags.jni.player;

import android.util.Log;
import com.amazon.ags.api.AGResponseHandle;
import com.amazon.ags.api.AmazonGamesClient;
import com.amazon.ags.api.player.PlayerClient;
import com.amazon.ags.api.player.RequestFriendIdsResponse;
import com.amazon.ags.api.player.RequestFriendsResponse;
import com.amazon.ags.api.player.RequestPlayerResponse;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ProfilesNativeHandler {
    private static final String TAG = ProfilesNativeHandler.class.getSimpleName();
    private static PlayerClient m_PlayerClient = null;

    public static void initializeNativeHandler(AmazonGamesClient amazonGamesClient) {
        m_PlayerClient = amazonGamesClient.getPlayerClient();
    }

    public static void getLocalPlayer(int developerTag, long callbackPointer) {
        if (m_PlayerClient == null) {
            Log.e(TAG, "requestLocalPlayerProfile - initializeJni was not called beforehand.");
        } else {
            m_PlayerClient.getLocalPlayer(new Object[0]).setCallback(new RequestLocalPlayerProfileJniResponseHandler(developerTag, callbackPointer));
        }
    }

    public static void getFriendIds(int developerTag, long callbackPointer) {
        if (m_PlayerClient == null) {
            Log.e(TAG, "requestFriendIds - initializeJni was not called beforehand.");
        } else {
            m_PlayerClient.getFriendIds(Integer.valueOf(developerTag)).setCallback(new RequestFriendIdsJniResponseHandler(developerTag, callbackPointer));
        }
    }

    public static void getBatchFriends(String[] playerIds, int developerTag, long callbackPointer) {
        if (m_PlayerClient == null) {
            Log.e(TAG, "requestBatchFriends - initializeJni was not called beforehand.");
            return;
        }
        List<String> friendIds = new ArrayList<>();
        for (String playerId : playerIds) {
            friendIds.add(playerId);
        }
        m_PlayerClient.getBatchFriends(friendIds, Integer.valueOf(developerTag)).setCallback(new RequestBatchFriendsJniResponseHandler(developerTag, callbackPointer));
    }

    public static AGResponseHandle<RequestPlayerResponse> getLocalPlayerHandle(int developerTag) {
        if (m_PlayerClient != null) {
            return m_PlayerClient.getLocalPlayer(Integer.valueOf(developerTag));
        }
        Log.e(TAG, "requestLocalPlayerProfileHandle - initializeJni was not called beforehand.");
        return null;
    }

    public static AGResponseHandle<RequestFriendIdsResponse> getFriendIdsHandle(int developerTag) {
        if (m_PlayerClient != null) {
            return m_PlayerClient.getFriendIds(Integer.valueOf(developerTag));
        }
        Log.e(TAG, "requestFriendIdsHandle - initializeJni was not called beforehand.");
        return null;
    }

    public static AGResponseHandle<RequestFriendsResponse> getBatchFriendsHandle(String[] playerIds, int developerTag) {
        if (m_PlayerClient == null) {
            Log.e(TAG, "requestBatchFriendsHandle - initializeJni was not called beforehand.");
            return null;
        }
        List<String> friendIds = new ArrayList<>();
        for (String playerId : playerIds) {
            friendIds.add(playerId);
        }
        return m_PlayerClient.getBatchFriends(friendIds, Integer.valueOf(developerTag));
    }

    public static boolean isSignedIn(int developerTag) {
        if (m_PlayerClient != null) {
            return m_PlayerClient.isSignedIn();
        }
        Log.e(TAG, "isSignedIn - initializeJni was not called beforehand.");
        return false;
    }
}

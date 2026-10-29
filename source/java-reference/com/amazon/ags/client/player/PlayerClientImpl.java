package com.amazon.ags.client.player;

import android.util.Log;
import com.amazon.ags.api.AGResponseHandle;
import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.player.AGSignedInListener;
import com.amazon.ags.api.player.Player;
import com.amazon.ags.api.player.PlayerClient;
import com.amazon.ags.api.player.RequestFriendIdsResponse;
import com.amazon.ags.api.player.RequestFriendsResponse;
import com.amazon.ags.api.player.RequestPlayerResponse;
import com.amazon.ags.client.AGResponseHandleImpl;
import com.amazon.ags.client.ClientBase;
import com.amazon.ags.constants.ProfilesBindingKeys;
import com.amazon.ags.constants.ServiceActionCode;
import com.amazon.ags.html5.service.ServiceHelper;
import com.amazon.ags.html5.util.GlobalState;
import com.amazon.ags.jni.AGSJniHandler;
import com.amazon.ags.jni.player.ProfilesJni;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PlayerClientImpl extends ClientBase implements PlayerClient {
    private static final String TAG = "GC_" + PlayerClientImpl.class.getSimpleName();
    private static AGSignedInListener signedInListener;
    private final GlobalState globalState;

    public PlayerClientImpl(GlobalState globalState) {
        this.globalState = globalState;
    }

    public PlayerClientImpl(ServiceHelper serviceHelper, GlobalState globalState) {
        super(serviceHelper);
        this.globalState = globalState;
    }

    public void shutdown() {
        this.isReady = false;
    }

    @Override // com.amazon.ags.api.player.PlayerClient
    public AGResponseHandle<RequestPlayerResponse> getLocalPlayer(Object... userData) {
        if (isClientReady()) {
            return new ClientBase.AsyncTaskWrapper<RequestPlayerResponse>("Get Local Player") { // from class: com.amazon.ags.client.player.PlayerClientImpl.1
                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public JSONObject buildRequest() throws JSONException {
                    JSONObject request = new JSONObject();
                    request.put(ServiceActionCode.ACTION_CODE_KEY, 18);
                    return request;
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public RequestPlayerResponse convertResponse(JSONObject response) throws JSONException {
                    int responseCode = response.getInt("RESPONSE_CODE");
                    String alias = response.optString(ProfilesBindingKeys.ALIAS_KEY, null);
                    String playerId = response.optString("playerId", null);
                    String avatarUrl = response.optString(ProfilesBindingKeys.AVATAR_URL_KEY, null);
                    Player player = new PlayerImpl(playerId, alias, avatarUrl);
                    return new RequestPlayerResponseImpl(player, responseCode);
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public RequestPlayerResponse getFailureResponse(int responseCode, JSONObject response) {
                    Log.e(PlayerClientImpl.TAG, "Request player failure response: " + response);
                    return new RequestPlayerResponseImpl((Player) null, responseCode);
                }
            }.execute(userData);
        }
        AGResponseHandleImpl<RequestPlayerResponse> emptyHandle = new AGResponseHandleImpl<>(userData);
        emptyHandle.setResponse(new RequestPlayerResponseImpl(29, ErrorCode.UNRECOVERABLE));
        Log.w(TAG, "getLocalPlayer called before AmazonGamesClient initialized; returning empty response");
        return emptyHandle;
    }

    @Override // com.amazon.ags.api.player.PlayerClient
    public AGResponseHandle<RequestFriendIdsResponse> getFriendIds(Object... userData) {
        if (isClientReady()) {
            return new ClientBase.AsyncTaskWrapper<RequestFriendIdsResponse>("Get Local Player Friends") { // from class: com.amazon.ags.client.player.PlayerClientImpl.2
                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public JSONObject buildRequest() throws JSONException {
                    JSONObject request = new JSONObject();
                    request.put(ServiceActionCode.ACTION_CODE_KEY, 19);
                    return request;
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public RequestFriendIdsResponse convertResponse(JSONObject response) throws JSONException {
                    int responseCode = response.getInt("RESPONSE_CODE");
                    JSONArray friendsArray = response.optJSONArray(ProfilesBindingKeys.FRIENDS_KEY);
                    List<String> friends = new ArrayList<>();
                    if (friendsArray != null) {
                        for (int i = 0; i < friendsArray.length(); i++) {
                            friends.add(friendsArray.getString(i));
                        }
                    }
                    return new RequestFriendIdsResponseImpl(friends, responseCode);
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public RequestFriendIdsResponse getFailureResponse(int responseCode, JSONObject response) {
                    Log.e(PlayerClientImpl.TAG, "Request friends failure response: " + response);
                    return new RequestFriendIdsResponseImpl((List<String>) null, responseCode);
                }
            }.execute(userData);
        }
        AGResponseHandleImpl<RequestFriendIdsResponse> emptyHandle = new AGResponseHandleImpl<>(userData);
        emptyHandle.setResponse(new RequestFriendIdsResponseImpl(29, ErrorCode.UNRECOVERABLE));
        Log.w(TAG, "getFriendIds called before AmazonGamesClient initialized; returning empty response");
        return emptyHandle;
    }

    public static void notifySignedInListener(boolean isSignedIn) {
        if (signedInListener != null) {
            signedInListener.onSignedInStateChange(isSignedIn);
        }
        try {
            if (AGSJniHandler.isLibraryLoaded()) {
                ProfilesJni.callSignedInStateChangedListener(isSignedIn);
            }
        } catch (Throwable throwable) {
            Log.e(TAG, "Error in calling signed in listener: " + throwable.toString());
        }
    }

    @Override // com.amazon.ags.api.player.PlayerClient
    public void setSignedInListener(AGSignedInListener listener) {
        signedInListener = listener;
    }

    @Override // com.amazon.ags.api.player.PlayerClient
    public boolean isSignedIn() {
        return !this.globalState.isGuestMode();
    }

    @Override // com.amazon.ags.api.player.PlayerClient
    public AGResponseHandle<RequestFriendsResponse> getBatchFriends(final List<String> playerIds, Object... userData) {
        if (!isClientReady() || playerIds == null || playerIds.isEmpty()) {
            AGResponseHandleImpl<RequestFriendsResponse> emptyHandle = new AGResponseHandleImpl<>(userData);
            emptyHandle.setResponse(new RequestFriendsResponseImpl(29, ErrorCode.UNRECOVERABLE));
            if (playerIds == null) {
                Log.w(TAG, "getBatchFriends called with null playerIds; returning empty response");
                return emptyHandle;
            }
            if (playerIds.isEmpty()) {
                Log.w(TAG, "getBatchFriends called with empty playerIds; returning empty response");
                return emptyHandle;
            }
            Log.w(TAG, "getBatchFriends called before AmazonGamesClient initialized; returning empty response");
            return emptyHandle;
        }
        return new ClientBase.AsyncTaskWrapper<RequestFriendsResponse>("Get Local Player Friends") { // from class: com.amazon.ags.client.player.PlayerClientImpl.3
            @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
            public JSONObject buildRequest() throws JSONException {
                JSONObject request = new JSONObject();
                JSONArray playerIdArray = new JSONArray((Collection) playerIds);
                request.put(ServiceActionCode.ACTION_CODE_KEY, 20);
                request.put(ProfilesBindingKeys.FRIENDS_PLAYER_IDS_KEY, playerIdArray);
                return request;
            }

            @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
            public RequestFriendsResponse convertResponse(JSONObject response) throws JSONException {
                int responseCode = response.getInt("RESPONSE_CODE");
                List<Player> friendProfiles = new ArrayList<>();
                JSONArray friendsArray = response.optJSONArray(ProfilesBindingKeys.FRIENDS_PROFILES_KEY);
                if (friendsArray != null) {
                    for (int i = 0; i < friendsArray.length(); i++) {
                        JSONObject friend = friendsArray.getJSONObject(i);
                        String friendPlayerId = friend.optString("playerId", null);
                        String friendAlias = friend.optString(ProfilesBindingKeys.ALIAS_KEY, null);
                        String friendAvatarUrl = friend.optString(ProfilesBindingKeys.AVATAR_URL_KEY, null);
                        Player friendPlayerProfile = new PlayerImpl(friendPlayerId, friendAlias, friendAvatarUrl);
                        friendProfiles.add(friendPlayerProfile);
                    }
                }
                return new RequestFriendsResponseImpl(friendProfiles, responseCode);
            }

            @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
            public RequestFriendsResponse getFailureResponse(int responseCode, JSONObject response) {
                Log.e(PlayerClientImpl.TAG, "Request friends failure response: " + response);
                return new RequestFriendsResponseImpl((List<Player>) null, responseCode);
            }
        }.execute(userData);
    }
}

package com.amazon.ags.client.achievements;

import android.util.Log;
import com.amazon.ags.api.AGResponseHandle;
import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.RequestResponse;
import com.amazon.ags.api.achievements.Achievement;
import com.amazon.ags.api.achievements.AchievementsClient;
import com.amazon.ags.api.achievements.GetAchievementResponse;
import com.amazon.ags.api.achievements.GetAchievementsResponse;
import com.amazon.ags.api.achievements.UpdateProgressResponse;
import com.amazon.ags.client.AGResponseHandleImpl;
import com.amazon.ags.client.ClientBase;
import com.amazon.ags.client.OverlayClient;
import com.amazon.ags.client.RequestResponseImpl;
import com.amazon.ags.constants.AchievementsBindingKeys;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.ServiceActionCode;
import com.amazon.ags.html5.service.ServiceHelper;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AchievementsClientImpl extends ClientBase implements AchievementsClient {
    private OverlayClient overlayClient;

    public AchievementsClientImpl() {
    }

    public AchievementsClientImpl(ServiceHelper serviceHelper, OverlayClient overlayClient) {
        super(serviceHelper);
        this.overlayClient = overlayClient;
    }

    public void shutdown() {
        this.isReady = false;
        this.overlayClient = null;
    }

    public void setOverlayClient(OverlayClient overlayClient) {
        this.overlayClient = overlayClient;
    }

    @Override // com.amazon.ags.api.achievements.AchievementsClient
    public AGResponseHandle<GetAchievementsResponse> getAchievementsForPlayer(final String playerId, Object... userData) {
        if (isClientReady()) {
            return new ClientBase.AsyncTaskWrapper<GetAchievementsResponse>("Get Achievements") { // from class: com.amazon.ags.client.achievements.AchievementsClientImpl.1
                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public JSONObject buildRequest() throws JSONException {
                    JSONObject request = new JSONObject();
                    request.put(ServiceActionCode.ACTION_CODE_KEY, 17);
                    request.put("playerId", playerId);
                    return request;
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public GetAchievementsResponse convertResponse(JSONObject response) throws JSONException {
                    int responseCode = response.getInt("RESPONSE_CODE");
                    JSONArray achievementsJSON = response.getJSONArray(AchievementsBindingKeys.ACHIEVEMENT_LIST_KEY);
                    List<Achievement> achievements = new ArrayList<>(achievementsJSON.length());
                    for (int i = 0; i < achievementsJSON.length(); i++) {
                        Object value = achievementsJSON.get(i);
                        if (value instanceof JSONObject) {
                            achievements.add(AchievementsClientImpl.convertToAchievement((JSONObject) value));
                        }
                    }
                    return new GetAchievementsResponseImpl(achievements, responseCode);
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public GetAchievementsResponse getFailureResponse(int responseCode, JSONObject response) {
                    return new GetAchievementsResponseImpl(24, ErrorCode.UNRECOVERABLE);
                }
            }.execute(userData);
        }
        AGResponseHandleImpl<GetAchievementsResponse> emptyHandle = new AGResponseHandleImpl<>(userData);
        emptyHandle.setResponse(new GetAchievementsResponseImpl(29, ErrorCode.UNRECOVERABLE));
        Log.w(this.TAG, "getAchievements called before AmazonGamesClient initialized; returning empty response");
        return emptyHandle;
    }

    @Override // com.amazon.ags.api.achievements.AchievementsClient
    public AGResponseHandle<GetAchievementsResponse> getAchievements(Object... userData) {
        return getAchievementsForPlayer(NativeCallKeys.SELF_PLAYER_ID, userData);
    }

    @Override // com.amazon.ags.api.achievements.AchievementsClient
    public AGResponseHandle<GetAchievementResponse> getAchievementForPlayer(final String achievementId, final String playerId, Object... userData) {
        if (isClientReady()) {
            return new ClientBase.AsyncTaskWrapper<GetAchievementResponse>("Get Achievement") { // from class: com.amazon.ags.client.achievements.AchievementsClientImpl.2
                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public JSONObject buildRequest() throws JSONException {
                    JSONObject request = new JSONObject();
                    request.put(ServiceActionCode.ACTION_CODE_KEY, 12);
                    request.put(AchievementsBindingKeys.ACHIEVEMENT_ID_KEY, achievementId);
                    request.put("playerId", playerId);
                    return request;
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public GetAchievementResponse convertResponse(JSONObject response) throws JSONException {
                    int responseCode = response.getInt("RESPONSE_CODE");
                    return new GetAchievementResponseImpl(AchievementsClientImpl.convertToAchievement(response), responseCode);
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public GetAchievementResponse getFailureResponse(int responseCode, JSONObject response) {
                    return new GetAchievementResponseImpl(24, ErrorCode.UNRECOVERABLE);
                }
            }.execute(userData);
        }
        AGResponseHandleImpl<GetAchievementResponse> emptyHandle = new AGResponseHandleImpl<>(userData);
        emptyHandle.setResponse(new GetAchievementResponseImpl(29, ErrorCode.UNRECOVERABLE));
        Log.w(this.TAG, "getAchievement called before AmazonGamesClient initialized; returning empty response");
        return emptyHandle;
    }

    @Override // com.amazon.ags.api.achievements.AchievementsClient
    public AGResponseHandle<GetAchievementResponse> getAchievement(String achievementId, Object... userData) {
        return getAchievementForPlayer(achievementId, NativeCallKeys.SELF_PLAYER_ID, userData);
    }

    public static Achievement convertToAchievement(JSONObject data) throws JSONException {
        Date dateUnlocked;
        String id = data.getString(AchievementsBindingKeys.ACHIEVEMENT_ID_KEY);
        String title = data.getString(AchievementsBindingKeys.ACHIEVEMENT_TITLE_KEY);
        String description = data.getString(AchievementsBindingKeys.ACHIEVEMENT_DESCRIPTION_KEY);
        int pointValue = data.getInt(AchievementsBindingKeys.ACHIEVEMENT_POINTS_KEY);
        boolean hidden = data.getBoolean(AchievementsBindingKeys.ACHIEVEMENT_HIDDEN_KEY);
        boolean unlocked = data.getBoolean(AchievementsBindingKeys.ACHIEVEMENT_UNLOCKED_KEY);
        float progress = (float) data.getDouble(AchievementsBindingKeys.ACHIEVEMENT_UPDATE_PERCENT_KEY);
        int position = data.getInt(AchievementsBindingKeys.ACHIEVEMENT_POSITION_KEY);
        long dateUnlockedLong = data.getLong(AchievementsBindingKeys.ACHIEVEMENT_DATE_UNLOCKED_KEY);
        String imageURL = data.optString(AchievementsBindingKeys.ACHIEVEMENT_ICON_URL_LARGE_KEY, null);
        if (!unlocked || dateUnlockedLong == 0) {
            dateUnlocked = null;
        } else {
            dateUnlocked = new Date(dateUnlockedLong);
        }
        return new AchievementImpl(id, title, description, pointValue, hidden, unlocked, progress, position, dateUnlocked, imageURL);
    }

    @Override // com.amazon.ags.api.achievements.AchievementsClient
    public AGResponseHandle<UpdateProgressResponse> updateProgress(final String achievementId, final float percentComplete, Object... userData) {
        if (isClientReady()) {
            return new ClientBase.AsyncTaskWrapper<UpdateProgressResponse>("Update Achievement Progress") { // from class: com.amazon.ags.client.achievements.AchievementsClientImpl.3
                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public JSONObject buildRequest() throws JSONException {
                    JSONObject request = new JSONObject();
                    request.put(ServiceActionCode.ACTION_CODE_KEY, 13);
                    request.put(AchievementsBindingKeys.ACHIEVEMENT_ID_KEY, achievementId);
                    request.put(AchievementsBindingKeys.ACHIEVEMENT_UPDATE_PERCENT_KEY, percentComplete);
                    return request;
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public UpdateProgressResponse convertResponse(JSONObject response) throws JSONException {
                    int responseCode = response.getInt("RESPONSE_CODE");
                    boolean isNewlyUnlocked = response.getBoolean(AchievementsBindingKeys.ACHIEVEMENT_NEWLY_UNLOCKED_KEY);
                    return new UpdateProgressResponseImpl(isNewlyUnlocked, responseCode);
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public UpdateProgressResponse getFailureResponse(int responseCode, JSONObject response) {
                    return new UpdateProgressResponseImpl(24, ErrorCode.UNRECOVERABLE);
                }
            }.execute(userData);
        }
        AGResponseHandleImpl<UpdateProgressResponse> emptyHandle = new AGResponseHandleImpl<>(userData);
        emptyHandle.setResponse(new UpdateProgressResponseImpl(29, ErrorCode.UNRECOVERABLE));
        Log.w(this.TAG, "updateProgress called before AmazonGamesClient initialized; returning empty response");
        return emptyHandle;
    }

    @Override // com.amazon.ags.api.achievements.AchievementsClient
    public AGResponseHandle<RequestResponse> showAchievementsOverlay(Object... userData) {
        if (this.overlayClient != null) {
            return this.overlayClient.showAchievementsOverlay(userData);
        }
        AGResponseHandleImpl<RequestResponse> emptyHandle = new AGResponseHandleImpl<>(userData);
        emptyHandle.setResponse(new RequestResponseImpl(29, ErrorCode.UNRECOVERABLE));
        Log.w(this.TAG, "showAchievementsOverlay called before AmazonGamesClient initialized; returning empty response");
        return emptyHandle;
    }
}

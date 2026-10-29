package com.amazon.ags.client.leaderboards;

import android.util.Log;
import com.amazon.ags.api.AGResponseHandle;
import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.RequestResponse;
import com.amazon.ags.api.leaderboards.GetLeaderboardPercentilesResponse;
import com.amazon.ags.api.leaderboards.GetLeaderboardsResponse;
import com.amazon.ags.api.leaderboards.GetPlayerScoreResponse;
import com.amazon.ags.api.leaderboards.GetScoresResponse;
import com.amazon.ags.api.leaderboards.Leaderboard;
import com.amazon.ags.api.leaderboards.LeaderboardPercentileItem;
import com.amazon.ags.api.leaderboards.LeaderboardsClient;
import com.amazon.ags.api.leaderboards.Score;
import com.amazon.ags.api.leaderboards.SubmitScoreResponse;
import com.amazon.ags.api.player.Player;
import com.amazon.ags.client.AGResponseHandleImpl;
import com.amazon.ags.client.ClientBase;
import com.amazon.ags.client.OverlayClient;
import com.amazon.ags.client.RequestResponseImpl;
import com.amazon.ags.client.player.PlayerImpl;
import com.amazon.ags.constants.LeaderboardBindingKeys;
import com.amazon.ags.constants.LeaderboardFilter;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.ProfilesBindingKeys;
import com.amazon.ags.constants.ScoreFormat;
import com.amazon.ags.constants.ServiceActionCode;
import com.amazon.ags.constants.SubmitScoreResultJSONKeys;
import com.amazon.ags.html5.service.ServiceHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class LeaderboardsClientImpl extends ClientBase implements LeaderboardsClient {
    private static final String UNKNOWN_VALUE = "UNKNOWN";
    private OverlayClient overlayClient;

    public LeaderboardsClientImpl() {
    }

    public LeaderboardsClientImpl(ServiceHelper serviceHelper, OverlayClient overlayClient) {
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

    @Override // com.amazon.ags.api.leaderboards.LeaderboardsClient
    public AGResponseHandle<GetLeaderboardsResponse> getLeaderboards(Object... userData) {
        if (isClientReady()) {
            return new ClientBase.AsyncTaskWrapper<GetLeaderboardsResponse>("Get Leaderboards") { // from class: com.amazon.ags.client.leaderboards.LeaderboardsClientImpl.1
                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public JSONObject buildRequest() throws JSONException {
                    JSONObject request = new JSONObject();
                    request.put(ServiceActionCode.ACTION_CODE_KEY, 9);
                    return request;
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public GetLeaderboardsResponse convertResponse(JSONObject response) throws JSONException {
                    int responseCode = response.getInt("RESPONSE_CODE");
                    JSONArray leaderboardsJSON = response.getJSONArray(LeaderboardBindingKeys.LEADERBOARD_LIST_KEY);
                    List<Leaderboard> achievements = new ArrayList<>(leaderboardsJSON.length());
                    for (int i = 0; i < leaderboardsJSON.length(); i++) {
                        Object value = leaderboardsJSON.get(i);
                        if (value instanceof JSONObject) {
                            achievements.add(LeaderboardsClientImpl.convertToLeaderboard((JSONObject) value));
                        }
                    }
                    return new GetLeaderboardsResponseImpl(achievements, responseCode);
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public GetLeaderboardsResponse getFailureResponse(int responseCode, JSONObject response) {
                    return new GetLeaderboardsResponseImpl(24, ErrorCode.UNRECOVERABLE);
                }
            }.execute(userData);
        }
        AGResponseHandleImpl<GetLeaderboardsResponse> emptyHandle = new AGResponseHandleImpl<>(userData);
        emptyHandle.setResponse(new GetLeaderboardsResponseImpl(29, ErrorCode.UNRECOVERABLE));
        Log.w(this.TAG, "getLeaderboards called before AmazonGamesClient initialized; returning empty response");
        return emptyHandle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Leaderboard convertToLeaderboard(JSONObject data) throws JSONException {
        String id = data.getString(LeaderboardBindingKeys.LEADERBOARD_ID_KEY);
        String name = data.getString(LeaderboardBindingKeys.LEADERBOARD_NAME_KEY);
        String imageURL = data.optString(LeaderboardBindingKeys.LEADERBOARD_ICON_URL_KEY, null);
        String display = data.getString(LeaderboardBindingKeys.LEADERBOARD_DISPLAY_TEXT_KEY);
        String format = data.getString(LeaderboardBindingKeys.LEADERBOARD_DATA_FORMAT_KEY);
        if (display == null) {
            display = UNKNOWN_VALUE;
        }
        if (format == null) {
            format = ScoreFormat.UNKNOWN.toString();
        }
        ScoreFormat scoreFormat = ScoreFormat.valueOf(format);
        return new LeaderboardImpl(id, name, display, scoreFormat, imageURL);
    }

    @Override // com.amazon.ags.api.leaderboards.LeaderboardsClient
    public AGResponseHandle<SubmitScoreResponse> submitScore(final String leaderboardId, final long score, Object... userData) {
        if (isClientReady()) {
            return new ClientBase.AsyncTaskWrapper<SubmitScoreResponse>("Submit Score") { // from class: com.amazon.ags.client.leaderboards.LeaderboardsClientImpl.2
                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public JSONObject buildRequest() throws JSONException {
                    JSONObject request = new JSONObject();
                    request.put(ServiceActionCode.ACTION_CODE_KEY, 8);
                    request.put(LeaderboardBindingKeys.LEADERBOARD_ID_KEY, leaderboardId);
                    request.put(LeaderboardBindingKeys.LEADERBOARD_SUBMIT_SCORE_KEY, score);
                    return request;
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public SubmitScoreResponse convertResponse(JSONObject response) throws JSONException {
                    int responseCode = response.getInt("RESPONSE_CODE");
                    Map<LeaderboardFilter, Boolean> improved = new HashMap<>();
                    Map<LeaderboardFilter, Integer> ranks = new HashMap<>();
                    try {
                        if (response.has(LeaderboardBindingKeys.LEADERBOARD_SUBMIT_RESULT_KEY)) {
                            JSONArray submitResult = response.getJSONArray(LeaderboardBindingKeys.LEADERBOARD_SUBMIT_RESULT_KEY);
                            for (int i = 0; i < submitResult.length(); i++) {
                                Object resultObj = submitResult.get(i);
                                if (!(resultObj instanceof JSONObject)) {
                                    Log.w(LeaderboardsClientImpl.this.TAG, "Unexpected type " + resultObj.getClass() + ", skipping this Submit Score Result Element");
                                } else {
                                    JSONObject result = (JSONObject) resultObj;
                                    String filterString = result.getString("Scope");
                                    LeaderboardFilter filter = LeaderboardFilter.valueOf(filterString);
                                    if (filter == null) {
                                        Log.w(LeaderboardsClientImpl.this.TAG, "Invalid filter returned from service: " + filterString);
                                    } else {
                                        improved.put(filter, Boolean.valueOf(result.getBoolean(SubmitScoreResultJSONKeys.IS_IMPROVED)));
                                        ranks.put(filter, Integer.valueOf(result.getInt(SubmitScoreResultJSONKeys.PLAYER_RANK)));
                                    }
                                }
                            }
                        }
                    } catch (JSONException e) {
                        Log.w(LeaderboardsClientImpl.this.TAG, "Caught JSON Exception, skipping Submit Score Result Element(s)", e);
                    }
                    return new SubmitScoreResponseImpl(improved, ranks, responseCode);
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public SubmitScoreResponse getFailureResponse(int responseCode, JSONObject response) {
                    return new SubmitScoreResponseImpl(24, ErrorCode.UNRECOVERABLE);
                }
            }.execute(userData);
        }
        AGResponseHandleImpl<SubmitScoreResponse> emptyHandle = new AGResponseHandleImpl<>(userData);
        emptyHandle.setResponse(new SubmitScoreResponseImpl(29, ErrorCode.UNRECOVERABLE));
        Log.w(this.TAG, "submitScore called before AmazonGamesClient initialized; returning empty response");
        return emptyHandle;
    }

    @Override // com.amazon.ags.api.leaderboards.LeaderboardsClient
    public AGResponseHandle<GetScoresResponse> getScores(final String leaderboardId, final LeaderboardFilter filter, Object... userData) {
        if (isClientReady()) {
            return new ClientBase.AsyncTaskWrapper<GetScoresResponse>("Get Local Player Score") { // from class: com.amazon.ags.client.leaderboards.LeaderboardsClientImpl.3
                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public JSONObject buildRequest() throws JSONException {
                    JSONObject request = new JSONObject();
                    request.put(ServiceActionCode.ACTION_CODE_KEY, 7);
                    request.put(LeaderboardBindingKeys.LEADERBOARD_ID_KEY, leaderboardId);
                    request.put(LeaderboardBindingKeys.LEADERBOARD_FILTER_KEY, filter.name());
                    return request;
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public GetScoresResponse convertResponse(JSONObject response) throws JSONException {
                    int responseCode = response.getInt("RESPONSE_CODE");
                    String displayText = response.getString(LeaderboardBindingKeys.LEADERBOARD_DISPLAY_TEXT_KEY);
                    String name = response.getString(LeaderboardBindingKeys.LEADERBOARD_NAME_KEY);
                    String uniqueId = response.getString(LeaderboardBindingKeys.LEADERBOARD_ID_KEY);
                    String format = response.getString(LeaderboardBindingKeys.LEADERBOARD_DATA_FORMAT_KEY);
                    String imageUrl = response.getString(LeaderboardBindingKeys.LEADERBOARD_ICON_URL_KEY);
                    ScoreFormat scoreFormat = ScoreFormat.valueOf(format);
                    JSONArray scoreListJson = response.getJSONArray(LeaderboardBindingKeys.LEADERBOARD_SCORES_ARRAY_KEY);
                    Score[] scores = new Score[scoreListJson.length()];
                    for (int i = 0; i < scoreListJson.length(); i++) {
                        Object value = scoreListJson.get(i);
                        if (value instanceof JSONObject) {
                            scores[i] = LeaderboardsClientImpl.this.convertToScore((JSONObject) value, scoreFormat);
                        }
                    }
                    return new GetScoresResponseImpl(scores, displayText, scoreFormat, name, uniqueId, responseCode, imageUrl);
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public GetScoresResponse getFailureResponse(int responseCode, JSONObject response) {
                    return new GetScoresResponseImpl(24, ErrorCode.UNRECOVERABLE);
                }
            }.execute(userData);
        }
        AGResponseHandleImpl<GetScoresResponse> emptyHandle = new AGResponseHandleImpl<>(userData);
        emptyHandle.setResponse(new GetScoresResponseImpl(29, ErrorCode.UNRECOVERABLE));
        Log.w(this.TAG, "getScores called before AmazonGamesClient initialized; returning empty response");
        return emptyHandle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Score convertToScore(JSONObject json, ScoreFormat scoreFormat) throws JSONException {
        long scoreValue = json.getLong(LeaderboardBindingKeys.LEADERBOARD_SCORE_VALUE_KEY);
        int rank = json.getInt(LeaderboardBindingKeys.LEADERBOARD_SCORE_RANK_KEY);
        String leaderboard = json.getString(LeaderboardBindingKeys.LEADERBOARD_KEY);
        String playerAlias = json.getString(ProfilesBindingKeys.ALIAS_KEY);
        String playerId = json.getString("playerId");
        String playerAvatarUrl = json.getString(ProfilesBindingKeys.AVATAR_URL_KEY);
        Player player = new PlayerImpl(playerId, playerAlias, playerAvatarUrl);
        return new ScoreImpl(scoreValue, player, rank, leaderboard, scoreFormat);
    }

    @Override // com.amazon.ags.api.leaderboards.LeaderboardsClient
    public AGResponseHandle<GetPlayerScoreResponse> getLocalPlayerScore(String leaderboardId, LeaderboardFilter filter, Object... userData) {
        return getScoreForPlayer(leaderboardId, NativeCallKeys.SELF_PLAYER_ID, filter, userData);
    }

    @Override // com.amazon.ags.api.leaderboards.LeaderboardsClient
    public AGResponseHandle<GetPlayerScoreResponse> getScoreForPlayer(final String leaderboardId, final String playerId, final LeaderboardFilter filter, Object... userData) {
        if (!isClientReady() || leaderboardId == null || playerId == null) {
            AGResponseHandleImpl<GetPlayerScoreResponse> emptyHandle = new AGResponseHandleImpl<>(userData);
            emptyHandle.setResponse(new GetPlayerScoreResponseImpl(29, ErrorCode.UNRECOVERABLE));
            if (leaderboardId == null) {
                Log.w(this.TAG, "getPlayerScore called with null leaderboard ID; returning empty response");
                return emptyHandle;
            }
            if (playerId == null) {
                Log.w(this.TAG, "getPlayerScore called with null player ID; returning empty response");
                return emptyHandle;
            }
            Log.w(this.TAG, "getPlayerScore called before AmazonGamesClient initialized; returning empty response");
            return emptyHandle;
        }
        return new ClientBase.AsyncTaskWrapper<GetPlayerScoreResponse>("Get Local Player Score") { // from class: com.amazon.ags.client.leaderboards.LeaderboardsClientImpl.4
            @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
            public JSONObject buildRequest() throws JSONException {
                JSONObject request = new JSONObject();
                request.put(ServiceActionCode.ACTION_CODE_KEY, 10);
                request.put(LeaderboardBindingKeys.LEADERBOARD_ID_KEY, leaderboardId);
                request.put("playerId", playerId);
                request.put(LeaderboardBindingKeys.LEADERBOARD_FILTER_KEY, filter.name());
                return request;
            }

            @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
            public GetPlayerScoreResponse convertResponse(JSONObject response) throws JSONException {
                int responseCode = response.getInt("RESPONSE_CODE");
                long score = LeaderboardsClientImpl.this.getLong(response, LeaderboardBindingKeys.LEADERBOARD_SUBMIT_SCORE_KEY, 0L);
                int rank = LeaderboardsClientImpl.this.getInt(response, LeaderboardBindingKeys.LEADERBOARD_PLAYER_RANK_KEY, -1);
                return new GetPlayerScoreResponseImpl(score, rank, responseCode);
            }

            @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
            public GetPlayerScoreResponse getFailureResponse(int responseCode, JSONObject response) {
                return new GetPlayerScoreResponseImpl(24, ErrorCode.UNRECOVERABLE);
            }
        }.execute(userData);
    }

    @Override // com.amazon.ags.api.leaderboards.LeaderboardsClient
    public AGResponseHandle<GetLeaderboardPercentilesResponse> getPercentileRanks(String leaderboardId, LeaderboardFilter filter, Object... userData) {
        return getPercentileRanksForPlayer(leaderboardId, NativeCallKeys.SELF_PLAYER_ID, filter, userData);
    }

    @Override // com.amazon.ags.api.leaderboards.LeaderboardsClient
    public AGResponseHandle<GetLeaderboardPercentilesResponse> getPercentileRanksForPlayer(final String leaderboardId, final String playerId, final LeaderboardFilter filter, Object... userData) {
        if (!isClientReady() || leaderboardId == null || playerId == null) {
            AGResponseHandleImpl<GetLeaderboardPercentilesResponse> emptyHandle = new AGResponseHandleImpl<>(userData);
            emptyHandle.setResponse(new GetLeaderboardPercentilesResponseImpl(29, ErrorCode.UNRECOVERABLE));
            if (leaderboardId == null) {
                Log.w(this.TAG, "getPercentileRanks called with null leaderboard ID; returning empty response");
                return emptyHandle;
            }
            if (playerId == null) {
                Log.w(this.TAG, "getPercentileRanks called with null player ID; returning empty response");
                return emptyHandle;
            }
            Log.w(this.TAG, "getPercentileRanks called before AmazonGamesClient initialized; returning empty response");
            return emptyHandle;
        }
        return new ClientBase.AsyncTaskWrapper<GetLeaderboardPercentilesResponse>("Get Local Player Score") { // from class: com.amazon.ags.client.leaderboards.LeaderboardsClientImpl.5
            @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
            public JSONObject buildRequest() throws JSONException {
                JSONObject request = new JSONObject();
                request.put(ServiceActionCode.ACTION_CODE_KEY, 31);
                request.put(LeaderboardBindingKeys.LEADERBOARD_ID_KEY, leaderboardId);
                request.put("playerId", playerId);
                request.put(LeaderboardBindingKeys.LEADERBOARD_FILTER_KEY, filter.name());
                return request;
            }

            @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
            public GetLeaderboardPercentilesResponse convertResponse(JSONObject response) throws JSONException {
                int responseCode = response.getInt("RESPONSE_CODE");
                String leaderboardId2 = response.getString(LeaderboardBindingKeys.LEADERBOARD_ID_KEY);
                String leaderboardName = response.getString(LeaderboardBindingKeys.LEADERBOARD_NAME_KEY);
                String leaderboardDisplayText = response.getString(LeaderboardBindingKeys.LEADERBOARD_DISPLAY_TEXT_KEY);
                String format = response.getString(LeaderboardBindingKeys.LEADERBOARD_DATA_FORMAT_KEY);
                int userIndex = response.getInt(LeaderboardBindingKeys.LEADERBOARD_USER_INDEX_KEY);
                String imageURL = response.optString(LeaderboardBindingKeys.LEADERBOARD_ICON_URL_KEY, null);
                if (format == null) {
                    format = ScoreFormat.UNKNOWN.toString();
                }
                ScoreFormat scoreFormat = ScoreFormat.valueOf(format);
                JSONArray percentileListJson = response.getJSONArray(LeaderboardBindingKeys.LEADERBOARD_PERCENTILES_ARRAY_KEY);
                List<LeaderboardPercentileItem> percentileList = new ArrayList<>(percentileListJson.length());
                for (int i = 0; i < percentileListJson.length(); i++) {
                    Object value = percentileListJson.get(i);
                    if (value instanceof JSONObject) {
                        String playerID = ((JSONObject) value).optString(LeaderboardBindingKeys.LEADERBOARD_PERCENTILE_PLAYER_ID_KEY);
                        String alias = ((JSONObject) value).optString(LeaderboardBindingKeys.LEADERBOARD_PERCENTILE_PLAYER_NAME_KEY);
                        String avatarUrl = ((JSONObject) value).optString(LeaderboardBindingKeys.LEADERBOARD_PERCENTILE_PLAYER_AVATAR_URL_KEY);
                        Player player = new PlayerImpl(playerID, alias, avatarUrl);
                        long score = ((JSONObject) value).getLong(LeaderboardBindingKeys.LEADERBOARD_PERCENTILE_PLAYER_SCORE_KEY);
                        int percentile = ((JSONObject) value).getInt(LeaderboardBindingKeys.LEADERBOARD_PERCENTILE_KEY);
                        LeaderboardPercentileItem percentileItem = new LeaderboardPercentileItemImpl(player, score, percentile);
                        percentileList.add(percentileItem);
                    }
                }
                Leaderboard leaderboard = new LeaderboardImpl(leaderboardId2, leaderboardName, leaderboardDisplayText, scoreFormat, imageURL);
                return new GetLeaderboardPercentilesResponseImpl(leaderboard, percentileList, userIndex, responseCode);
            }

            @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
            public GetLeaderboardPercentilesResponse getFailureResponse(int responseCode, JSONObject response) {
                return new GetLeaderboardPercentilesResponseImpl(24, ErrorCode.UNRECOVERABLE);
            }
        }.execute(userData);
    }

    @Override // com.amazon.ags.api.leaderboards.LeaderboardsClient
    public AGResponseHandle<RequestResponse> showLeaderboardsOverlay(Object... userData) {
        if (this.overlayClient != null) {
            return this.overlayClient.showLeaderboardsOverlay(userData);
        }
        AGResponseHandleImpl<RequestResponse> emptyHandle = new AGResponseHandleImpl<>(userData);
        emptyHandle.setResponse(new RequestResponseImpl(29, ErrorCode.UNRECOVERABLE));
        Log.w(this.TAG, "showLeaderboardsOverlay called before AmazonGamesClient initialized; returning empty response");
        return emptyHandle;
    }

    @Override // com.amazon.ags.api.leaderboards.LeaderboardsClient
    public AGResponseHandle<RequestResponse> showLeaderboardOverlay(String leaderboardId, Object... userData) {
        if (this.overlayClient != null) {
            return this.overlayClient.showLeaderboardOverlay(leaderboardId, userData);
        }
        AGResponseHandleImpl<RequestResponse> emptyHandle = new AGResponseHandleImpl<>(userData);
        emptyHandle.setResponse(new RequestResponseImpl(29, ErrorCode.UNRECOVERABLE));
        Log.w(this.TAG, "showLeaderboardOverlay called before AmazonGamesClient initialized; returning empty response");
        return emptyHandle;
    }
}

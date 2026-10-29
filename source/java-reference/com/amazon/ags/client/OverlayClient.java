package com.amazon.ags.client;

import com.amazon.ags.api.AGResponseHandle;
import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.RequestResponse;
import com.amazon.ags.constants.LeaderboardBindingKeys;
import com.amazon.ags.constants.ServiceActionCode;
import com.amazon.ags.html5.service.ServiceHelper;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class OverlayClient extends ClientBase {
    public OverlayClient(ServiceHelper serviceHelper) {
        super(serviceHelper);
    }

    private ClientBase.AsyncTaskWrapper<RequestResponse> showOverlayPage(String description, Object pageCode) {
        return showOverlayPage(description, pageCode, Collections.emptyMap());
    }

    private ClientBase.AsyncTaskWrapper<RequestResponse> showOverlayPage(String description, final Object pageCode, final Map<Object, Object> requestParams) {
        return new ClientBase.AsyncTaskWrapper<RequestResponse>(description) { // from class: com.amazon.ags.client.OverlayClient.1
            @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
            public JSONObject buildRequest() throws JSONException {
                JSONObject request = new JSONObject();
                request.put(ServiceActionCode.ACTION_CODE_KEY, pageCode);
                for (Map.Entry<Object, Object> entry : requestParams.entrySet()) {
                    request.put((String) entry.getKey(), entry.getValue());
                }
                return request;
            }

            @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
            public RequestResponse convertResponse(JSONObject response) throws JSONException {
                return new RequestResponseImpl(17);
            }

            @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
            public RequestResponse getFailureResponse(int responseCode, JSONObject response) {
                return new RequestResponseImpl(24, ErrorCode.UNRECOVERABLE);
            }
        };
    }

    public AGResponseHandle<RequestResponse> showGameCircle(Object... userData) {
        return showOverlayPage("Show Game Circle", ServiceActionCode.SHOW_GAME_CIRCLE).execute(userData);
    }

    public AGResponseHandle<RequestResponse> showSignInPage(Object... userData) {
        return showOverlayPage("Show Sign In Overlay", ServiceActionCode.SHOW_SIGN_IN_PAGE).execute(userData);
    }

    public AGResponseHandle<RequestResponse> showAchievementsOverlay(Object... userData) {
        return showOverlayPage("Show Achievements Overlay", 26).execute(userData);
    }

    public AGResponseHandle<RequestResponse> showLeaderboardsOverlay(Object... userData) {
        return showOverlayPage("Show Leaderboards Overlay", 27).execute(userData);
    }

    public AGResponseHandle<RequestResponse> showLeaderboardOverlay(String leaderboardId, Object... userData) {
        Map<Object, Object> requestParameters = new HashMap<>();
        requestParameters.put(LeaderboardBindingKeys.LEADERBOARD_ID_KEY, leaderboardId);
        return showOverlayPage("Show Leaderboard Overlay", 28, requestParameters).execute(userData);
    }
}

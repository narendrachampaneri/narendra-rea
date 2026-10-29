package com.amazon.identity.auth.device.endpoint;

import android.support.v7.media.MediaRouteProviderProtocol;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.InvalidTokenAuthError;
import com.amazon.identity.auth.device.token.Token;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ProfileResponse extends AbstractJSONTokenResponse {
    private static final String LOG_TAG = ProfileResponse.class.getName();
    private JSONObject profileResponse;

    @Override // com.amazon.identity.auth.device.endpoint.AbstractJSONTokenResponse
    protected JSONObject extractResponseJSONObject(JSONObject jsonObject) throws JSONException {
        return jsonObject;
    }

    public ProfileResponse(HttpResponse response) {
        super(response);
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractJSONTokenResponse
    protected void doParse(JSONObject jResponse) throws JSONException, AuthError, IOException {
        this.profileResponse = jResponse;
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractJSONTokenResponse
    public Token createPrimaryToken(String token, long expiresIn) {
        return null;
    }

    public JSONObject getProfileResponse() {
        return this.profileResponse;
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractJSONTokenResponse
    protected void handleJSONError(JSONObject jResponse) throws JSONException, AuthError {
        try {
            String error = jResponse.getString(MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
            if (!TextUtils.isEmpty(error)) {
                String description = jResponse.getString("error_description");
                if (isInsufficientScope(error, description)) {
                    MAPLog.pii(LOG_TAG, "Insufficient scope in token in exchange.", "info=" + jResponse);
                    throw new AuthError("Insufficient Scope. Authorization not valid for the requested scopes", AuthError.ERROR_TYPE.ERROR_INVALID_SCOPE);
                }
                if (isInvalidToken(error, description)) {
                    MAPLog.pii(LOG_TAG, "Invalid Token in exchange.", "info=" + jResponse);
                    throw new InvalidTokenAuthError("Invalid Token in exchange. " + jResponse);
                }
                MAPLog.pii(LOG_TAG, "Server error doing authorization exchange.", "info=" + jResponse);
                throw new AuthError("Server error doing authorization exchange. " + jResponse, AuthError.ERROR_TYPE.ERROR_SERVER_REPSONSE);
            }
        } catch (JSONException e) {
            if (!TextUtils.isEmpty(null)) {
                throw new AuthError("Server Error : " + ((String) null), AuthError.ERROR_TYPE.ERROR_SERVER_REPSONSE);
            }
        }
    }

    private boolean isInsufficientScope(String error, String description) {
        return "insufficient_scope".equals(error);
    }

    private boolean isInvalidToken(String error, String description) {
        return "invalid_token".equals(error) || ("invalid_request".equals(error) && !TextUtils.isEmpty(description) && description.contains("access_token"));
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractJSONTokenResponse
    public String getVersion() {
        return "1.0.0";
    }
}

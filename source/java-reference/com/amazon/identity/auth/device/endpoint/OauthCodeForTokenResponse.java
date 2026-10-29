package com.amazon.identity.auth.device.endpoint;

import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.token.RefreshAtzToken;
import com.amazon.identity.auth.device.utils.MAPLog;
import org.apache.http.HttpResponse;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class OauthCodeForTokenResponse extends OauthTokenResponse {
    static final int ACCESS_TOKEN_INDEX = 0;
    private static final String LOG_TAG = OauthCodeForTokenResponse.class.getName();
    static final int REFRESH_TOKEN_INDEX = 1;

    OauthCodeForTokenResponse(HttpResponse response, String appId) {
        super(response, appId);
        MAPLog.i(LOG_TAG, "Creating OauthCodeForTokenResponse appId=" + appId);
    }

    @Override // com.amazon.identity.auth.device.endpoint.OauthTokenResponse
    boolean isInvalidToken(String error, String description) {
        return false;
    }

    @Override // com.amazon.identity.auth.device.endpoint.OauthTokenResponse
    public RefreshAtzToken extractRefreshAtzToken(JSONObject jResponse) throws AuthError {
        RefreshAtzToken refreshAtzToken = super.extractRefreshAtzToken(jResponse);
        if (refreshAtzToken == null) {
            throw new AuthError("JSON response did not contain an AccessAtzToken", AuthError.ERROR_TYPE.ERROR_JSON);
        }
        return refreshAtzToken;
    }
}

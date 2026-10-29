package com.amazon.identity.auth.device.endpoint;

import android.support.v7.media.MediaRouteProviderProtocol;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.InvalidGrantAuthError;
import com.amazon.identity.auth.device.InvalidTokenAuthError;
import com.amazon.identity.auth.device.dataobject.AuthorizationToken;
import com.amazon.identity.auth.device.token.AbstractToken;
import com.amazon.identity.auth.device.token.AccessAtzToken;
import com.amazon.identity.auth.device.token.RefreshAtzToken;
import com.amazon.identity.auth.device.token.Token;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class OauthTokenResponse extends AbstractJSONTokenResponse {
    static final String AUTHZ_ACCESS_TOKEN = "access_token";
    static final String AUTHZ_ERROR_DESCIRPTION = "error_description";
    static final String AUTHZ_INSUFFICIENT_SCOPE = "insufficient_scope";
    static final String AUTHZ_INVALID_CLIENT = "invalid_client";
    static final String AUTHZ_INVALID_GRANT = "invalid_grant";
    static final String AUTHZ_INVALID_REQUEST = "invalid_request";
    static final String AUTHZ_INVALID_SCOPE = "invalid_scope";
    static final String AUTHZ_INVALID_TOKEN = "invalid_token";
    static final String AUTHZ_UNAUTHORIZED_CLIENT = "unauthorized_client";
    static final String AUTHZ_UNSUPPORTED_GRANT_TYPE = "unsupported_grant_type";
    private static final String LOG_TAG = OauthTokenResponse.class.getName();
    private static final String REQUEST_ID_HEADER = "x-amzn-RequestId";
    protected AccessAtzToken mAccessToken;
    private final String mAppFamilyId;
    private RefreshAtzToken mRefreshToken;

    OauthTokenResponse(HttpResponse response, String appFamilyId) {
        super(response);
        this.mRefreshToken = null;
        this.mAppFamilyId = appFamilyId;
    }

    public void testParse(JSONObject jResponse) throws JSONException, AuthError, IOException {
        doParse(jResponse);
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractJSONTokenResponse
    protected void doParse(JSONObject jResponse) throws JSONException, AuthError, IOException {
        this.mAccessToken = extractAccessAtzToken(jResponse);
        this.mRefreshToken = extractRefreshAtzToken(jResponse);
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractJSONTokenResponse
    public Token createPrimaryToken(String token, long expiresIn) {
        return new AccessAtzToken(this.mAppFamilyId, null, token, expiresIn, null);
    }

    public AccessAtzToken extractAccessAtzToken(JSONObject jResponse) throws AuthError {
        try {
            if (jResponse.has("access_token")) {
                String tokenVal = jResponse.getString("access_token");
                long expiresIn = getExpiresIn(jResponse);
                return (AccessAtzToken) createPrimaryToken(tokenVal, AbstractToken.secsToMillis(expiresIn));
            }
            MAPLog.e(LOG_TAG, "Unable to find AccessAtzToken in JSON response, throwing AuthError");
            throw new AuthError("JSON response did not contain an AccessAtzToken", AuthError.ERROR_TYPE.ERROR_JSON);
        } catch (JSONException e) {
            MAPLog.e(LOG_TAG, "Error reading JSON response, throwing AuthError");
            throw new AuthError("Error reading JSON response", AuthError.ERROR_TYPE.ERROR_JSON);
        }
    }

    public RefreshAtzToken extractRefreshAtzToken(JSONObject jResponse) throws AuthError {
        MAPLog.i(LOG_TAG, "Extracting RefreshToken");
        try {
            if (jResponse.has("refresh_token")) {
                String tokenVal = jResponse.getString("refresh_token");
                return new RefreshAtzToken(getAppFamilyId(), null, tokenVal, null);
            }
            MAPLog.e(LOG_TAG, "Unable to find RefreshAtzToken in JSON response");
            return null;
        } catch (JSONException e) {
            MAPLog.e(LOG_TAG, "Error reading JSON response, throwing AuthError");
            throw new AuthError("Error reading JSON response", AuthError.ERROR_TYPE.ERROR_JSON);
        }
    }

    public String getAppFamilyId() {
        return this.mAppFamilyId;
    }

    public AccessAtzToken getAccessAtzToken() {
        return this.mAccessToken;
    }

    public RefreshAtzToken getRefreshAtzToken() {
        return this.mRefreshToken;
    }

    public AuthorizationToken[] getAtzTokens() {
        return new AuthorizationToken[]{this.mAccessToken, this.mRefreshToken};
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractJSONTokenResponse
    protected JSONObject extractResponseJSONObject(JSONObject jsonObject) throws JSONException {
        try {
            return super.extractResponseJSONObject(jsonObject);
        } catch (JSONException e) {
            MAPLog.w(LOG_TAG, "No Response type in the response");
            return jsonObject;
        }
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractJSONTokenResponse
    protected void handleJSONError(JSONObject jResponse) throws AuthError {
        try {
            String error = jResponse.getString(MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
            if (!TextUtils.isEmpty(error)) {
                String description = jResponse.getString(AUTHZ_ERROR_DESCIRPTION);
                if (isInvalidGrant(error, description)) {
                    MAPLog.pii(LOG_TAG, "Invalid source authorization in exchange.", "info=" + jResponse);
                    throw new InvalidGrantAuthError("Invalid source authorization in exchange." + jResponse);
                }
                if (isInvalidToken(error, description)) {
                    handleInvalidToken(jResponse);
                    return;
                }
                if (isInvalidClient(error, description)) {
                    MAPLog.pii(LOG_TAG, "Invalid Client. ApiKey is invalid ", "info=" + jResponse);
                    throw new AuthError("Invalid Client. ApiKey is invalid " + jResponse, AuthError.ERROR_TYPE.ERROR_INVALID_CLIENT);
                }
                if (isInvalidScope(error, description) || isInsufficientScope(error, description)) {
                    MAPLog.pii(LOG_TAG, "Invalid Scope. Authorization not valid for the requested scopes ", "info=" + jResponse);
                    throw new AuthError("Invalid Scope. Authorization not valid for the requested scopes " + jResponse, AuthError.ERROR_TYPE.ERROR_INVALID_SCOPE);
                }
                if (isUnauthorizedClient(error, description)) {
                    MAPLog.pii(LOG_TAG, "Unauthorizaied Client.  The authenticated client is not authorized to use this authorization grant type. ", "info=" + jResponse);
                    throw new AuthError("Unauthorizaied Client.  The authenticated client is not authorized to use this authorization grant type. " + jResponse, AuthError.ERROR_TYPE.ERROR_UNAUTHORIZED_CLIENT);
                }
                MAPLog.pii(LOG_TAG, "Server error doing authorization exchange. ", "info=" + jResponse);
                throw new AuthError("Server error doing authorization exchange. " + jResponse, AuthError.ERROR_TYPE.ERROR_SERVER_REPSONSE);
            }
        } catch (JSONException e) {
            if (!TextUtils.isEmpty(null)) {
                throw new AuthError("Server Error : " + ((String) null), AuthError.ERROR_TYPE.ERROR_SERVER_REPSONSE);
            }
        }
    }

    boolean isUnauthorizedClient(String error, String description) {
        return AUTHZ_UNAUTHORIZED_CLIENT.equals(error);
    }

    boolean isInvalidScope(String error, String description) {
        return AUTHZ_INVALID_SCOPE.equals(error);
    }

    boolean isInvalidClient(String error, String description) {
        return AUTHZ_INVALID_CLIENT.equals(error);
    }

    boolean isInvalidGrant(String error, String description) {
        return AUTHZ_INVALID_GRANT.equals(error) || AUTHZ_UNSUPPORTED_GRANT_TYPE.equals(error);
    }

    boolean isInsufficientScope(String error, String description) {
        return AUTHZ_INSUFFICIENT_SCOPE.equals(error);
    }

    boolean isInvalidToken(String error, String description) {
        return AUTHZ_INVALID_TOKEN.equals(error) || (AUTHZ_INVALID_REQUEST.equals(error) && !TextUtils.isEmpty(description) && description.contains("access_token"));
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractJSONTokenResponse
    protected void logRequestId(JSONObject jHttpResponse) {
        super.logRequestId(jHttpResponse);
        HttpResponse response = getResponse();
        Header header = response.getFirstHeader(REQUEST_ID_HEADER);
        if (header != null) {
            MAPLog.pii(LOG_TAG, "ExchangeRepsonse", "requestId=" + header.getValue());
        } else {
            MAPLog.e(LOG_TAG, "No RequestId in headers");
        }
    }

    void handleInvalidToken(JSONObject jResponse) throws InvalidTokenAuthError {
        MAPLog.pii(LOG_TAG, "Invalid Token in exchange.", "info=" + jResponse);
        throw new InvalidTokenAuthError("Invalid Token in exchange." + jResponse);
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractJSONTokenResponse
    public String getVersion() {
        return "1.0.0";
    }
}

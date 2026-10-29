package com.amazon.identity.auth.device.endpoint;

import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.InvalidTokenAuthError;
import com.amazon.identity.auth.device.token.Token;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.amazon.identity.auth.device.utils.MAPVersionInfo;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractJSONTokenResponse implements TokenResponse {
    public static final String ACCESS_TOKEN = "access_token";
    protected static final String COOKIE = "cookie";
    public static final String EXPIRES_IN = "expires_in";
    protected static final String FORCE_UPDATE = "force_update";
    private static final String FORCE_UPDATE_REQUESTED = "1";
    private static final String INVALID_SOURCE_TOKEN = "InvalidSourceToken";
    private static final String INVALID_TOKEN = "INVALID_TOKEN";
    private static final String INVALID_TOKEN_CODE = "InvalidToken";
    private static final String JSON_CODE_FIELD = "code";
    protected static final String JSON_ERROR_FIELD = "error";
    private static final String JSON_MESSAGE_FIELD = "message";
    private static final String LOG_TAG = AbstractJSONTokenResponse.class.getName();
    public static final String REFRESH_TOKEN = "refresh_token";
    public static final String REQUEST_ID = "request_id";
    protected static final String RESPONSE = "response";
    private static final String SERVER_ERROR = "ServerError";
    private static final String SERVER_ERROR_PAGE_IDENTIFIER = "!DOCTYPE html";
    protected static final String TOKEN = "token";
    public static final String TOKEN_EXPIRES_IN = "token_expires_in";
    public static final String TOKEN_TYPE = "token_type";
    public static final String VER_UNKOWN = "Unkown";
    private final HttpResponse _response;
    private String _sEntity;

    public abstract Token createPrimaryToken(String str, long j);

    protected abstract void doParse(JSONObject jSONObject) throws JSONException, AuthError, IOException;

    public AbstractJSONTokenResponse(HttpResponse response) {
        this._response = response;
    }

    protected JSONObject getJSONResponse() throws JSONException, IOException {
        this._sEntity = EntityUtils.toString(this._response.getEntity()).trim();
        MAPLog.pii(LOG_TAG, "Entity Extracted", "entity=" + this._sEntity);
        JSONObject jHttpResponse = JSONObjectInstrumentation.init(this._sEntity);
        JSONObject jResponse = extractResponseJSONObject(jHttpResponse);
        logRequestId(jHttpResponse);
        return jResponse;
    }

    protected JSONObject extractResponseJSONObject(JSONObject jsonObject) throws JSONException {
        return jsonObject.getJSONObject(RESPONSE);
    }

    protected void logRequestId(JSONObject jHttpResponse) {
        try {
            String requestId = jHttpResponse.getString(REQUEST_ID);
            MAPLog.pii(LOG_TAG, "ExchangeRepsonse", "requestId=" + requestId);
        } catch (JSONException e) {
            MAPLog.e(LOG_TAG, "No RequestId in JSON response");
        }
    }

    protected String getEntity() {
        return this._sEntity;
    }

    public String getVersion() {
        return MAPVersionInfo.VERSION;
    }

    protected void handleForceUpdate(JSONObject jResponse) throws AuthError {
        String sForceUpdate = null;
        try {
            sForceUpdate = jResponse.getString(FORCE_UPDATE);
            if (sForceUpdate != null && sForceUpdate.equals(FORCE_UPDATE_REQUESTED)) {
                String sVersion = getVersion();
                MAPLog.e(LOG_TAG, "Force update requested ver:" + sVersion);
                throw new AuthError("Server denied request, requested Force Update ver:" + sVersion, null, AuthError.ERROR_TYPE.ERROR_FORCE_UPDATE);
            }
        } catch (ParseException e) {
            if (!TextUtils.isEmpty(sForceUpdate)) {
                MAPLog.e(LOG_TAG, "JSON parsing exception force update parsing response:" + e.toString());
                throw new AuthError(e.getMessage(), e, AuthError.ERROR_TYPE.ERROR_PARSE);
            }
        } catch (JSONException e2) {
            if (!TextUtils.isEmpty(sForceUpdate)) {
                MAPLog.e(LOG_TAG, "JSON exception parsing force update response:" + e2.toString());
                throw new AuthError(e2.getMessage(), e2, AuthError.ERROR_TYPE.ERROR_JSON);
            }
        }
    }

    @Override // com.amazon.identity.auth.device.endpoint.TokenResponse
    public void parse() throws AuthError {
        String additionalInfo = "";
        try {
            try {
                try {
                    if (hasReceived500Error(this._response)) {
                        additionalInfo = "500 error (status=" + getStatusCode() + ")";
                    }
                    JSONObject jResponse = getJSONResponse();
                    handleJSONError(jResponse);
                    doParse(jResponse);
                    handleForceUpdate(jResponse);
                    try {
                        this._response.getEntity().getContent().close();
                    } catch (IOException e) {
                        MAPLog.e(LOG_TAG, "IOException closing response " + e.toString());
                    } catch (IllegalStateException e2) {
                        MAPLog.i(LOG_TAG, "IllegalStateException closing response " + e2.toString());
                    }
                } catch (IOException e3) {
                    MAPLog.e(LOG_TAG, "Exception accessing " + additionalInfo + " response:" + e3.toString());
                    throw new AuthError(e3.getMessage(), e3, AuthError.ERROR_TYPE.ERROR_COM);
                }
            } catch (ParseException e4) {
                MAPLog.e(LOG_TAG, "Exception parsing " + additionalInfo + " response:" + e4.toString());
                throw new AuthError(e4.getMessage(), e4, AuthError.ERROR_TYPE.ERROR_PARSE);
            } catch (JSONException e5) {
                if (this._sEntity != null && this._sEntity.contains(SERVER_ERROR_PAGE_IDENTIFIER)) {
                    MAPLog.e(LOG_TAG, "Server sending back default error page - BAD request");
                    throw new AuthError("Server sending back default error page - BAD request", e5, AuthError.ERROR_TYPE.ERROR_JSON);
                }
                MAPLog.w(LOG_TAG, "JSON exception parsing " + additionalInfo + " response:" + e5.toString());
                MAPLog.w(LOG_TAG, "JSON exception html = " + this._sEntity);
                throw new AuthError(e5.getMessage(), e5, AuthError.ERROR_TYPE.ERROR_JSON);
            }
        } catch (Throwable th) {
            try {
                this._response.getEntity().getContent().close();
            } catch (IOException e6) {
                MAPLog.e(LOG_TAG, "IOException closing response " + e6.toString());
            } catch (IllegalStateException e7) {
                MAPLog.i(LOG_TAG, "IllegalStateException closing response " + e7.toString());
            }
            throw th;
        }
    }

    protected void handleJSONError(JSONObject jResponse) throws JSONException, AuthError {
        try {
            JSONObject errorObject = jResponse.getJSONObject("error");
            String sErrorCode = errorObject.getString("code");
            if (SERVER_ERROR.equalsIgnoreCase(sErrorCode)) {
                String sErrorMessage = errorObject.getString("message");
                if (sErrorMessage.startsWith(INVALID_TOKEN)) {
                    throw new InvalidTokenAuthError("Invalid Exchange parameter - SERVER_ERROR.");
                }
                throwUnknownAuthError(sErrorCode);
                return;
            }
            if (INVALID_SOURCE_TOKEN.equalsIgnoreCase(sErrorCode)) {
                throw new InvalidTokenAuthError("Invalid Source Token in exchange parameter");
            }
            if (INVALID_TOKEN_CODE.equals(sErrorCode)) {
                throw new InvalidTokenAuthError("Token used is invalid.");
            }
            if (hasReceived500Error(this._response)) {
                throwUnknownAuthError("500 error (status=" + getStatusCode() + ")" + sErrorCode);
            } else {
                throwUnknownAuthError(sErrorCode);
            }
        } catch (ParseException e) {
            if (0 != 0) {
                throw new AuthError("Exception parsing response", e, AuthError.ERROR_TYPE.ERROR_PARSE);
            }
        } catch (JSONException e2) {
            if (0 != 0) {
                throw new AuthError("JSON exception parsing json error response:", e2, AuthError.ERROR_TYPE.ERROR_JSON);
            }
        }
    }

    public void throwUnknownAuthError(String sErrorCode) throws AuthError {
        String error = String.format("Error code: %s Server response: %s", sErrorCode, this._sEntity);
        throw new AuthError("Server Error : " + error, AuthError.ERROR_TYPE.ERROR_SERVER_REPSONSE);
    }

    protected Token extractPrimaryToken(JSONObject jResponse) throws AuthError {
        String token;
        try {
            if (jResponse.has("access_token")) {
                token = jResponse.getString("access_token");
            } else if (jResponse.has("token")) {
                token = jResponse.getString("token");
            } else {
                MAPLog.e(LOG_TAG, "Unable to find AccessToken in JSON response, throwing AuthError");
                throw new AuthError("JSON response did not contain an AccessToken", AuthError.ERROR_TYPE.ERROR_JSON);
            }
            long expiresIn = getExpiresIn(jResponse);
            return createPrimaryToken(token, expiresIn);
        } catch (JSONException e) {
            MAPLog.e(LOG_TAG, "Error reading JSON response, throwing AuthError");
            throw new AuthError("Error reading JSON response", AuthError.ERROR_TYPE.ERROR_JSON);
        }
    }

    protected long getExpiresIn(JSONObject jResponse) {
        long expiresIn = 0;
        try {
            if (jResponse.has(TOKEN_EXPIRES_IN)) {
                expiresIn = jResponse.getLong(TOKEN_EXPIRES_IN);
            } else if (jResponse.has(EXPIRES_IN)) {
                expiresIn = jResponse.getLong(EXPIRES_IN);
            } else {
                MAPLog.w(LOG_TAG, "Unable to find expiration time in JSON response, AccessToken will not expire locally");
            }
        } catch (JSONException e) {
            MAPLog.e(LOG_TAG, "Unable to parse expiration time in JSON response, AccessToken will not expire locally");
        }
        return expiresIn;
    }

    @Override // com.amazon.identity.auth.device.endpoint.TokenResponse
    public int getStatusCode() throws AuthError {
        try {
            return this._response.getStatusLine().getStatusCode();
        } catch (NullPointerException npe) {
            throw new AuthError("StatusLine is null", npe, AuthError.ERROR_TYPE.ERROR_COM);
        }
    }

    public static boolean hasReceived500Error(HttpResponse response) {
        int code = response.getStatusLine().getStatusCode();
        return code >= 500 && code <= 599;
    }

    protected HttpResponse getResponse() {
        return this._response;
    }
}

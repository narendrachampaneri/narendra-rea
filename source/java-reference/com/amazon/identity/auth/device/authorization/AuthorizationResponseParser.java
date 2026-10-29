package com.amazon.identity.auth.device.authorization;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.authorization.api.AuthzConstants;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class AuthorizationResponseParser {
    private static final String ACCESS_NOT_PERMITTED = "Access not permitted.";
    private static final String ACCESS_NOT_PERMITTED_ALT = "Access+not+permitted.";
    public static final String CLIENT_ID_STATE = "clientId";
    public static final String CLIENT_REQUEST_ID_STATE = "clientRequestId";
    public static final String CODE = "code";
    private static final String ERROR = "error";
    private static final String ERROR_DESCRIPTION = "error_description";
    private static final String LOG_TAG = MAPAuthzDialog.class.getName();
    public static final String REDIRECT_URI_STATE = "redirectUri";
    public static final String SCOPE = "scope";
    public static final String STATE = "state";

    AuthorizationResponseParser() {
    }

    static CallbackInfo getCallbackInfo(String url) {
        Uri uri = Uri.parse(url);
        Map<String, String> stateValues = getStateValuesFromUri(uri);
        String clientRequestId = stateValues.get(CLIENT_REQUEST_ID_STATE);
        CallbackInfo callbackInfo = CallbackInfo.getCallbackInfo(clientRequestId);
        return callbackInfo;
    }

    Bundle extractResultsBundle(String url, String requestId, String[] requestedScopes) throws AuthError {
        Bundle bundle = new Bundle();
        Uri uri = Uri.parse(url);
        MAPLog.pii(LOG_TAG, "Received response from WebBroswer for OAuth2 flow", "response=" + uri.toString());
        String authzCode = uri.getQueryParameter("code");
        bundle.putString("code", authzCode);
        MAPLog.pii(LOG_TAG, "Code extracted from response", "code=" + authzCode);
        Map<String, String> stateValues = getStateValuesFromUri(uri);
        String clientRequestId = stateValues.get(CLIENT_REQUEST_ID_STATE);
        if (TextUtils.isEmpty(clientRequestId)) {
            throw new AuthError("No clientRequestId in OAuth2 response", AuthError.ERROR_TYPE.ERROR_SERVER_REPSONSE);
        }
        if (!clientRequestId.equalsIgnoreCase(requestId)) {
            throw new AuthError("ClientRequestIds do not match. req=" + clientRequestId + " resp=" + requestId, AuthError.ERROR_TYPE.ERROR_SERVER_REPSONSE);
        }
        String error = uri.getQueryParameter("error");
        if (!TextUtils.isEmpty(error)) {
            String errorDescription = uri.getQueryParameter(ERROR_DESCRIPTION);
            return constructErrorBundle(bundle, error, errorDescription);
        }
        if (TextUtils.isEmpty(authzCode)) {
            throw new AuthError("No code in OAuth2 response", AuthError.ERROR_TYPE.ERROR_SERVER_REPSONSE);
        }
        String scopes = uri.getQueryParameter(SCOPE);
        return constructSuccessBundle(bundle, stateValues, scopes, requestedScopes);
    }

    public static Map<String, String> getStateValuesFromUri(Uri uri) {
        String[] stateKeyValues;
        Map<String, String> stateValues = new HashMap<>();
        String state = uri.getQueryParameter(STATE);
        if (state != null && (stateKeyValues = TextUtils.split(state, "&")) != null) {
            for (String attribute : stateKeyValues) {
                String[] attributeTuple = TextUtils.split(attribute, "=");
                if (attributeTuple != null && attributeTuple.length == 2) {
                    stateValues.put(attributeTuple[0], attributeTuple[1]);
                }
            }
        }
        return stateValues;
    }

    private Bundle constructErrorBundle(Bundle bundle, String error, String errorDescription) throws AuthError {
        if ("access_denied".equals(error) && !TextUtils.isEmpty(errorDescription) && (ACCESS_NOT_PERMITTED.equals(errorDescription) || ACCESS_NOT_PERMITTED_ALT.equals(errorDescription))) {
            bundle.putInt(AuthzConstants.BUNDLE_KEY.CAUSE_ID.val, 0);
            bundle.putString(AuthzConstants.BUNDLE_KEY.ON_CANCEL_TYPE.val, error);
            bundle.putString(AuthzConstants.BUNDLE_KEY.ON_CANCEL_DESCRIPTION.val, errorDescription);
            return bundle;
        }
        throw new AuthError("Error=" + error + "error_description=" + errorDescription, AuthError.ERROR_TYPE.ERROR_SERVER_REPSONSE);
    }

    private Bundle constructSuccessBundle(Bundle bundle, Map<String, String> stateValues, String scopes, String[] requestedScopes) {
        String clientId = stateValues.get(CLIENT_ID_STATE);
        bundle.putString(CLIENT_ID_STATE, clientId);
        String redirectUri = stateValues.get(REDIRECT_URI_STATE);
        bundle.putString(REDIRECT_URI_STATE, redirectUri);
        if (scopes != null) {
            bundle.putStringArray(SCOPE, ScopesHelper.getScopesFromString(scopes));
        } else {
            MAPLog.d(LOG_TAG, "No scopes from OAuth2 response, using requested scopes");
            bundle.putStringArray(SCOPE, requestedScopes);
        }
        return bundle;
    }
}

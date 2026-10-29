package com.amazon.ags.html5.comm;

import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.amazon.ags.AGSClientException;
import com.amazon.ags.AGSServiceException;
import com.amazon.ags.auth.AuthManager;
import com.amazon.ags.constants.LeaderboardBindingKeys;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.NativeCallResultCode;
import com.amazon.ags.constants.NativeCallTypes;
import com.amazon.ags.html5.factory.ServiceFactory;
import com.amazon.ags.html5.javascript.CallHandlerBase;
import com.amazon.ags.html5.util.GlobalState;
import com.amazon.ags.html5.util.LocalizationUtil;
import com.google.android.exoplayer.C;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkCallFactory extends CallHandlerBase {
    private static final int MAX_RESPONSE_LENGTH_BYTES = 1000000;
    private static final String TAG = "GC_" + NetworkCallFactory.class.getSimpleName();
    private static final Set<String> supportedCalls = new HashSet(Arrays.asList(NativeCallTypes.MAKE_SERVICE_CALL));
    private final AuthManager authManager;
    private final GlobalState globalState;
    private final LocalizationUtil localizationUtil;
    private final NetworkClient networkClient;
    private final Set<String> supportedMethodTypes;

    public NetworkCallFactory(AuthManager authManager, Handler uiThreadHandler, GlobalState globalState, LocalizationUtil localizationUtil, NetworkClient networkClient) {
        super(uiThreadHandler, supportedCalls);
        this.supportedMethodTypes = new HashSet();
        this.supportedMethodTypes.add("get");
        this.supportedMethodTypes.add("put");
        this.supportedMethodTypes.add("post");
        this.supportedMethodTypes.add("patch");
        this.authManager = authManager;
        this.globalState = globalState;
        this.localizationUtil = localizationUtil;
        this.networkClient = networkClient;
    }

    @Override // com.amazon.ags.html5.javascript.CallHandlerBase
    public boolean handleMessage(String requestRID, String nativeCallType, JSONObject request) throws Throwable {
        if (!NativeCallTypes.MAKE_SERVICE_CALL.equals(nativeCallType)) {
            return false;
        }
        if (ServiceFactory.isDebugLoggingEnabled()) {
            Log.d(TAG, "Service call: " + request);
        }
        try {
            String requestMethod = request.getString("method");
            JSONObject requestHeaders = request.optJSONObject(NativeCallKeys.HTTP_HEADERS);
            JSONObject requestParameters = request.getJSONObject(NativeCallKeys.PARAMETERS);
            String requestPayload = request.optString(NativeCallKeys.HTTP_PAYLOAD, null);
            boolean authenticate = request.optBoolean(NativeCallKeys.AUTHENTICATE, false);
            String requestEndpoint = request.getString(NativeCallKeys.END_POINT);
            String requestType = request.getString(NativeCallKeys.HTTP_METHOD);
            if (requestMethod == null || requestParameters == null || requestRID == null || TextUtils.isEmpty(requestEndpoint) || TextUtils.isEmpty(requestType)) {
                throw new IllegalArgumentException("Insufficient arguments for request handling");
            }
            if (!this.supportedMethodTypes.contains(requestType.toLowerCase())) {
                throw new IllegalArgumentException("Unsupported http method: " + requestType);
            }
            decorateRequestParametersWithPreIBAData(requestParameters);
            handleServiceRequest(requestRID, requestEndpoint, requestType, requestMethod, requestHeaders, requestParameters, requestPayload, authenticate);
            return true;
        } catch (JSONException e) {
            Log.e(TAG, "Unable to service request for request: " + request + " due to JSONException: " + e.toString(), e);
            RequestResult result = new RequestResult("{}", NativeCallResultCode.REQUEST_ERROR);
            sendReply(requestRID, result.getResponseJSON(), result.getResponseCode());
            return true;
        } catch (Exception e2) {
            Log.e(TAG, "Unable to service request for request: " + request + " due to exception: " + e2.toString(), e2);
            RequestResult result2 = new RequestResult("{}", NativeCallResultCode.REQUEST_ERROR);
            sendReply(requestRID, result2.getResponseJSON(), result2.getResponseCode());
            return true;
        }
    }

    private void decorateRequestParametersWithPreIBAData(JSONObject requestParameters) throws JSONException {
        requestParameters.put("locale", this.localizationUtil.getCurrentLocale().toString());
        String gameId = this.authManager.getGameId();
        requestParameters.put("gameId", gameId);
        requestParameters.put("GameId", gameId);
        String requestedPlayerId = requestParameters.optString("playerId", null);
        String playerId = (requestedPlayerId == null || NativeCallKeys.SELF_PLAYER_ID.equals(requestedPlayerId)) ? this.globalState.getPlayerId() : requestedPlayerId;
        if (playerId != null) {
            requestParameters.put("playerId", playerId);
            requestParameters.put(LeaderboardBindingKeys.LEADERBOARD_PERCENTILE_PLAYER_ID_KEY, playerId);
        }
    }

    private void sendReply(String requestRID, RequestResult result, String statusCode) {
        if (result == null) {
            result = new RequestResult("{}", "ERROR");
        }
        sendReply(requestRID, result.getResponseJSON(), result.getResponseCode(), statusCode);
    }

    private void handleServiceRequest(String requestRID, String endpoint, String type, String method, JSONObject headers, JSONObject parameters, String payload, boolean authenticate) throws Throwable {
        ServiceResponse response = null;
        try {
            ServiceRequestBase request = createRequest(endpoint, type, method, headers, parameters, payload, authenticate);
            response = this.networkClient.execute(request);
            RequestResult requestResult = createRequestResult(response);
            sendReply(requestRID, requestResult, String.valueOf(response.getStatusCode()));
        } catch (ConnectionException e) {
            Log.e(TAG, "Connection exception encountered while executing request: " + e.toString(), e);
            String statusCode = response != null ? String.valueOf(response.getStatusCode()) : null;
            sendReply(requestRID, new RequestResult("{}", NativeCallResultCode.NETWORK_ERROR), statusCode);
        } catch (Exception e2) {
            Log.e(TAG, "Exception encountered while executing request: " + e2.toString(), e2);
            String statusCode2 = response != null ? String.valueOf(response.getStatusCode()) : null;
            sendReply(requestRID, new RequestResult("{}", "ERROR"), statusCode2);
        }
    }

    private ServiceRequestBase createRequest(String endpoint, String type, String method, JSONObject headers, JSONObject parameters, String payload, boolean authenticate) throws JSONException {
        ServiceRequestBase result;
        if ("put".equalsIgnoreCase(type)) {
            AGSHttpPut httpPut = new AGSHttpPut(endpoint + method, authenticate);
            httpPut.setRequestBody(!(parameters instanceof JSONObject) ? parameters.toString() : JSONObjectInstrumentation.toString(parameters));
            result = httpPut;
        } else if ("post".equalsIgnoreCase(type)) {
            AGSHttpPost httpPost = new AGSHttpPost(endpoint + method, authenticate);
            Iterator<String> iterator = parameters.keys();
            while (iterator.hasNext()) {
                String key = iterator.next();
                httpPost.putUrlParameter(key, parameters.getString(key));
            }
            result = httpPost;
        } else if ("get".equalsIgnoreCase(type)) {
            AGSHttpGet httpGet = new AGSHttpGet(endpoint + method, authenticate);
            Iterator<String> iterator2 = parameters.keys();
            while (iterator2.hasNext()) {
                String key2 = iterator2.next();
                httpGet.putUrlParameter(key2, parameters.getString(key2));
            }
            result = httpGet;
        } else if ("patch".equalsIgnoreCase(type)) {
            AGSHttpPatch httpPatch = new AGSHttpPatch(endpoint + method, authenticate);
            Iterator<String> iterator3 = parameters.keys();
            while (iterator3.hasNext()) {
                String key3 = iterator3.next();
                httpPatch.putUrlParameter(key3, parameters.getString(key3));
            }
            result = httpPatch;
        } else {
            throw new IllegalArgumentException("Unsupported http method: " + type);
        }
        if (headers != null) {
            Iterator<?> keys = headers.keys();
            while (keys.hasNext()) {
                String key4 = keys.next();
                String value = (String) headers.get(key4);
                result.putHeaderParameter(key4, value);
            }
        }
        if (payload != null) {
            result.setRequestBody(payload);
        }
        return result;
    }

    private RequestResult createRequestResult(ServiceResponse serviceResponse) throws Throwable {
        boolean debugLoggingEnabled = ServiceFactory.isDebugLoggingEnabled();
        HttpResponse response = serviceResponse.getResponse();
        int statusCode = serviceResponse.getStatusCode();
        HttpEntity entity = response.getEntity();
        Header requestId = response.getLastHeader("X-Amzn-RequestId");
        if (debugLoggingEnabled) {
            Log.d("DEBUG", "Network response: " + response.getStatusLine());
        }
        if (statusCode >= 400) {
            if (requestId != null) {
                Log.w(TAG, "Network request ID for failed request: " + requestId.getValue());
            }
            throw new AGSServiceException(response.getStatusLine().getReasonPhrase());
        }
        if (entity == null) {
            if (requestId != null) {
                Log.w(TAG, "Network request ID for failed request: " + requestId.getValue());
            }
            throw new AGSClientException("Received null entity from http response");
        }
        if (entity.getContentLength() > C.MICROS_PER_SECOND) {
            if (requestId != null) {
                Log.w(TAG, "Network request ID for failed request: " + requestId.getValue());
            }
            throw new AGSServiceException("Response content is longer than expected");
        }
        if (debugLoggingEnabled) {
            if (requestId != null) {
                try {
                    Log.d("DEBUG", "Network request ID: " + requestId.getValue());
                } catch (IOException e) {
                }
            }
            Log.d("DEBUG", "Network response: " + response.getStatusLine() + " --> " + serviceResponse.getContent());
        }
        String responseBody = serviceResponse.getContent();
        return new RequestResult(responseBody, NativeCallResultCode.SUCCESS);
    }

    private class RequestResult {
        private final String responseCode;
        private final String responseJSON;

        public RequestResult(String responseJSON, String responseCode) {
            this.responseJSON = responseJSON;
            this.responseCode = responseCode;
        }

        public String getResponseJSON() {
            return this.responseJSON;
        }

        public String getResponseCode() {
            return this.responseCode;
        }
    }
}

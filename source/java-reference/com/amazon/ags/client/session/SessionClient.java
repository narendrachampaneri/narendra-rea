package com.amazon.ags.client.session;

import android.util.Log;
import com.amazon.ags.api.AGResponseHandle;
import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.RequestResponse;
import com.amazon.ags.client.AGResponseHandleImpl;
import com.amazon.ags.client.ClientBase;
import com.amazon.ags.client.RequestResponseImpl;
import com.amazon.ags.constants.BindingKeys;
import com.amazon.ags.constants.ServiceActionCode;
import com.amazon.ags.html5.service.ServiceHelper;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class SessionClient extends ClientBase {
    public SessionClient() {
    }

    public SessionClient(ServiceHelper serviceHelper) {
        super(serviceHelper);
    }

    public AGResponseHandle<InitializeSessionResponse> initializeSession() {
        if (isClientReady()) {
            return new ClientBase.AsyncTaskWrapper<InitializeSessionResponse>("GameCircle.initialize") { // from class: com.amazon.ags.client.session.SessionClient.1
                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public JSONObject buildRequest() throws JSONException {
                    return super.buildRequestForServiceAction(25);
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public InitializeSessionResponse convertResponse(JSONObject response) throws JSONException {
                    int responseCode = response.getInt("RESPONSE_CODE");
                    String result = response.getString(BindingKeys.AUTHORIZE_RESULT_BUNDLE_KEY);
                    return new InitializeSessionResponse(result, responseCode);
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public InitializeSessionResponse getFailureResponse(int responseCode, JSONObject response) {
                    return new InitializeSessionResponse(24, ErrorCode.UNRECOVERABLE);
                }
            }.execute(null);
        }
        AGResponseHandleImpl<InitializeSessionResponse> emptyHandle = new AGResponseHandleImpl<>(null);
        emptyHandle.setResponse(new InitializeSessionResponse(29, ErrorCode.UNRECOVERABLE));
        Log.w(this.TAG, "initializeSession called before AmazonGamesClient initialized; returning empty response");
        return emptyHandle;
    }

    public AGResponseHandle<WhispersyncEnabledResponse> isWhispersyncEnabled() {
        if (isClientReady()) {
            return new ClientBase.AsyncTaskWrapper<WhispersyncEnabledResponse>("Is Whispersync Enabled") { // from class: com.amazon.ags.client.session.SessionClient.2
                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public JSONObject buildRequest() throws JSONException {
                    return super.buildRequestForServiceAction(ServiceActionCode.IS_WHISPERSYNC_ENABLED);
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public WhispersyncEnabledResponse convertResponse(JSONObject response) throws JSONException {
                    int responseCode = response.getInt("RESPONSE_CODE");
                    boolean enabled = response.getBoolean(BindingKeys.WHISPERSYNC_ENABLED);
                    return new WhispersyncEnabledResponse(responseCode, enabled);
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public WhispersyncEnabledResponse getFailureResponse(int responseCode, JSONObject response) {
                    return new WhispersyncEnabledResponse(24, ErrorCode.UNRECOVERABLE);
                }
            }.execute(null);
        }
        AGResponseHandleImpl<WhispersyncEnabledResponse> emptyHandle = new AGResponseHandleImpl<>(null);
        emptyHandle.setResponse(new WhispersyncEnabledResponse(29, ErrorCode.UNRECOVERABLE));
        Log.w(this.TAG, "isWhispersyncEnabled called before AmazonGamesClient initialized; returning empty response");
        return emptyHandle;
    }

    public AGResponseHandle<RequestResponse> processSessionEvent(final SessionEvent sessionEvent) {
        if (isClientReady()) {
            return new ClientBase.AsyncTaskWrapper<RequestResponse>("GameCircle.onResume") { // from class: com.amazon.ags.client.session.SessionClient.3
                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public JSONObject buildRequest() throws JSONException {
                    JSONObject request = super.buildRequestForServiceAction(sessionEvent.getActionCode());
                    request.put(BindingKeys.REQUEST_TIMESTAMP, sessionEvent.getTimestamp());
                    return request;
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public RequestResponse convertResponse(JSONObject response) throws JSONException {
                    int responseCode = response.getInt("RESPONSE_CODE");
                    return new RequestResponseImpl(responseCode);
                }

                @Override // com.amazon.ags.client.ClientBase.AsyncTaskWrapper
                public RequestResponse getFailureResponse(int responseCode, JSONObject response) {
                    return new RequestResponseImpl(24, ErrorCode.UNRECOVERABLE);
                }
            }.execute(null);
        }
        AGResponseHandleImpl<RequestResponse> emptyHandle = new AGResponseHandleImpl<>(null);
        emptyHandle.setResponse(new RequestResponseImpl(29, ErrorCode.UNRECOVERABLE));
        Log.w(this.TAG, "processSessionEvent called before AmazonGamesClient initialized; returning empty response");
        return emptyHandle;
    }
}

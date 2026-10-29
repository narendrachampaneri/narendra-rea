package com.amazon.ags.client;

import android.util.Log;
import com.amazon.ags.api.AGResponseHandle;
import com.amazon.ags.api.RequestResponse;
import com.amazon.ags.constants.BindingKeys;
import com.amazon.ags.constants.ServiceActionCode;
import com.amazon.ags.html5.service.ServiceHelper;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ClientBase {
    protected final String TAG;
    protected boolean isReady;
    protected ServiceHelper serviceHelper;

    public ClientBase() {
        this.TAG = "GC_" + getClass().getSimpleName();
        this.isReady = false;
    }

    public ClientBase(ServiceHelper serviceHelper) {
        this.TAG = "GC_" + getClass().getSimpleName();
        this.isReady = false;
        this.serviceHelper = serviceHelper;
        this.isReady = true;
    }

    public void setServiceHelper(ServiceHelper serviceHelper) {
        this.serviceHelper = serviceHelper;
        this.isReady = true;
    }

    protected boolean isClientReady() {
        return this.isReady;
    }

    protected long getLong(JSONObject data, String key, long defaultValue) {
        try {
            if (!data.isNull(key)) {
                return data.getLong(key);
            }
            return defaultValue;
        } catch (JSONException e) {
            Log.w(this.TAG, "JSON error, returning default value " + defaultValue, e);
            return defaultValue;
        }
    }

    protected int getInt(JSONObject data, String key, int defaultValue) {
        try {
            if (!data.isNull(key)) {
                return data.getInt(key);
            }
            return defaultValue;
        } catch (JSONException e) {
            Log.w(this.TAG, "JSON error, returning default value " + defaultValue, e);
            return defaultValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract class AsyncTaskWrapper<T extends RequestResponse> implements JSONRequest {
        private JSONObject request = null;
        private final String requestDescription;
        private AGResponseHandleImpl<T> responseHandle;

        protected abstract JSONObject buildRequest() throws JSONException;

        protected abstract T convertResponse(JSONObject jSONObject) throws JSONException;

        protected abstract T getFailureResponse(int i, JSONObject jSONObject);

        public AsyncTaskWrapper(String requestDescription) {
            this.requestDescription = requestDescription;
        }

        public AGResponseHandle<T> execute(Object[] userData) {
            this.responseHandle = new AGResponseHandleImpl<>(userData);
            try {
                this.request = buildRequest();
                if (!this.request.has(BindingKeys.REQUEST_ID_KEY)) {
                    this.request.put(BindingKeys.REQUEST_ID_KEY, UUID.randomUUID().toString());
                }
                ClientBase.this.serviceHelper.handleRequestAsync(this);
            } catch (JSONException e) {
                this.responseHandle.setResponse(getFailureResponse(24, null));
            }
            return this.responseHandle;
        }

        @Override // com.amazon.ags.client.JSONRequest
        public JSONObject getRequest() {
            return this.request;
        }

        @Override // com.amazon.ags.client.JSONRequest
        public void setResponse(JSONObject response) {
            try {
                int responseCode = response.getInt("RESPONSE_CODE");
                if (responseCode == 17) {
                    this.responseHandle.setResponse(convertResponse(response));
                } else {
                    this.responseHandle.setResponse(getFailureResponse(responseCode, response));
                }
            } catch (JSONException e) {
                Log.e(ClientBase.this.TAG, "Unable to read response for " + this.requestDescription, e);
                this.responseHandle.setResponse(getFailureResponse(24, null));
            }
        }

        public JSONObject buildRequestForServiceAction(int serviceActionCode) throws JSONException {
            JSONObject request = new JSONObject();
            request.put(ServiceActionCode.ACTION_CODE_KEY, serviceActionCode);
            return request;
        }

        public JSONObject buildRequestForServiceAction(String serviceActionCode) throws JSONException {
            JSONObject request = new JSONObject();
            request.put(ServiceActionCode.ACTION_CODE_KEY, serviceActionCode);
            return request;
        }
    }
}

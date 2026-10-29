package com.amazon.ags.storage;

import android.util.Log;
import com.amazon.ags.client.JSONRequest;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class OfflineEventJSONRequest implements JSONRequest {
    private static final String TAG = "GC_" + OfflineEventJSONRequest.class.getSimpleName();
    private final OfflineEventJSONCallback callback;
    private final JSONObject request;

    public interface OfflineEventJSONCallback {
        void onRecoverableError();

        void onSuccess();

        void onUnrecoverableError();
    }

    public OfflineEventJSONRequest(JSONObject request, OfflineEventJSONCallback callback) {
        this.request = request;
        this.callback = callback;
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
                this.callback.onSuccess();
            } else if (responseCode == 30 || responseCode == 28) {
                this.callback.onRecoverableError();
            } else {
                this.callback.onUnrecoverableError();
            }
        } catch (Exception e) {
            Log.e(TAG, "Unable to read response for request due to error", e);
            this.callback.onUnrecoverableError();
        }
    }
}

package com.amazon.ags.html5.service;

import android.os.Handler;
import android.util.Log;
import com.amazon.ags.client.JSONRequest;
import com.amazon.ags.constants.BindingKeys;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AsynchronousReplyMessenger {
    private static final long REQUEST_TIMEOUT_MILLIS = 10000;
    private static final String TAG = "GC_" + AsynchronousReplyMessenger.class.getSimpleName();
    private final Map<String, JSONRequest> pendingMessages = Collections.synchronizedMap(new HashMap());
    private final ScheduledExecutorService scheduledExecutorService;
    private final Handler uiThreadHandler;

    public AsynchronousReplyMessenger(Handler uiThreadHandler, ScheduledExecutorService scheduledExecutorService) {
        this.uiThreadHandler = uiThreadHandler;
        this.scheduledExecutorService = scheduledExecutorService;
    }

    public void addAsyncRequest(JSONRequest asyncRequest) {
        if (asyncRequest != null) {
            try {
                String requestId = asyncRequest.getRequest().getString(BindingKeys.REQUEST_ID_KEY);
                if (requestId == null) {
                    throw new IllegalArgumentException("Messages must contain a request id");
                }
                scheduleTimeoutTask(requestId);
                this.pendingMessages.put(requestId, asyncRequest);
            } catch (JSONException e) {
                throw new IllegalArgumentException("Unable to get request id", e);
            }
        }
    }

    private void scheduleTimeoutTask(final String requestId) {
        Runnable timeoutTask = new Runnable() { // from class: com.amazon.ags.html5.service.AsynchronousReplyMessenger.1
            @Override // java.lang.Runnable
            public void run() {
                JSONRequest request = (JSONRequest) AsynchronousReplyMessenger.this.pendingMessages.remove(requestId);
                if (request != null) {
                    try {
                        JSONObject timedOutResponse = new JSONObject();
                        timedOutResponse.put("RESPONSE_CODE", 24);
                        timedOutResponse.put(BindingKeys.REQUEST_ID_KEY, requestId);
                        request.setResponse(timedOutResponse);
                        Log.w(AsynchronousReplyMessenger.TAG, "Request " + requestId + " timed out.");
                    } catch (JSONException e) {
                        Log.e(AsynchronousReplyMessenger.TAG, "Failed to generate a timeout response for request " + requestId + ".  The callback won't be called.", e);
                    }
                }
            }
        };
        this.scheduledExecutorService.schedule(timeoutTask, REQUEST_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
    }

    public void sendReply(final JSONObject reply) {
        if (reply == null) {
            Log.d(TAG, "Null reply recieved");
            return;
        }
        try {
            String requestId = reply.getString(BindingKeys.REQUEST_ID_KEY);
            if (requestId == null) {
                Log.e(TAG, "sendReply received a null request id");
                return;
            }
            final JSONRequest asyncRequest = this.pendingMessages.remove(requestId);
            if (asyncRequest != null) {
                this.uiThreadHandler.post(new Runnable() { // from class: com.amazon.ags.html5.service.AsynchronousReplyMessenger.2
                    @Override // java.lang.Runnable
                    public void run() {
                        asyncRequest.setResponse(reply);
                    }
                });
            } else {
                Log.w(TAG, "No pending message found for message id " + requestId);
            }
        } catch (JSONException e) {
            Log.e(TAG, "Unable to get request id", e);
        }
    }
}

package com.amazon.ags.html5.javascript;

import android.os.Handler;
import android.util.Log;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.NativeCallResultCode;
import com.amazon.ags.html5.javascript.domain.JavascriptInterface;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CallHandlerBase {
    protected final String TAG = "GC_" + getClass().getSimpleName();
    private final Map<String, JavascriptInterface> replyMap = Collections.synchronizedMap(new HashMap());
    private final Set<String> supportedMessageTypes;
    private final Handler uiThreadHandler;

    protected abstract boolean handleMessage(String str, String str2, JSONObject jSONObject);

    public CallHandlerBase(Handler uiThreadHandler, Set<String> supportedMessageTypes) {
        this.uiThreadHandler = uiThreadHandler;
        this.supportedMessageTypes = supportedMessageTypes;
    }

    public Set<String> getSupportedMessages() {
        return this.supportedMessageTypes;
    }

    public boolean handleMessage(JavascriptInterface caller, JSONObject request) {
        try {
            String requestRID = request.getString(NativeCallKeys.REQUEST_ID);
            try {
                String nativeCallType = request.getString(NativeCallKeys.NATIVE_CALL);
                this.replyMap.put(caller.getId() + "-" + requestRID, caller);
                return handleMessage(caller.getId() + "-" + requestRID, nativeCallType, request);
            } catch (JSONException e) {
                Log.e(this.TAG, "Unable to get nativeCall from request " + request, e);
                sendReply(requestRID, "{}", NativeCallResultCode.REQUEST_ERROR);
                return true;
            }
        } catch (Exception e2) {
            Log.e(this.TAG, "Unable to handle request with no RID to report back to.", e2);
            return true;
        }
    }

    protected void sendReply(String rid, String resultJson, String resultCode) {
        sendReply(rid, resultJson, resultCode, null);
    }

    protected void sendReply(String rid, final String resultJson, final String resultCode, final String httpResponseCode) {
        final JavascriptInterface originalCaller = this.replyMap.remove(rid);
        if (originalCaller != null) {
            try {
                String[] ridComponents = rid.split("-");
                final String originalRid = ridComponents[1];
                this.uiThreadHandler.post(new Runnable() { // from class: com.amazon.ags.html5.javascript.CallHandlerBase.1
                    @Override // java.lang.Runnable
                    public void run() {
                        originalCaller.sendJSReply(originalRid, resultJson, resultCode, httpResponseCode);
                    }
                });
                return;
            } catch (Exception e) {
                Log.e(this.TAG, "Unable to route reply back to caller for rid [" + rid + "]", e);
                return;
            }
        }
        Log.e(this.TAG, "No receiver for reply associated with rid: " + rid);
    }
}

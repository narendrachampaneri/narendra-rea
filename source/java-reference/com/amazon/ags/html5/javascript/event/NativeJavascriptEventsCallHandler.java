package com.amazon.ags.html5.javascript.event;

import android.os.Handler;
import android.util.Log;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.NativeCallResultCode;
import com.amazon.ags.constants.NativeCallTypes;
import com.amazon.ags.html5.javascript.CallHandlerBase;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NativeJavascriptEventsCallHandler extends CallHandlerBase {
    private static final Set<String> supportedCalls = new HashSet(Arrays.asList(NativeCallTypes.NOTIFY_NATIVE));
    private final JavascriptEventsManager javascriptEventsManager;

    public NativeJavascriptEventsCallHandler(Handler uiThreadHandler, JavascriptEventsManager javascriptEventsManager) {
        super(uiThreadHandler, supportedCalls);
        this.javascriptEventsManager = javascriptEventsManager;
    }

    @Override // com.amazon.ags.html5.javascript.CallHandlerBase
    protected boolean handleMessage(String rid, String nativeCallType, JSONObject request) {
        Log.d(this.TAG, "Processing request [" + rid + "] for call type [" + nativeCallType + "]");
        String jsonReply = null;
        if (NativeCallTypes.NOTIFY_NATIVE.equals(nativeCallType)) {
            try {
                JSONObject parameters = request.getJSONObject(NativeCallKeys.PARAMETERS);
                String eventType = parameters.getString(NativeCallKeys.JAVASCRIPT_EVENT_TYPE);
                this.javascriptEventsManager.notifyListeners(eventType);
                JSONObject jSONObject = new JSONObject();
                jsonReply = !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
            } catch (JSONException e) {
                Log.e(this.TAG, "Unable to get value for key [javascriptEventType]", e);
            }
        }
        Log.d(this.TAG, "Returning reply [" + jsonReply + "] for request [" + rid + "]");
        if (jsonReply != null) {
            sendReply(rid, jsonReply.toString(), NativeCallResultCode.SUCCESS);
            return true;
        }
        return false;
    }
}

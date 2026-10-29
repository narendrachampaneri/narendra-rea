package com.amazon.ags.html5.javascript;

import android.os.Handler;
import android.util.Log;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.NativeCallResultCode;
import com.amazon.ags.constants.NativeCallTypes;
import com.amazon.ags.html5.util.GlobalState;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NativeGlobalStateCallHandler extends CallHandlerBase {
    private static final Set<String> supportedCalls = new HashSet(Arrays.asList(NativeCallTypes.BATCH_GET_GLOBAL_STATE, NativeCallTypes.BATCH_PUT_GLOBAL_STATE));
    private final GlobalState globalState;

    public NativeGlobalStateCallHandler(Handler uiThreadHandler, GlobalState globalState) {
        super(uiThreadHandler, supportedCalls);
        this.globalState = globalState;
    }

    @Override // com.amazon.ags.html5.javascript.CallHandlerBase
    protected boolean handleMessage(String rid, String nativeCallType, JSONObject request) {
        if (NativeCallTypes.BATCH_GET_GLOBAL_STATE.equals(nativeCallType)) {
            batchGetGlobalState(rid, request);
            return true;
        }
        if (NativeCallTypes.BATCH_PUT_GLOBAL_STATE.equals(nativeCallType)) {
            batchPutGlobalState(rid, request);
            return true;
        }
        return false;
    }

    private void batchGetGlobalState(String rid, JSONObject request) {
        JSONObject json = this.globalState.toJSON();
        sendReply(rid, !(json instanceof JSONObject) ? json.toString() : JSONObjectInstrumentation.toString(json), NativeCallResultCode.SUCCESS);
    }

    private void batchPutGlobalState(String rid, JSONObject request) {
        String value;
        try {
            JSONObject parameters = request.getJSONObject(NativeCallKeys.PARAMETERS);
            Iterator<String> iterator = parameters.keys();
            while (iterator.hasNext()) {
                String key = iterator.next();
                if (!parameters.isNull(key)) {
                    value = parameters.getString(key);
                } else {
                    value = null;
                }
                this.globalState.put(key, value);
            }
            sendReply(rid, "{}", NativeCallResultCode.SUCCESS);
        } catch (JSONException e) {
            Log.e(this.TAG, "Unable to update global state from request " + request, e);
            sendReply(rid, "{}", NativeCallResultCode.REQUEST_ERROR);
        }
    }
}

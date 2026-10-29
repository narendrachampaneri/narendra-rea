package com.amazon.ags.html5.javascript;

import android.os.Handler;
import android.util.Log;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.NativeCallResultCode;
import com.amazon.ags.constants.NativeCallTypes;
import com.amazon.ags.storage.OfflineDataCache;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NativeSettingsCallHandler extends CallHandlerBase {
    private static final Set<String> supportedCalls = new HashSet(Arrays.asList(NativeCallTypes.GET_SETTING, NativeCallTypes.PUT_SETTING));
    private final OfflineDataCache settingsDataCache;

    public NativeSettingsCallHandler(Handler uiThreadHandler, OfflineDataCache settingsDataCache) {
        super(uiThreadHandler, supportedCalls);
        this.settingsDataCache = settingsDataCache;
    }

    @Override // com.amazon.ags.html5.javascript.CallHandlerBase
    protected boolean handleMessage(String rid, String nativeCallType, JSONObject request) {
        if (NativeCallTypes.GET_SETTING.equals(nativeCallType)) {
            getSetting(rid, request);
            return true;
        }
        if (NativeCallTypes.PUT_SETTING.equals(nativeCallType)) {
            putSetting(rid, request);
            return true;
        }
        return false;
    }

    private void getSetting(String rid, JSONObject request) {
        try {
            JSONObject parameters = request.getJSONObject(NativeCallKeys.PARAMETERS);
            String key = parameters.getString(NativeCallKeys.PRIMARY_KEY);
            JSONObject result = this.settingsDataCache.getCacheItem(key);
            if (result != null) {
                sendReply(rid, !(result instanceof JSONObject) ? result.toString() : JSONObjectInstrumentation.toString(result), NativeCallResultCode.SUCCESS);
            } else {
                sendReply(rid, "{}", "ERROR");
            }
        } catch (JSONException e) {
            Log.e(this.TAG, "Unable to get key from request " + request, e);
            sendReply(rid, "{}", NativeCallResultCode.REQUEST_ERROR);
        }
    }

    private void putSetting(String rid, JSONObject request) {
        try {
            JSONObject parameters = request.getJSONObject(NativeCallKeys.PARAMETERS);
            String primaryKey = parameters.getString(NativeCallKeys.PRIMARY_KEY);
            String secondaryKey = parameters.getString(NativeCallKeys.SECONDARY_KEY);
            JSONObject value = parameters.getJSONObject(NativeCallKeys.VALUE);
            this.settingsDataCache.setCacheItem(primaryKey, secondaryKey, value);
            sendReply(rid, "{}", NativeCallResultCode.SUCCESS);
        } catch (JSONException e) {
            Log.e(this.TAG, "Unable to get keys and value from request " + request, e);
            sendReply(rid, "{}", NativeCallResultCode.REQUEST_ERROR);
        }
    }
}

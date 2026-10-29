package com.amazon.ags.html5.javascript;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Handler;
import android.util.Log;
import com.amazon.ags.client.KindleFireProxy;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.NativeCallResultCode;
import com.amazon.ags.constants.NativeCallTypes;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NativeKindleFireStateCallHandler extends CallHandlerBase {
    private static final String GC_KINDLE_SETTINGS_ACTION = "com.amazon.ags.app.AMAZON_GAMES_SETTINGS";
    private static final String GC_PACKAGE_NAME = "com.amazon.ags.app";
    private static final Set<String> supportedCalls = new HashSet(Arrays.asList(NativeCallTypes.IS_KINDLE, NativeCallTypes.IS_GC_SERVICE_READY, NativeCallTypes.IS_KINDLE_REGISTERED, "hasOptedIn", NativeCallTypes.IS_WHISERPSYNC_ENABLED, NativeCallTypes.SET_OPT_IN, NativeCallTypes.CAN_LAUNCH_KINDLE_SETTINGS, NativeCallTypes.LAUNCH_KINDLE_SETTINGS));
    private final Context context;
    private final KindleFireProxy kindleFireProxy;

    public NativeKindleFireStateCallHandler(Context context, Handler uiThreadHandler, KindleFireProxy kindleFireProxy) {
        super(uiThreadHandler, supportedCalls);
        this.kindleFireProxy = kindleFireProxy;
        this.context = context;
    }

    @Override // com.amazon.ags.html5.javascript.CallHandlerBase
    protected boolean handleMessage(String rid, String nativeCallType, JSONObject request) {
        Log.d(this.TAG, "Processing request [" + rid + "] for call type [" + nativeCallType + "]");
        String jsonReply = null;
        if (nativeCallType.equals(NativeCallTypes.IS_KINDLE)) {
            boolean isKindle = this.kindleFireProxy.isKindle();
            jsonReply = makeJsonReplyForSingleValue(Boolean.valueOf(isKindle));
        } else if (nativeCallType.equals(NativeCallTypes.IS_GC_SERVICE_READY)) {
            boolean isReady = this.kindleFireProxy.isReady();
            jsonReply = makeJsonReplyForSingleValue(Boolean.valueOf(isReady));
        } else if (nativeCallType.equals(NativeCallTypes.IS_KINDLE_REGISTERED)) {
            boolean isRegistered = this.kindleFireProxy.isRegistered();
            jsonReply = makeJsonReplyForSingleValue(Boolean.valueOf(isRegistered));
        } else if (nativeCallType.equals("hasOptedIn")) {
            boolean hasOptedIn = this.kindleFireProxy.isOptedIn();
            jsonReply = makeJsonReplyForSingleValue(Boolean.valueOf(hasOptedIn));
        } else if (nativeCallType.equals(NativeCallTypes.IS_WHISERPSYNC_ENABLED)) {
            boolean isWhipersyncEnabled = this.kindleFireProxy.isWhispersyncEnabled();
            jsonReply = makeJsonReplyForSingleValue(Boolean.valueOf(isWhipersyncEnabled));
        } else if (nativeCallType.equals(NativeCallTypes.SET_OPT_IN)) {
            try {
                JSONObject parameters = request.getJSONObject(NativeCallKeys.PARAMETERS);
                boolean hasOptedIn2 = parameters.getBoolean("hasOptedIn");
                this.kindleFireProxy.setOptIn(hasOptedIn2);
                JSONObject jSONObject = new JSONObject();
                jsonReply = !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
            } catch (JSONException e) {
                Log.e(this.TAG, "Unable to get value for key [hasOptedIn]", e);
            }
        } else if (nativeCallType.equals(NativeCallTypes.CAN_LAUNCH_KINDLE_SETTINGS)) {
            boolean isReady2 = this.kindleFireProxy.isReady();
            boolean isRegistered2 = this.kindleFireProxy.isRegistered();
            boolean canLaunchKindleSettings = isReady2 && isRegistered2 && checkKindleGameSettingsAvailability();
            jsonReply = makeJsonReplyForSingleValue(Boolean.valueOf(canLaunchKindleSettings));
        } else if (nativeCallType.equals(NativeCallTypes.LAUNCH_KINDLE_SETTINGS)) {
            try {
                launchSettings();
                JSONObject jSONObject2 = new JSONObject();
                jsonReply = !(jSONObject2 instanceof JSONObject) ? jSONObject2.toString() : JSONObjectInstrumentation.toString(jSONObject2);
            } catch (ActivityNotFoundException exception) {
                Log.e(this.TAG, "Settings were either launched without checking that they are available or an expected error occurred", exception);
            }
        }
        Log.d(this.TAG, "Returning reply [" + jsonReply + "] for request [" + rid + "]");
        if (jsonReply != null) {
            sendReply(rid, jsonReply.toString(), NativeCallResultCode.SUCCESS);
            return true;
        }
        return false;
    }

    private String makeJsonReplyForSingleValue(Object value) {
        JSONObject jsonReply = new JSONObject();
        try {
            jsonReply.put(NativeCallKeys.VALUE, value);
            return !(jsonReply instanceof JSONObject) ? jsonReply.toString() : JSONObjectInstrumentation.toString(jsonReply);
        } catch (JSONException e) {
            Log.e(this.TAG, "Unable to make JSON relpy to Javascript for value [" + value + "]", e);
            return null;
        }
    }

    private boolean checkKindleGameSettingsAvailability() {
        Intent intent = new Intent();
        intent.setAction(GC_KINDLE_SETTINGS_ACTION);
        intent.setPackage(GC_PACKAGE_NAME);
        List<ResolveInfo> list = this.context.getPackageManager().queryIntentActivities(intent, 65536);
        return list.size() > 0;
    }

    private void launchSettings() {
        Intent intent = new Intent();
        intent.setAction(GC_KINDLE_SETTINGS_ACTION);
        intent.setPackage(GC_PACKAGE_NAME);
        intent.setFlags(268500992);
        this.context.startActivity(intent);
    }
}

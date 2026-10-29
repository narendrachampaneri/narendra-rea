package com.amazon.ags.html5.javascript;

import android.content.Context;
import android.os.Handler;
import com.amazon.ags.constants.NativeCallResultCode;
import com.amazon.ags.constants.NativeCallTypes;
import com.amazon.ags.html5.overlay.OverlayManager;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NativeToastCallHandler extends CallHandlerBase {
    private static final Set<String> supportedCalls = new HashSet(Arrays.asList(NativeCallTypes.SHOW_TOAST));
    private final Context context;
    private final OverlayManager overlayManager;

    public NativeToastCallHandler(Context context, Handler uiThreadHandler, OverlayManager overlayManager) {
        super(uiThreadHandler, supportedCalls);
        this.context = context;
        this.overlayManager = overlayManager;
    }

    @Override // com.amazon.ags.html5.javascript.CallHandlerBase
    protected boolean handleMessage(String rid, String nativeCallType, JSONObject request) {
        if (!NativeCallTypes.SHOW_TOAST.equals(nativeCallType)) {
            return false;
        }
        showToast(rid, request);
        return true;
    }

    private void showToast(String rid, JSONObject request) {
        this.overlayManager.showToast(!(request instanceof JSONObject) ? request.toString() : JSONObjectInstrumentation.toString(request));
        sendReply(rid, "{}", NativeCallResultCode.SUCCESS);
    }
}

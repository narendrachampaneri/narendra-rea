package com.amazon.ags.html5.javascript;

import android.os.Handler;
import com.amazon.ags.client.JSONRequest;
import com.amazon.ags.constants.BindingKeys;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.NativeCallTypes;
import com.amazon.ags.html5.service.ServiceHelper;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BackgroundTaskHandler extends CallHandlerBase {
    private static final Set<String> supportedCalls = new HashSet(Arrays.asList(NativeCallTypes.BACKGROUND_TASK));
    private final ServiceHelper serviceHelper;

    public BackgroundTaskHandler(ServiceHelper serviceHelper, Handler uiThreadHandler) {
        super(uiThreadHandler, supportedCalls);
        this.serviceHelper = serviceHelper;
    }

    @Override // com.amazon.ags.html5.javascript.CallHandlerBase
    protected boolean handleMessage(String rid, String nativeCallType, final JSONObject request) {
        if (!NativeCallTypes.BACKGROUND_TASK.equals(nativeCallType)) {
            return false;
        }
        JSONRequest jsonRequest = new JSONRequest() { // from class: com.amazon.ags.html5.javascript.BackgroundTaskHandler.1
            @Override // com.amazon.ags.client.JSONRequest
            public void setResponse(JSONObject response) {
            }

            @Override // com.amazon.ags.client.JSONRequest
            public JSONObject getRequest() {
                try {
                    JSONObject task = request.getJSONObject(NativeCallKeys.PARAMETERS);
                    task.put(BindingKeys.REQUEST_ID_KEY, UUID.randomUUID().toString());
                    return task;
                } catch (JSONException e) {
                    return new JSONObject();
                }
            }
        };
        this.serviceHelper.handleRequestAsync(jsonRequest);
        return true;
    }
}

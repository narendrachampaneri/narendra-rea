package com.amazon.ags.jni.player;

import android.util.Log;
import com.amazon.ags.api.AGResponseCallback;
import com.amazon.ags.api.player.RequestPlayerResponse;
import com.amazon.ags.jni.JniResponseHandler;

/* JADX INFO: loaded from: classes2.dex */
public class RequestLocalPlayerProfileJniResponseHandler extends JniResponseHandler implements AGResponseCallback<RequestPlayerResponse> {
    private static final String TAG = RequestLocalPlayerProfileJniResponseHandler.class.getSimpleName();

    public RequestLocalPlayerProfileJniResponseHandler(int developerTag, long callbackPointer) {
        super(developerTag, callbackPointer);
    }

    @Override // com.amazon.ags.api.AGResponseCallback
    public void onComplete(RequestPlayerResponse result) {
        if (result.isError()) {
            Log.d(TAG, "jniRequestPlayerProfile response - onFailure");
            ProfilesJni.getLocalPlayerProfileResponseFailure(this.m_CallbackPointer, result.getError().ordinal(), this.m_DeveloperTag);
        } else {
            Log.d(TAG, "jniRequestPlayerProfile response - onSuccess");
            ProfilesJni.getLocalPlayerProfileResponseSuccess(result, this.m_CallbackPointer, this.m_DeveloperTag);
        }
    }
}

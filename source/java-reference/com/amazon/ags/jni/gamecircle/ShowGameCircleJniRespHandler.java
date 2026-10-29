package com.amazon.ags.jni.gamecircle;

import android.util.Log;
import com.amazon.ags.api.AGResponseCallback;
import com.amazon.ags.api.RequestResponse;
import com.amazon.ags.jni.AGSJniHandler;
import com.amazon.ags.jni.JniResponseHandler;

/* JADX INFO: loaded from: classes2.dex */
public class ShowGameCircleJniRespHandler extends JniResponseHandler implements AGResponseCallback<RequestResponse> {
    private static String LOG_TAG = "ShowGameCircleJniRespHandler";

    public ShowGameCircleJniRespHandler(int developerTag, long callbackPointer) {
        super(developerTag, callbackPointer);
    }

    @Override // com.amazon.ags.api.AGResponseCallback
    public void onComplete(RequestResponse result) {
        if (result.isError()) {
            Log.d(LOG_TAG, "jniShowGameCircle response - onFailure");
            AGSJniHandler.showGameCircleResponseFailure(this.m_CallbackPointer, result.getError().ordinal(), this.m_DeveloperTag);
        } else {
            Log.d(LOG_TAG, "jniShowGameCircle response - onSuccess");
            AGSJniHandler.showGameCircleResponseSuccess(this.m_CallbackPointer, this.m_DeveloperTag);
        }
    }
}

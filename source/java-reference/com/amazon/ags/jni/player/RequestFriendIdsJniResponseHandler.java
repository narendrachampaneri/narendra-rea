package com.amazon.ags.jni.player;

import android.util.Log;
import com.amazon.ags.api.AGResponseCallback;
import com.amazon.ags.api.player.RequestFriendIdsResponse;
import com.amazon.ags.jni.JniResponseHandler;

/* JADX INFO: loaded from: classes2.dex */
public class RequestFriendIdsJniResponseHandler extends JniResponseHandler implements AGResponseCallback<RequestFriendIdsResponse> {
    private static final String TAG = RequestFriendIdsJniResponseHandler.class.getSimpleName();

    public RequestFriendIdsJniResponseHandler(int developerTag, long callbackPointer) {
        super(developerTag, callbackPointer);
    }

    @Override // com.amazon.ags.api.AGResponseCallback
    public void onComplete(RequestFriendIdsResponse result) {
        if (result.isError()) {
            Log.d(TAG, "jniRequestFriendIds response - onFailure");
            ProfilesJni.getFriendIdsResponseFailure(this.m_CallbackPointer, result.getError().ordinal(), this.m_DeveloperTag);
        } else {
            Log.d(TAG, "jniRequestFriendIds response - onSuccess");
            ProfilesJni.getFriendIdsResponseSuccess(result, this.m_CallbackPointer, this.m_DeveloperTag);
        }
    }
}

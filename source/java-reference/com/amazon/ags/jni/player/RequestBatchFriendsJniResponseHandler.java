package com.amazon.ags.jni.player;

import android.util.Log;
import com.amazon.ags.api.AGResponseCallback;
import com.amazon.ags.api.player.RequestFriendsResponse;
import com.amazon.ags.jni.JniResponseHandler;

/* JADX INFO: loaded from: classes2.dex */
public class RequestBatchFriendsJniResponseHandler extends JniResponseHandler implements AGResponseCallback<RequestFriendsResponse> {
    private static final String TAG = RequestBatchFriendsJniResponseHandler.class.getSimpleName();

    public RequestBatchFriendsJniResponseHandler(int developerTag, long callbackPointer) {
        super(developerTag, callbackPointer);
    }

    @Override // com.amazon.ags.api.AGResponseCallback
    public void onComplete(RequestFriendsResponse result) {
        if (result.isError()) {
            Log.d(TAG, "jniRequestBatchFriends response - onFailure");
            ProfilesJni.getBatchFriendsResponseFailure(this.m_CallbackPointer, result.getError().ordinal(), this.m_DeveloperTag);
        } else {
            Log.d(TAG, "jniRequestBatchFriends response - onSuccess");
            ProfilesJni.getBatchFriendsResponseSuccess(result, this.m_CallbackPointer, this.m_DeveloperTag);
        }
    }
}

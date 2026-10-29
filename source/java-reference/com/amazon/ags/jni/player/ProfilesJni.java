package com.amazon.ags.jni.player;

import com.amazon.ags.api.player.RequestFriendIdsResponse;
import com.amazon.ags.api.player.RequestFriendsResponse;
import com.amazon.ags.api.player.RequestPlayerResponse;

/* JADX INFO: loaded from: classes2.dex */
public class ProfilesJni {
    public static native void callSignedInStateChangedListener(boolean z);

    public static native void getBatchFriendsResponseFailure(long j, int i, int i2);

    public static native void getBatchFriendsResponseSuccess(RequestFriendsResponse requestFriendsResponse, long j, int i);

    public static native void getFriendIdsResponseFailure(long j, int i, int i2);

    public static native void getFriendIdsResponseSuccess(RequestFriendIdsResponse requestFriendIdsResponse, long j, int i);

    public static native void getLocalPlayerProfileResponseFailure(long j, int i, int i2);

    public static native void getLocalPlayerProfileResponseSuccess(RequestPlayerResponse requestPlayerResponse, long j, int i);
}

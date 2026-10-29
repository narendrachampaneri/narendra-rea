package com.amazon.ags.api.player;

import com.amazon.ags.api.AGResponseHandle;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface PlayerClient {
    AGResponseHandle<RequestFriendsResponse> getBatchFriends(List<String> list, Object... objArr);

    AGResponseHandle<RequestFriendIdsResponse> getFriendIds(Object... objArr);

    AGResponseHandle<RequestPlayerResponse> getLocalPlayer(Object... objArr);

    boolean isSignedIn();

    void setSignedInListener(AGSignedInListener aGSignedInListener);
}

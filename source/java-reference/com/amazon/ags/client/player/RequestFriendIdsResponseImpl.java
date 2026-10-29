package com.amazon.ags.client.player;

import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.player.RequestFriendIdsResponse;
import com.amazon.ags.client.RequestResponseImpl;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class RequestFriendIdsResponseImpl extends RequestResponseImpl implements RequestFriendIdsResponse {
    private final List<String> friends;

    public RequestFriendIdsResponseImpl(List<String> friends, int responseCode) {
        super(responseCode);
        this.friends = friends;
    }

    public RequestFriendIdsResponseImpl(int responseCode, ErrorCode errorCode) {
        super(responseCode, errorCode);
        this.friends = null;
    }

    @Override // com.amazon.ags.client.RequestResponseImpl
    public int getEventType() {
        return 19;
    }

    @Override // com.amazon.ags.api.player.RequestFriendIdsResponse
    public List<String> getFriends() {
        return this.friends;
    }
}

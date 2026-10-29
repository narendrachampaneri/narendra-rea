package com.amazon.ags.client.player;

import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.player.Player;
import com.amazon.ags.api.player.RequestFriendsResponse;
import com.amazon.ags.client.RequestResponseImpl;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class RequestFriendsResponseImpl extends RequestResponseImpl implements RequestFriendsResponse {
    List<Player> friendsProfiles;

    public RequestFriendsResponseImpl(List<Player> friends, int responseCode) {
        super(responseCode);
        this.friendsProfiles = friends;
    }

    public RequestFriendsResponseImpl(int responseCode, ErrorCode errorCode) {
        super(responseCode, errorCode);
        this.friendsProfiles = null;
    }

    @Override // com.amazon.ags.client.RequestResponseImpl
    public int getEventType() {
        return 19;
    }

    @Override // com.amazon.ags.api.player.RequestFriendsResponse
    public List<Player> getFriends() {
        return this.friendsProfiles;
    }
}

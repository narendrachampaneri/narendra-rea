package com.amazon.ags.client.player;

import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.api.player.Player;
import com.amazon.ags.api.player.RequestPlayerResponse;
import com.amazon.ags.client.RequestResponseImpl;

/* JADX INFO: loaded from: classes2.dex */
public class RequestPlayerResponseImpl extends RequestResponseImpl implements RequestPlayerResponse {
    private final Player player;

    public RequestPlayerResponseImpl(Player player, int responseCode) {
        super(responseCode);
        this.player = player;
    }

    public RequestPlayerResponseImpl(int responseCode, ErrorCode errorCode) {
        super(responseCode, errorCode);
        this.player = null;
    }

    @Override // com.amazon.ags.client.RequestResponseImpl
    public int getEventType() {
        return 18;
    }

    @Override // com.amazon.ags.api.player.RequestPlayerResponse
    public Player getPlayer() {
        return this.player;
    }
}

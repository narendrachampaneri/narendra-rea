package com.amazon.ags.client.player;

import com.amazon.ags.api.player.Player;

/* JADX INFO: loaded from: classes2.dex */
public class PlayerImpl implements Player {
    private final String avatarUrl;
    private final String playerAlias;
    private final String playerId;

    public PlayerImpl(String playerId, String playerAlias, String avatarUrl) {
        this.playerId = playerId;
        this.playerAlias = playerAlias;
        this.avatarUrl = avatarUrl;
    }

    @Override // com.amazon.ags.api.player.Player
    public String getPlayerId() {
        return this.playerId;
    }

    @Override // com.amazon.ags.api.player.Player
    public final String getAlias() {
        return this.playerAlias;
    }

    @Override // com.amazon.ags.api.player.Player
    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final String toString() {
        return " ID: " + this.playerId + " Alias: " + this.playerAlias + " AvatarUrl: " + this.avatarUrl;
    }
}

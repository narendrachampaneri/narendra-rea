package com.amazon.ags.client.whispersync.storage;

import com.amazon.ags.client.whispersync.InternalGameDataMap;

/* JADX INFO: loaded from: classes2.dex */
public class GameData {
    private InternalGameDataMap gameDataMap;
    private String versionId;

    public GameData(InternalGameDataMap gameDataMap, String versionId) {
        this.gameDataMap = gameDataMap;
        this.versionId = versionId;
    }

    public InternalGameDataMap getGameDataMap() {
        return this.gameDataMap;
    }

    public String getVersionId() {
        return this.versionId;
    }
}

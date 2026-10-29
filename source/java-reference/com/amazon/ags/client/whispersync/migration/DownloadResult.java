package com.amazon.ags.client.whispersync.migration;

import com.amazon.ags.api.whispersync.migration.MigrationResultCode;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadResult {
    private final byte[] gameData;
    private final MigrationResultCode resultCode;

    public DownloadResult(byte[] gameData, MigrationResultCode resultCode) {
        this.gameData = gameData;
        this.resultCode = resultCode;
    }

    public byte[] getGameData() {
        return this.gameData;
    }

    public MigrationResultCode getResultCode() {
        return this.resultCode;
    }
}

package com.amazon.ags.api.whispersync;

import com.amazon.ags.api.whispersync.migration.MigrationCallback;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface WhispersyncClient {
    void flush();

    GameDataMap getGameData();

    void migrateVersion1GameData(MigrationCallback migrationCallback);

    void setWhispersyncEventListener(WhispersyncEventListener whispersyncEventListener);

    void synchronize();

    void unpackVersion1MultiFileGameData(byte[] bArr, File file) throws IOException;
}

package com.amazon.ags.client.whispersync.storage;

import com.amazon.ags.AGSClientException;
import com.amazon.ags.AGSServiceException;
import com.amazon.ags.html5.comm.ConnectionException;

/* JADX INFO: loaded from: classes2.dex */
public interface RemoteStorage {
    GameData retrieve(String str) throws AGSServiceException, ConnectionException, AGSClientException;

    GameData save(GameData gameData) throws AGSServiceException, ConnectionException, AGSClientException;
}

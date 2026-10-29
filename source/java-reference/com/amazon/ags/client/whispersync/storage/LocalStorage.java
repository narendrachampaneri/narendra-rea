package com.amazon.ags.client.whispersync.storage;

import com.amazon.ags.AGSClientException;
import com.amazon.ags.client.whispersync.InternalGameDataMap;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface LocalStorage {
    String getVersionId() throws IOException;

    boolean hasSuccessfullySynchronized();

    void putVersionId(String str) throws IOException;

    InternalGameDataMap retrieve() throws IOException, AGSClientException;

    int save(InternalGameDataMap internalGameDataMap) throws IOException, AGSClientException;
}

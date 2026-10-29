package com.amazon.ags.client.whispersync.marshaller;

import com.amazon.ags.AGSClientException;
import com.amazon.ags.client.whispersync.InternalGameDataMap;

/* JADX INFO: loaded from: classes2.dex */
public interface GameDataMarshaller {
    String composeForDisk(InternalGameDataMap internalGameDataMap) throws AGSClientException;

    String composeForService(InternalGameDataMap internalGameDataMap) throws AGSClientException;

    InternalGameDataMap parse(String str) throws AGSClientException;
}

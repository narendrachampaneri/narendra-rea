package com.amazon.ags.client.whispersync.network;

import com.amazon.ags.AGSClientException;
import com.amazon.ags.AGSServiceException;
import com.amazon.ags.html5.comm.ConnectionException;

/* JADX INFO: loaded from: classes2.dex */
public interface WhispersyncHttpClient {
    WhispersyncResponse getWhisperData(String str) throws AGSServiceException, ConnectionException, AGSClientException;

    WhispersyncResponse postWhisperData(WhispersyncRequest whispersyncRequest) throws AGSServiceException, ConnectionException, AGSClientException;
}

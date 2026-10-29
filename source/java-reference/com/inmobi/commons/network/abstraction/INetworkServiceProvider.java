package com.inmobi.commons.network.abstraction;

import com.inmobi.commons.network.Request;

/* JADX INFO: loaded from: classes.dex */
public interface INetworkServiceProvider {
    void executeTask(Request request, INetworkListener iNetworkListener);
}

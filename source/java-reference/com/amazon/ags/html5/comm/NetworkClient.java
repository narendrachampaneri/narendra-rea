package com.amazon.ags.html5.comm;

import com.amazon.ags.AGSClientException;

/* JADX INFO: loaded from: classes2.dex */
public interface NetworkClient {
    ServiceResponse execute(ServiceRequestBase serviceRequestBase) throws ConnectionException, AGSClientException;
}

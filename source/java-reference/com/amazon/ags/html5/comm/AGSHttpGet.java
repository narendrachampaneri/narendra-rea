package com.amazon.ags.html5.comm;

import java.io.UnsupportedEncodingException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpRequestBase;

/* JADX INFO: loaded from: classes2.dex */
public class AGSHttpGet extends ServiceRequestBase {
    public AGSHttpGet(String endpoint, boolean authenticationRequired) {
        super(endpoint, authenticationRequired);
    }

    @Override // com.amazon.ags.html5.comm.ServiceRequestBase
    final HttpRequestBase prepareHttpRequestBase() throws UnsupportedEncodingException {
        return new HttpGet(constructUri());
    }
}

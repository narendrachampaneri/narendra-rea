package com.amazon.ags.html5.comm;

import java.io.UnsupportedEncodingException;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.entity.StringEntity;

/* JADX INFO: loaded from: classes2.dex */
public class AGSHttpPut extends ServiceRequestBase {
    public AGSHttpPut(String endpoint, boolean authenticationRequired) {
        super(endpoint, authenticationRequired);
    }

    @Override // com.amazon.ags.html5.comm.ServiceRequestBase
    final HttpRequestBase prepareHttpRequestBase() throws UnsupportedEncodingException {
        HttpPut httpPut = new HttpPut(constructUri());
        if (this.requestBody != null) {
            httpPut.setEntity(new StringEntity(this.requestBody, "UTF-8"));
        }
        return httpPut;
    }
}

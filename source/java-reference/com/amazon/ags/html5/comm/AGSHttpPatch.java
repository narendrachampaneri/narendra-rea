package com.amazon.ags.html5.comm;

import java.io.UnsupportedEncodingException;
import org.apache.http.client.methods.HttpPatch;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.entity.StringEntity;

/* JADX INFO: loaded from: classes2.dex */
public class AGSHttpPatch extends ServiceRequestBase {
    public AGSHttpPatch(String endpoint, boolean authenticationRequired) {
        super(endpoint, authenticationRequired);
    }

    @Override // com.amazon.ags.html5.comm.ServiceRequestBase
    public HttpRequestBase prepareHttpRequestBase() throws UnsupportedEncodingException {
        HttpPatch httpPatch = new HttpPatch(constructUri());
        if (this.requestBody != null) {
            httpPatch.setHeader("Content-Type", "application/json-patch+json");
            httpPatch.setEntity(new StringEntity(this.requestBody));
        }
        return httpPatch;
    }
}

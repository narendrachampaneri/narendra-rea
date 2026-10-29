package com.amazon.ags.html5.comm;

import java.io.UnsupportedEncodingException;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.entity.StringEntity;

/* JADX INFO: loaded from: classes2.dex */
public class AGSHttpPost extends ServiceRequestBase {
    public AGSHttpPost(String endpoint, boolean authenticationRequired) {
        super(endpoint, authenticationRequired);
    }

    @Override // com.amazon.ags.html5.comm.ServiceRequestBase
    public HttpRequestBase prepareHttpRequestBase() throws UnsupportedEncodingException {
        HttpPost httpPost = new HttpPost(constructUri());
        if (this.requestBody != null) {
            httpPost.setEntity(new StringEntity(this.requestBody, "UTF-8"));
        }
        return httpPost;
    }
}

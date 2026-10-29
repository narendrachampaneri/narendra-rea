package com.amazon.identity.auth.device.endpoint;

import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;
import java.io.IOException;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;

/* JADX INFO: loaded from: classes.dex */
public interface APTokenRequest extends RequestUrlBuilder {
    HttpResponse executeRequest() throws IOException;

    Header[] getHeaders();

    String getHost(Bundle bundle);

    List<NameValuePair> getPostParameters();

    String getVerbAsString();

    void initializeHeaders() throws AuthError;

    void initializeHttp() throws AuthError;

    void initializePostParams() throws AuthError;

    void initializeUserAgent();

    void postExecute(HttpResponse httpResponse) throws AuthError;

    void preExecute() throws AuthError;

    void setSocketTimeout(int i);

    TokenResponse submit() throws AuthError;
}

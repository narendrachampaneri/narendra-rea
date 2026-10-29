package com.mopub.network;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.util.ResponseHeader;
import com.mopub.volley.AuthFailureError;
import com.mopub.volley.Request;
import com.mopub.volley.toolbox.HurlStack;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpResponse;

/* JADX INFO: loaded from: classes.dex */
public class RequestQueueHttpStack extends HurlStack {

    @NonNull
    private final String mUserAgent;

    public RequestQueueHttpStack(@NonNull String userAgent) {
        this(userAgent, null);
    }

    public RequestQueueHttpStack(@NonNull String userAgent, @Nullable HurlStack.UrlRewriter urlRewriter) {
        this(userAgent, urlRewriter, null);
    }

    public RequestQueueHttpStack(@NonNull String userAgent, @Nullable HurlStack.UrlRewriter urlRewriter, @Nullable SSLSocketFactory sslSocketFactory) {
        super(urlRewriter, sslSocketFactory);
        this.mUserAgent = userAgent;
    }

    @Override // com.mopub.volley.toolbox.HurlStack, com.mopub.volley.toolbox.HttpStack
    public HttpResponse performRequest(@NonNull Request<?> request, @Nullable Map<String, String> additionalHeaders) throws IOException, AuthFailureError {
        if (additionalHeaders == null) {
            additionalHeaders = new TreeMap<>();
        }
        additionalHeaders.put(ResponseHeader.USER_AGENT.getKey(), this.mUserAgent);
        return super.performRequest(request, additionalHeaders);
    }
}

package com.mopub.volley.toolbox;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class JsonRequest<T> extends Request<T> {
    private static final String PROTOCOL_CHARSET = "utf-8";
    private static final String PROTOCOL_CONTENT_TYPE = String.format("application/json; charset=%s", PROTOCOL_CHARSET);
    private final Response.Listener<T> mListener;
    private final String mRequestBody;

    @Override // com.mopub.volley.Request
    protected abstract Response<T> parseNetworkResponse(NetworkResponse networkResponse);

    public JsonRequest(String url, String requestBody, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        this(-1, url, requestBody, listener, errorListener);
    }

    public JsonRequest(int method, String url, String requestBody, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        super(method, url, errorListener);
        this.mListener = listener;
        this.mRequestBody = requestBody;
    }

    @Override // com.mopub.volley.Request
    protected void deliverResponse(T response) {
        this.mListener.onResponse(response);
    }

    @Override // com.mopub.volley.Request
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    @Override // com.mopub.volley.Request
    public byte[] getPostBody() {
        return getBody();
    }

    @Override // com.mopub.volley.Request
    public String getBodyContentType() {
        return PROTOCOL_CONTENT_TYPE;
    }

    @Override // com.mopub.volley.Request
    public byte[] getBody() {
        try {
            if (this.mRequestBody == null) {
                return null;
            }
            return this.mRequestBody.getBytes(PROTOCOL_CHARSET);
        } catch (UnsupportedEncodingException e) {
            VolleyLog.wtf("Unsupported Encoding while trying to get the bytes of %s using %s", this.mRequestBody, PROTOCOL_CHARSET);
            return null;
        }
    }
}

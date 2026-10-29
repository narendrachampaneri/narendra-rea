package com.mopub.volley.toolbox;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class StringRequest extends Request<String> {
    private final Response.Listener<String> mListener;

    public StringRequest(int method, String url, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        super(method, url, errorListener);
        this.mListener = listener;
    }

    public StringRequest(String url, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        this(0, url, listener, errorListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    public void deliverResponse(String response) {
        this.mListener.onResponse(response);
    }

    @Override // com.mopub.volley.Request
    protected Response<String> parseNetworkResponse(NetworkResponse response) {
        String parsed;
        try {
            parsed = new String(response.data, HttpHeaderParser.parseCharset(response.headers));
        } catch (UnsupportedEncodingException e) {
            parsed = new String(response.data);
        }
        return Response.success(parsed, HttpHeaderParser.parseCacheHeaders(response));
    }
}

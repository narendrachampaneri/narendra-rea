package com.mopub.volley.toolbox;

import android.os.Handler;
import android.os.Looper;
import com.mopub.volley.Cache;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;

/* JADX INFO: loaded from: classes2.dex */
public class ClearCacheRequest extends Request<Object> {
    private final Cache mCache;
    private final Runnable mCallback;

    public ClearCacheRequest(Cache cache, Runnable callback) {
        super(0, null, null);
        this.mCache = cache;
        this.mCallback = callback;
    }

    @Override // com.mopub.volley.Request
    public boolean isCanceled() {
        this.mCache.clear();
        if (this.mCallback != null) {
            Handler handler = new Handler(Looper.getMainLooper());
            handler.postAtFrontOfQueue(this.mCallback);
            return true;
        }
        return true;
    }

    @Override // com.mopub.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.IMMEDIATE;
    }

    @Override // com.mopub.volley.Request
    protected Response<Object> parseNetworkResponse(NetworkResponse response) {
        return null;
    }

    @Override // com.mopub.volley.Request
    protected void deliverResponse(Object response) {
    }
}

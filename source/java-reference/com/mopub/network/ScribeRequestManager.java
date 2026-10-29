package com.mopub.network;

import android.os.Looper;
import android.support.annotation.NonNull;
import com.mopub.common.logging.MoPubLog;
import com.mopub.volley.Request;
import com.mopub.volley.VolleyError;

/* JADX INFO: loaded from: classes.dex */
public class ScribeRequestManager extends RequestManager<ScribeRequest.ScribeRequestFactory> implements ScribeRequest.Listener {
    public ScribeRequestManager(Looper looper) {
        super(looper);
    }

    @Override // com.mopub.network.RequestManager
    @NonNull
    Request<?> createRequest() {
        return ((ScribeRequest.ScribeRequestFactory) this.mRequestFactory).createRequest(this);
    }

    @Override // com.mopub.network.ScribeRequest.Listener
    public void onResponse() {
        MoPubLog.d("Successfully scribed events");
        this.mHandler.post(new Runnable() { // from class: com.mopub.network.ScribeRequestManager.1
            @Override // java.lang.Runnable
            public void run() {
                ScribeRequestManager.this.clearRequest();
            }
        });
    }

    @Override // com.mopub.volley.Response.ErrorListener
    public void onErrorResponse(final VolleyError volleyError) {
        this.mHandler.post(new Runnable() { // from class: com.mopub.network.ScribeRequestManager.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ScribeRequestManager.this.mBackoffPolicy.backoff(volleyError);
                    ScribeRequestManager.this.makeRequestInternal();
                } catch (VolleyError e) {
                    MoPubLog.d("Failed to Scribe events: " + volleyError);
                    ScribeRequestManager.this.clearRequest();
                }
            }
        });
    }
}

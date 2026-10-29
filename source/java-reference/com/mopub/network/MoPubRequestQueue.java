package com.mopub.network;

import android.os.Handler;
import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.volley.Cache;
import com.mopub.volley.Network;
import com.mopub.volley.Request;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.ResponseDelivery;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MoPubRequestQueue extends RequestQueue {
    private static final int CAPACITY = 10;

    @NonNull
    private final Map<Request<?>, DelayedRequestHelper> mDelayedRequests;

    MoPubRequestQueue(Cache cache, Network network, int threadPoolSize, ResponseDelivery delivery) {
        super(cache, network, threadPoolSize, delivery);
        this.mDelayedRequests = new HashMap(10);
    }

    MoPubRequestQueue(Cache cache, Network network, int threadPoolSize) {
        super(cache, network, threadPoolSize);
        this.mDelayedRequests = new HashMap(10);
    }

    MoPubRequestQueue(Cache cache, Network network) {
        super(cache, network);
        this.mDelayedRequests = new HashMap(10);
    }

    public void addDelayedRequest(@NonNull Request<?> request, int delayMs) {
        Preconditions.checkNotNull(request);
        addDelayedRequest(request, new DelayedRequestHelper(this, request, delayMs));
    }

    @VisibleForTesting
    void addDelayedRequest(@NonNull Request<?> request, @NonNull DelayedRequestHelper delayedRequestHelper) {
        Preconditions.checkNotNull(delayedRequestHelper);
        if (this.mDelayedRequests.containsKey(request)) {
            cancel(request);
        }
        delayedRequestHelper.start();
        this.mDelayedRequests.put(request, delayedRequestHelper);
    }

    @Override // com.mopub.volley.RequestQueue
    public void cancelAll(@NonNull RequestQueue.RequestFilter filter) {
        Preconditions.checkNotNull(filter);
        super.cancelAll(filter);
        Iterator<Map.Entry<Request<?>, DelayedRequestHelper>> iterator = this.mDelayedRequests.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry<Request<?>, DelayedRequestHelper> entry = iterator.next();
            if (filter.apply(entry.getKey())) {
                entry.getKey().cancel();
                entry.getValue().cancel();
                iterator.remove();
            }
        }
    }

    @Override // com.mopub.volley.RequestQueue
    public void cancelAll(@NonNull final Object tag) {
        Preconditions.checkNotNull(tag);
        super.cancelAll(tag);
        cancelAll(new RequestQueue.RequestFilter() { // from class: com.mopub.network.MoPubRequestQueue.1
            @Override // com.mopub.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> request) {
                return request.getTag() == tag;
            }
        });
    }

    public void cancel(@NonNull final Request<?> request) {
        Preconditions.checkNotNull(request);
        cancelAll(new RequestQueue.RequestFilter() { // from class: com.mopub.network.MoPubRequestQueue.2
            @Override // com.mopub.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> _request) {
                return request == _request;
            }
        });
    }

    class DelayedRequestHelper {
        final int mDelayMs;

        @NonNull
        final Runnable mDelayedRunnable;

        @NonNull
        final Handler mHandler;

        DelayedRequestHelper(@NonNull MoPubRequestQueue this$0, Request<?> request, int delayMs) {
            this(request, delayMs, new Handler());
        }

        @VisibleForTesting
        DelayedRequestHelper(final Request<?> request, @NonNull int delayMs, Handler handler) {
            this.mDelayMs = delayMs;
            this.mHandler = handler;
            this.mDelayedRunnable = new Runnable() { // from class: com.mopub.network.MoPubRequestQueue.DelayedRequestHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    MoPubRequestQueue.this.mDelayedRequests.remove(request);
                    MoPubRequestQueue.this.add(request);
                }
            };
        }

        void start() {
            this.mHandler.postDelayed(this.mDelayedRunnable, this.mDelayMs);
        }

        void cancel() {
            this.mHandler.removeCallbacks(this.mDelayedRunnable);
        }
    }

    @NonNull
    @VisibleForTesting
    @Deprecated
    Map<Request<?>, DelayedRequestHelper> getDelayedRequests() {
        return this.mDelayedRequests;
    }
}

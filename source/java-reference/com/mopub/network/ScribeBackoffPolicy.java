package com.mopub.network;

import com.mopub.common.VisibleForTesting;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.NoConnectionError;
import com.mopub.volley.VolleyError;

/* JADX INFO: loaded from: classes.dex */
public class ScribeBackoffPolicy extends BackoffPolicy {
    private static final int BACKOFF_MULTIPLIER = 2;
    private static final int DEFAULT_BACKOFF_TIME_MS = 60000;
    private static final int MAX_RETRIES = 5;

    public ScribeBackoffPolicy() {
        this(60000, 5, 2);
    }

    @VisibleForTesting
    ScribeBackoffPolicy(int defaultBackoffTimeMs, int maxRetries, int backoffMultiplier) {
        this.mDefaultBackoffTimeMs = defaultBackoffTimeMs;
        this.mMaxRetries = maxRetries;
        this.mBackoffMultiplier = backoffMultiplier;
    }

    @Override // com.mopub.network.BackoffPolicy
    public void backoff(VolleyError volleyError) throws VolleyError {
        if (!hasAttemptRemaining()) {
            throw volleyError;
        }
        if (volleyError instanceof NoConnectionError) {
            updateBackoffTime();
            return;
        }
        NetworkResponse networkResponse = volleyError.networkResponse;
        if (networkResponse == null) {
            throw volleyError;
        }
        if (networkResponse.statusCode == 503 || networkResponse.statusCode == 504) {
            updateBackoffTime();
            return;
        }
        throw volleyError;
    }

    private void updateBackoffTime() {
        double multiplier = Math.pow(this.mBackoffMultiplier, this.mRetryCount);
        this.mBackoffMs = (int) (((double) this.mDefaultBackoffTimeMs) * multiplier);
        this.mRetryCount++;
    }
}

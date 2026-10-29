package com.amazon.insights.core;

import com.amazon.insights.InsightsCallback;
import com.amazon.insights.InsightsHandler;
import com.amazon.insights.error.InsightsError;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultInsightsHandler<T> implements InsightsHandler<T> {
    private InsightsCallback<T> callback = null;
    private T response = null;
    private InsightsError error = null;

    @Override // com.amazon.insights.InsightsHandler
    public synchronized void setCallback(InsightsCallback<T> callback) {
        boolean existingCallback = this.callback != null;
        this.callback = callback;
        if (!existingCallback) {
            if (this.response != null) {
                onComplete(this.response);
            } else if (this.error != null) {
                onError(this.error);
            }
        }
    }

    public synchronized void onComplete(T response) {
        this.response = response;
        if (this.callback != null && this.response != null) {
            this.callback.onComplete(this.response);
        }
    }

    public synchronized void onError(InsightsError error) {
        this.error = error;
        if (this.callback != null && this.error != null) {
            this.callback.onError(this.error);
        }
    }
}

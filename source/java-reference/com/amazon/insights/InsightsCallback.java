package com.amazon.insights;

import com.amazon.insights.core.log.Logger;
import com.amazon.insights.error.InsightsError;

/* JADX INFO: loaded from: classes2.dex */
public abstract class InsightsCallback<T> {
    private static final Logger logger = Logger.getLogger(InsightsCallback.class);

    public abstract void onComplete(T t);

    protected InsightsCallback() {
    }

    public void onError(InsightsError error) {
        logger.deve(error.getMessage());
    }
}

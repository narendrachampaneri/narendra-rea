package com.amazon.ags.api;

import com.amazon.ags.api.RequestResponse;

/* JADX INFO: loaded from: classes2.dex */
public interface GCResponseHandle<T extends RequestResponse> {
    T getResponse();

    boolean isDone();
}

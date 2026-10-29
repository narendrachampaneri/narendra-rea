package com.amazon.ags.api;

import com.amazon.ags.api.RequestResponse;

/* JADX INFO: loaded from: classes2.dex */
public interface AGResponseHandle<T extends RequestResponse> {
    T getResponse();

    AGHandleStatus getStatus();

    void setCallback(AGResponseCallback<T> aGResponseCallback);
}

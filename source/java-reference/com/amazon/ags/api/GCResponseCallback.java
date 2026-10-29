package com.amazon.ags.api;

import com.amazon.ags.api.RequestResponse;

/* JADX INFO: loaded from: classes2.dex */
public interface GCResponseCallback<T extends RequestResponse> {
    void onFailure(int i, ErrorCode errorCode);

    void onSuccess(T t);
}

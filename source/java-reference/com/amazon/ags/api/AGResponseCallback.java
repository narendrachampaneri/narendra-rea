package com.amazon.ags.api;

import com.amazon.ags.api.RequestResponse;

/* JADX INFO: loaded from: classes2.dex */
public interface AGResponseCallback<T extends RequestResponse> {
    void onComplete(T t);
}

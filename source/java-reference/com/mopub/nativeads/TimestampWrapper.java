package com.mopub.nativeads;

import android.os.SystemClock;
import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
class TimestampWrapper<T> {
    long mCreatedTimestamp = SystemClock.uptimeMillis();

    @NonNull
    final T mInstance;

    TimestampWrapper(@NonNull T instance) {
        this.mInstance = instance;
    }
}

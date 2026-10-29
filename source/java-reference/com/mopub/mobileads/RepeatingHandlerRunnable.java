package com.mopub.mobileads;

import android.os.Handler;
import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public abstract class RepeatingHandlerRunnable implements Runnable {

    @NonNull
    protected final Handler mHandler;
    private volatile boolean mIsRunning;
    private volatile long mUpdateIntervalMillis;

    public abstract void doWork();

    RepeatingHandlerRunnable(@NonNull Handler handler) {
        Preconditions.checkNotNull(handler);
        this.mHandler = handler;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mIsRunning) {
            doWork();
            this.mHandler.postDelayed(this, this.mUpdateIntervalMillis);
        }
    }

    public void startRepeating(long intervalMillis) {
        Preconditions.checkArgument(intervalMillis > 0, "intervalMillis must be greater than 0. Saw: %d", Long.valueOf(intervalMillis));
        this.mUpdateIntervalMillis = intervalMillis;
        if (!this.mIsRunning) {
            this.mIsRunning = true;
            this.mHandler.post(this);
        }
    }

    public void stop() {
        this.mIsRunning = false;
    }

    @VisibleForTesting
    boolean shouldBeRunning() {
        return this.mIsRunning;
    }
}

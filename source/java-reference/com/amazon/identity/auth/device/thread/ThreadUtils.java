package com.amazon.identity.auth.device.thread;

import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public final class ThreadUtils {
    private static int sThreadNum = 0;
    public static final Executor THREAD_POOL = Executors.newCachedThreadPool(new ThreadFactory() { // from class: com.amazon.identity.auth.device.thread.ThreadUtils.1
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r) {
            return new Thread(r, "AmazonAuthorzationLibrary#" + ThreadUtils.access$004());
        }
    });

    static /* synthetic */ int access$004() {
        int i = sThreadNum + 1;
        sThreadNum = i;
        return i;
    }

    private ThreadUtils() {
    }

    public static boolean isRunningOnMainThread() {
        return Looper.getMainLooper() != null && Looper.getMainLooper() == Looper.myLooper();
    }
}

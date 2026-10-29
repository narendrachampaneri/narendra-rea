package com.amazon.ags.client.whispersync;

import android.util.Log;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class GameDataLock {
    private static final String TAG = "GC_Whispersync";
    private static final ReentrantLock lock = new ReentrantLock(true);

    public static void lock() {
        long time = System.currentTimeMillis();
        lock.lock();
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "Waited " + (System.currentTimeMillis() - time) + " msec. for lock");
        }
    }

    public static void unlock() {
        lock.unlock();
    }
}

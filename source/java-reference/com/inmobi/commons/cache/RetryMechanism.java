package com.inmobi.commons.cache;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class RetryMechanism {
    private Timer a;
    private int b = 0;
    private int c;
    private int d;

    public interface RetryRunnable {
        void completed();

        void run() throws Exception;
    }

    static /* synthetic */ int a(RetryMechanism retryMechanism) {
        int i = retryMechanism.b;
        retryMechanism.b = i + 1;
        return i;
    }

    public RetryMechanism(int i, int i2, Timer timer) {
        this.c = 0;
        this.d = 1000;
        this.c = i;
        this.d = i2;
        this.a = timer;
    }

    public void rescheduleTimer(RetryRunnable retryRunnable) {
        this.b = 0;
        a(retryRunnable, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final RetryRunnable retryRunnable, int i) {
        this.a.schedule(new TimerTask() { // from class: com.inmobi.commons.cache.RetryMechanism.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                try {
                    retryRunnable.run();
                    retryRunnable.completed();
                } catch (Exception e) {
                    RetryMechanism.a(RetryMechanism.this);
                    if (RetryMechanism.this.b > RetryMechanism.this.c) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception occured while running retry mechanism and will the limit for retrying has been reached.");
                        retryRunnable.completed();
                    } else {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception occured while running retry mechanism and will retry in " + (RetryMechanism.this.b * RetryMechanism.this.d) + " ms");
                        RetryMechanism.this.a(retryRunnable, RetryMechanism.this.b * RetryMechanism.this.d);
                    }
                }
            }
        }, i);
    }
}

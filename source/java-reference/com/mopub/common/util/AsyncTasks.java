package com.mopub.common.util;

import android.annotation.TargetApi;
import android.os.AsyncTask;
import android.os.Build;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.newrelic.agent.android.instrumentation.AsyncTaskInstrumentation;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public class AsyncTasks {
    private static Executor sExecutor;

    static {
        init();
    }

    @TargetApi(11)
    private static void init() {
        if (Build.VERSION.SDK_INT >= 11) {
            sExecutor = AsyncTask.THREAD_POOL_EXECUTOR;
        } else {
            sExecutor = Executors.newSingleThreadExecutor();
        }
    }

    @VisibleForTesting
    public static void setExecutor(Executor executor) {
        sExecutor = executor;
    }

    @TargetApi(11)
    public static <P> void safeExecuteOnExecutor(AsyncTask<P, ?, ?> asyncTask, P... params) {
        Preconditions.checkNotNull(asyncTask, "Unable to execute null AsyncTask.");
        Preconditions.checkUiThread("AsyncTask must be executed on the main thread");
        if (Build.VERSION.SDK_INT >= 11) {
            Executor executor = sExecutor;
            if (asyncTask instanceof AsyncTask) {
                AsyncTaskInstrumentation.executeOnExecutor(asyncTask, executor, params);
                return;
            } else {
                asyncTask.executeOnExecutor(executor, params);
                return;
            }
        }
        if (!(asyncTask instanceof AsyncTask)) {
            asyncTask.execute(params);
        } else {
            AsyncTaskInstrumentation.execute(asyncTask, params);
        }
    }
}

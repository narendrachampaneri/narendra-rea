package com.amazon.ags.storage;

import android.text.TextUtils;
import android.util.Log;
import com.amazon.ags.html5.service.ServiceHelper;
import com.amazon.ags.html5.util.GlobalState;
import com.amazon.ags.html5.util.NetworkUtil;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class AGSAsyncOfflineEventManager extends AGSOfflineEventManager {
    private final GlobalState globalState;
    private Thread worker;
    private static final long WORKER_THREAD_SLEEP_TIME_MS = TimeUnit.SECONDS.toMillis(5);
    private static final String TAG = "GC_" + AGSAsyncOfflineEventManager.class.getSimpleName();

    public AGSAsyncOfflineEventManager(SQLiteOfflineEventStorage storage, NetworkUtil networkUtil, ServiceHelper serviceHelper, GlobalState globalState) {
        super(storage, networkUtil, serviceHelper);
        this.globalState = globalState;
        startWorker();
    }

    @Override // com.amazon.ags.storage.AGSOfflineEventManager, com.amazon.ags.storage.OfflineEventManager
    public void onPause() {
        super.onPause();
        shutdownWorker();
    }

    @Override // com.amazon.ags.storage.AGSOfflineEventManager, com.amazon.ags.storage.OfflineEventManager
    public void onResume() {
        super.onResume();
        startWorker();
    }

    private synchronized void shutdownWorker() {
        if (this.worker != null) {
            synchronized (AGSAsyncOfflineEventManager.class) {
                if (this.worker != null) {
                    this.worker.interrupt();
                    this.worker = null;
                }
            }
        }
    }

    private synchronized void startWorker() {
        if (this.worker == null) {
            synchronized (AGSAsyncOfflineEventManager.class) {
                if (this.worker == null) {
                    this.worker = new WorkerThread();
                    this.worker.start();
                }
            }
        }
    }

    private class WorkerThread extends Thread {
        private WorkerThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (isAlive() && !isInterrupted()) {
                try {
                    sleep(AGSAsyncOfflineEventManager.WORKER_THREAD_SLEEP_TIME_MS);
                    AGSAsyncOfflineEventManager.this.handleWorkerThreadWork();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
            Log.d("AGSWorkerThread", "Worker thread died.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWorkerThreadWork() {
        if (this.globalState != null && !TextUtils.isEmpty(this.globalState.getPlayerId()) && super.getNetworkUtil() != null && super.getNetworkUtil().isNetworkConnected()) {
            try {
                OfflineEventManager.OfflineEventTuple eventTuple = getNextEvent();
                if (eventTuple != null) {
                    super.processOfflineEvent(eventTuple);
                }
            } catch (OfflineEventException e) {
                Log.e(TAG, "Failed to process event: ", e);
            }
        }
    }
}

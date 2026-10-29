package com.amazon.ags.client.whispersync;

import android.util.Log;
import com.amazon.ags.client.metrics.EventCollectorClient;

/* JADX INFO: loaded from: classes2.dex */
public class SynchronizationManager {
    private static final String TAG = "GC_Whispersync";
    private final DiskSynchronizer diskSynchronizer;
    private final WhispersyncEventPoster eventPoster;
    private final SyncRequestState syncRequestState;
    private CloudSynchronizer cloudSynchronizer = null;
    private boolean diskSyncInProgress = false;
    private boolean cloudSyncInProgress = false;

    public SynchronizationManager(DiskSynchronizer diskSynchronizer, SyncRequestState syncRequestState, WhispersyncEventPoster eventPoster) {
        this.diskSynchronizer = diskSynchronizer;
        this.syncRequestState = syncRequestState;
        this.eventPoster = eventPoster;
    }

    public void setCloudSynchronizer(CloudSynchronizer cloudSynchronizer) {
        this.cloudSynchronizer = cloudSynchronizer;
    }

    public void syncActively() {
        this.syncRequestState.setDiskWriteRequested(true);
        this.syncRequestState.setCloudWriteRequested(true);
        this.syncRequestState.setActiveCloudWrite(true);
        startDiskSyncThread();
    }

    public void syncPassively() {
        this.syncRequestState.setDiskWriteRequested(true);
        this.syncRequestState.setCloudWriteRequested(true);
        this.diskSynchronizer.notifyDataChanged();
        startDiskSyncThread();
    }

    public void flush() {
        this.diskSynchronizer.syncToDiskNow();
    }

    public synchronized void syncFromDiskToMemory() {
        this.diskSynchronizer.loadFromDisk();
    }

    public void setEventCollectorClient(EventCollectorClient eventCollectorClient) {
        if (this.diskSynchronizer != null) {
            this.diskSynchronizer.setEventCollectorClient(eventCollectorClient);
        }
        if (this.cloudSynchronizer != null) {
            this.cloudSynchronizer.setEventCollectorClient(eventCollectorClient);
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.amazon.ags.client.whispersync.SynchronizationManager$1] */
    private synchronized void startDiskSyncThread() {
        if (!this.diskSyncInProgress) {
            this.diskSyncInProgress = true;
            new Thread() { // from class: com.amazon.ags.client.whispersync.SynchronizationManager.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    while (SynchronizationManager.this.syncRequestState.isDiskWriteRequested()) {
                        SynchronizationManager.this.syncRequestState.setDiskWriteRequested(false);
                        SynchronizationManager.this.diskSynchronizer.syncToDisk();
                    }
                    SynchronizationManager.this.startCloudSyncThread();
                    SynchronizationManager.this.diskSyncInProgress = false;
                }
            }.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.amazon.ags.client.whispersync.SynchronizationManager$2] */
    public synchronized void startCloudSyncThread() {
        if (this.cloudSynchronizer == null) {
            Log.e(TAG, "WhispersyncClient has not completed initialization.  Cloud synchronization not available yet");
            this.eventPoster.postEvent(WhispersyncEvent.ERROR_CLIENT);
        } else if (!this.cloudSyncInProgress) {
            this.cloudSyncInProgress = true;
            new Thread() { // from class: com.amazon.ags.client.whispersync.SynchronizationManager.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    while (SynchronizationManager.this.syncRequestState.isCloudWriteRequested()) {
                        SynchronizationManager.this.syncRequestState.setCloudWriteRequested(false);
                        SynchronizationManager.this.cloudSynchronizer.syncToCloud();
                        if (SynchronizationManager.this.syncRequestState.isDiskWriteRequested()) {
                            SynchronizationManager.this.flush();
                        }
                    }
                    SynchronizationManager.this.cloudSyncInProgress = false;
                }
            }.start();
        }
    }
}

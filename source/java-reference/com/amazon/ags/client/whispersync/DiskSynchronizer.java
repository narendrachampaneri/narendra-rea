package com.amazon.ags.client.whispersync;

import android.util.Log;
import com.amazon.ags.AGSClientException;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetrics;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetricsFactory;
import com.amazon.ags.client.whispersync.storage.LocalStorage;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class DiskSynchronizer {
    private static final String TAG = "GC_Whispersync";
    private EventCollectorClient eventCollectorClient;
    private final InternalGameDataMap gameDataMap;
    private final LocalStorage localStorage;
    private final QuietPeriodListener quietListener;
    private final SyncRequestState syncRequestState;
    private final WhispersyncEventPoster whispersyncEventPoster;

    public DiskSynchronizer(InternalGameDataMap gameDataMap, LocalStorage localStorage, SyncRequestState syncRequestState, QuietPeriodListener quietListener, WhispersyncEventPoster whispersyncEventPoster, EventCollectorClient eventCollectorClient) {
        this.gameDataMap = gameDataMap;
        this.localStorage = localStorage;
        this.syncRequestState = syncRequestState;
        this.quietListener = quietListener;
        this.whispersyncEventPoster = whispersyncEventPoster;
        this.eventCollectorClient = eventCollectorClient;
    }

    public void notifyDataChanged() {
        this.quietListener.breakSilence();
    }

    public void loadFromDisk() {
        long start = System.currentTimeMillis();
        Log.d(TAG, "Initial load from disk started");
        boolean succeeded = false;
        try {
            InternalGameDataMap gameDataMapOnDisk = this.localStorage.retrieve();
            this.gameDataMap.merge(gameDataMapOnDisk);
            succeeded = true;
        } catch (AGSClientException e) {
            Log.e(TAG, "Initial load from disk failed", e);
        } catch (IOException e2) {
            Log.e(TAG, "Initial load from disk failed", e2);
            return;
        }
        long end = System.currentTimeMillis();
        Log.d(TAG, "Initial load from disk completed in " + (end - start) + " msec.");
        reportBooleanEvent(WhispersyncMetrics.WHISPERSYNC_DISK_TO_MEMORY_SYNC_METRIC, end - start, succeeded);
    }

    public void syncToDisk() {
        this.quietListener.blockUntilQuiet();
        syncToDiskNow();
    }

    public synchronized void syncToDiskNow() {
        try {
            this.syncRequestState.setDiskWriteRequested(false);
            Log.d(TAG, "Starting write to file system");
            try {
                InternalGameDataMap gameDataMapInMemory = this.gameDataMap.lockAndCopy();
                int bytesWritten = this.localStorage.save(gameDataMapInMemory);
                Log.d(TAG, "Completed write of " + bytesWritten + " bytes to file system");
                this.whispersyncEventPoster.postEvent(WhispersyncEvent.DISK_WRITE_COMPLETE);
            } catch (AGSClientException e) {
                Log.e(TAG, "Unable to write to file system.", e);
                reportCountEvent(WhispersyncMetrics.WHISPERSYNC_CLOUD_SYNC_CLIENT_EXCEPTION_METRIC);
            } catch (IOException e2) {
                Log.e(TAG, "Unable to write to file system.", e2);
                reportCountEvent(WhispersyncMetrics.WHISPERSYNC_CLOUD_SYNC_IO_EXCEPTION_METRIC);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setEventCollectorClient(EventCollectorClient eventCollectorClient) {
        if (eventCollectorClient != null) {
            this.eventCollectorClient = eventCollectorClient;
        }
    }

    private void reportBooleanEvent(String name, long timeElapsed, boolean succeeded) {
        GameCircleGenericEvent event = WhispersyncMetricsFactory.createBooleanGenericEvent(name, 1, Long.valueOf(timeElapsed), Boolean.valueOf(succeeded));
        if (event != null) {
            this.eventCollectorClient.reportGenericEvent(event);
        }
    }

    private void reportTimeEvent(String name, long timeElapsed) {
        GameCircleGenericEvent event = WhispersyncMetricsFactory.createGenericEvent(name, 1, Long.valueOf(timeElapsed));
        if (event != null) {
            this.eventCollectorClient.reportGenericEvent(event);
        }
    }

    private void reportCountEvent(String name) {
        GameCircleGenericEvent event = WhispersyncMetricsFactory.createCountEvent(name, 1);
        if (event != null) {
            this.eventCollectorClient.reportGenericEvent(event);
        }
    }
}

package com.amazon.ags.client.whispersync;

import android.util.Log;
import com.amazon.ags.AGSClientException;
import com.amazon.ags.AGSServiceException;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetrics;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetricsFactory;
import com.amazon.ags.client.whispersync.settings.WhispersyncUserSettingsManager;
import com.amazon.ags.client.whispersync.storage.GameData;
import com.amazon.ags.client.whispersync.storage.LocalStorage;
import com.amazon.ags.client.whispersync.storage.RemoteStorage;
import com.amazon.ags.html5.comm.ConnectionException;
import com.amazon.ags.html5.util.NetworkUtil;
import com.amazon.ags.jni.whispersync.WhispersyncJni;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class CloudSynchronizer {
    private static final long MIN_TIME_BETWEEN_ACTIVE_SYNCS_MS = TimeUnit.SECONDS.toMillis(10);
    private static final long MIN_TIME_BETWEEN_PASSIVE_SYNCS_MS = TimeUnit.SECONDS.toMillis(30);
    private static final String TAG = "GC_Whispersync";
    private final RemoteStorage cloudStorage;
    private EventCollectorClient eventCollectorClient;
    private final WhispersyncEventPoster eventPoster;
    private final InternalGameDataMap gameDataMap;
    private final LocalStorage localStorage;
    private final NetworkUtil networkUtil;
    private long priorSyncTime;
    private final WhispersyncUserSettingsManager settingsManager;
    private final SyncRequestState syncRequestState;

    public CloudSynchronizer(InternalGameDataMap gameDataMap, LocalStorage localStorage, RemoteStorage cloudStorage, SyncRequestState syncRequestState, WhispersyncEventPoster eventPoster, EventCollectorClient eventCollectorClient, NetworkUtil networkUtil, WhispersyncUserSettingsManager settingsManager) {
        this.gameDataMap = gameDataMap;
        this.localStorage = localStorage;
        this.cloudStorage = cloudStorage;
        this.syncRequestState = syncRequestState;
        this.eventPoster = eventPoster;
        this.eventCollectorClient = eventCollectorClient;
        this.networkUtil = networkUtil;
        this.settingsManager = settingsManager;
    }

    public void syncToCloud() {
        try {
            if (hasSuccessfullySynchronized()) {
                uploadToCloud();
            } else {
                Log.d(TAG, "Never synced from cloud.  Attempting initial download and merge.");
                downloadFromCloud();
                if (hasSuccessfullySynchronized()) {
                    this.eventPoster.postEvent(WhispersyncEvent.FIRST_SYNC);
                    uploadToCloud();
                }
            }
        } catch (AGSClientException e) {
            Log.e(TAG, "Unable to perform full sync.", e);
            this.eventPoster.postEvent(WhispersyncEvent.ERROR_CLIENT);
            reportCountEvent(WhispersyncMetrics.WHISPERSYNC_CLOUD_SYNC_CLIENT_EXCEPTION_METRIC);
        } catch (AGSServiceException e2) {
            Log.e(TAG, "Unable to perform full sync.", e2);
            this.eventPoster.postEvent(WhispersyncEvent.ERROR_SERVICE);
            reportCountEvent(WhispersyncMetrics.WHISPERSYNC_CLOUD_SYNC_SERVER_EXCEPTION_METRIC);
        } catch (ConnectionException e3) {
            Log.e(TAG, "Unable to perform full sync due to Network Connection", e3);
            this.eventPoster.postEvent(WhispersyncEvent.OFFLINE);
            reportCountEvent(WhispersyncMetrics.WHISPERSYNC_CLOUD_SYNC_NETWORK_EXCEPTION_METRIC);
        } catch (IOException e4) {
            Log.e(TAG, "Unable to perform full sync.", e4);
            this.eventPoster.postEvent(WhispersyncEvent.ERROR_CLIENT);
            reportCountEvent(WhispersyncMetrics.WHISPERSYNC_CLOUD_SYNC_IO_EXCEPTION_METRIC);
        }
    }

    public void setEventCollectorClient(EventCollectorClient eventCollectorClient) {
        if (eventCollectorClient != null) {
            this.eventCollectorClient = eventCollectorClient;
        }
    }

    private void downloadFromCloud() throws AGSServiceException, ConnectionException, IOException, AGSClientException {
        if (!this.networkUtil.isNetworkConnected()) {
            Log.d(TAG, "Cannot sync with cloud because network is not connected");
            this.eventPoster.postEvent(WhispersyncEvent.OFFLINE);
            return;
        }
        WhispersyncUserSettingsManager.YesNoMaybe isWhispersyncEnabled = this.settingsManager.isWhispersyncEnabled();
        if (isWhispersyncEnabled == WhispersyncUserSettingsManager.YesNoMaybe.NO) {
            Log.d(TAG, "Cannot sync with cloud because Whispersync is disabled");
            this.eventPoster.postEvent(WhispersyncEvent.DISABLED);
            return;
        }
        if (isWhispersyncEnabled == WhispersyncUserSettingsManager.YesNoMaybe.MAYBE) {
            Log.d(TAG, "Cannot determine whether Whispersync is enabled.");
            this.eventPoster.postEvent(WhispersyncEvent.ERROR_CLIENT);
            return;
        }
        long start = System.currentTimeMillis();
        Log.d(TAG, "Download from cloud started");
        GameData cloudData = this.cloudStorage.retrieve(this.localStorage.getVersionId());
        if (cloudData.getGameDataMap() != null) {
            this.gameDataMap.merge(cloudData.getGameDataMap());
            this.syncRequestState.setDiskWriteRequested(true);
            this.eventPoster.postEvent(WhispersyncEvent.NEW_DATA_FROM_CLOUD);
            notifyJniNewCloudData();
            Log.d(TAG, "Download from cloud completed - New game data");
        } else {
            Log.d(TAG, "Download from cloud completed - No new game data");
        }
        if (cloudData.getVersionId() != null) {
            this.localStorage.putVersionId(cloudData.getVersionId());
        }
        long end = System.currentTimeMillis();
        reportTimeEvent(WhispersyncMetrics.WHISPERSYNC_DOWNLOAD_FROM_CLOUD_METRIC, end - start);
    }

    private void uploadToCloud() throws AGSServiceException, ConnectionException, IOException, AGSClientException {
        sleepWhileThrottled();
        if (!this.networkUtil.isNetworkConnected()) {
            Log.d(TAG, "Cannot sync with cloud because network is not connected");
            this.eventPoster.postEvent(WhispersyncEvent.OFFLINE);
            return;
        }
        WhispersyncUserSettingsManager.YesNoMaybe isWhispersyncEnabled = this.settingsManager.isWhispersyncEnabled();
        if (isWhispersyncEnabled == WhispersyncUserSettingsManager.YesNoMaybe.NO) {
            Log.d(TAG, "Cannot sync with cloud because Whispersync is disabled");
            this.eventPoster.postEvent(WhispersyncEvent.DISABLED);
            return;
        }
        if (isWhispersyncEnabled == WhispersyncUserSettingsManager.YesNoMaybe.MAYBE) {
            Log.d(TAG, "Cannot determine whether Whispersync is enabled.");
            this.eventPoster.postEvent(WhispersyncEvent.ERROR_CLIENT);
            return;
        }
        long start = System.currentTimeMillis();
        Log.d(TAG, "Upload to cloud started");
        String versionId = this.localStorage.getVersionId();
        this.syncRequestState.setCloudWriteRequested(false);
        this.gameDataMap.startSyncing();
        InternalGameDataMap snapshot = this.gameDataMap.lockAndCopy();
        GameData gameData = new GameData(snapshot, versionId);
        GameData cloudGameData = this.cloudStorage.save(gameData);
        this.priorSyncTime = System.currentTimeMillis();
        this.eventPoster.postEvent(WhispersyncEvent.DATA_UPLOADED_TO_CLOUD);
        if (cloudGameData.getGameDataMap() != null && cloudGameData.getGameDataMap().size() > 0) {
            Log.i(TAG, "Upload to cloud resulted in new data merged from another device!");
            this.gameDataMap.merge(cloudGameData.getGameDataMap());
            this.syncRequestState.setDiskWriteRequested(true);
            this.eventPoster.postEvent(WhispersyncEvent.NEW_DATA_FROM_CLOUD);
            reportCountEvent(WhispersyncMetrics.WHISPERSYNC_MERGE_ON_UPLOAD_METRIC);
            notifyJniNewCloudData();
        } else {
            this.eventPoster.postEvent(WhispersyncEvent.ALREADY_SYNCED);
        }
        if (cloudGameData.getVersionId() != null) {
            this.localStorage.putVersionId(cloudGameData.getVersionId());
        }
        this.gameDataMap.completeSyncing();
        Log.d(TAG, "Upload to cloud completed");
        long end = System.currentTimeMillis();
        reportTimeEvent(WhispersyncMetrics.WHISPERSYNC_UPLOAD_TO_CLOUD_METRIC, end - start);
    }

    private boolean hasSuccessfullySynchronized() {
        return this.localStorage.hasSuccessfullySynchronized();
    }

    private void sleepWhileThrottled() {
        long throttleDuration = this.syncRequestState.isActiveCloudWrite() ? MIN_TIME_BETWEEN_ACTIVE_SYNCS_MS : MIN_TIME_BETWEEN_PASSIVE_SYNCS_MS;
        this.syncRequestState.setActiveCloudWrite(false);
        long sleepInMsec = (this.priorSyncTime + throttleDuration) - System.currentTimeMillis();
        if (sleepInMsec > 0) {
            try {
                Log.d(TAG, "Throttling network request.  Retrying in " + sleepInMsec + " msec.");
                this.eventPoster.postEvent(WhispersyncEvent.THROTTLED);
                reportCountEvent(WhispersyncMetrics.WHISPERSYNC_CLOUD_SYNC_THROTTLED_METRIC);
                Thread.sleep(sleepInMsec);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }

    private void notifyJniNewCloudData() {
        try {
            WhispersyncJni.onNewCloudData();
        } catch (UnsatisfiedLinkError e) {
            Log.v(TAG, "GameCircle JNI library not loaded, cannot call WhispersyncJni");
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

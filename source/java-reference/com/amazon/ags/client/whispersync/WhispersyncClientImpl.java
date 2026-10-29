package com.amazon.ags.client.whispersync;

import android.content.Context;
import android.util.Log;
import com.amazon.ags.api.whispersync.GameDataMap;
import com.amazon.ags.api.whispersync.WhispersyncClient;
import com.amazon.ags.api.whispersync.WhispersyncEventListener;
import com.amazon.ags.api.whispersync.migration.MigrationCallback;
import com.amazon.ags.api.whispersync.migration.MigrationResultCode;
import com.amazon.ags.auth.AuthManager;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.client.session.SessionClient;
import com.amazon.ags.client.whispersync.clock.Clock;
import com.amazon.ags.client.whispersync.clock.ClockSkewSharedPrefs;
import com.amazon.ags.client.whispersync.clock.ClockSkewStorage;
import com.amazon.ags.client.whispersync.clock.ClockUtil;
import com.amazon.ags.client.whispersync.clock.GameDataServiceSyncedClock;
import com.amazon.ags.client.whispersync.clock.LocalClock;
import com.amazon.ags.client.whispersync.event.WhispersyncJavascriptEventListener;
import com.amazon.ags.client.whispersync.marshaller.JsonGameDataMarshaller;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetrics;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetricsFactory;
import com.amazon.ags.client.whispersync.migration.MigrationHttpClient;
import com.amazon.ags.client.whispersync.migration.MigrationManager;
import com.amazon.ags.client.whispersync.network.WhispersyncHttpClient;
import com.amazon.ags.client.whispersync.network.WhispersyncHttpClientImpl;
import com.amazon.ags.client.whispersync.settings.WebOverlayWhispersyncSettingsManager;
import com.amazon.ags.client.whispersync.settings.WhispersyncUserSettingsManager;
import com.amazon.ags.client.whispersync.storage.CloudStorage;
import com.amazon.ags.client.whispersync.storage.DiskStorage;
import com.amazon.ags.client.whispersync.storage.RemoteStorage;
import com.amazon.ags.html5.comm.NetworkClient;
import com.amazon.ags.html5.javascript.event.JavascriptEventsManager;
import com.amazon.ags.html5.util.NetworkUtil;
import com.amazon.ags.storage.StringObfuscator;
import java.io.File;
import java.io.IOException;
import org.apache.http.client.HttpClient;

/* JADX INFO: loaded from: classes2.dex */
public final class WhispersyncClientImpl implements WhispersyncClient {
    private static final long DEFAULT_QUIET_PERIOD_MS = 50;
    private static final String TAG = "GC_Whispersync";
    private static final String WHISPERSYNC_JAVASCRIPT_LISTENER_ID = "whispersyncListener";
    private static WhispersyncClientImpl theInstance;
    private final Context context;
    private EventCollectorClient eventCollectorClient;
    private final DiskStorage localStorage;
    private final JsonGameDataMarshaller marshaller;
    private final SynchronizationManager synchronizationManager;
    private final WhispersyncEventPoster whispersyncEventPoster;
    private MigrationManager migrationManager = null;
    private final InternalGameDataMap gameDataMap = new GameDataSingleMap();
    private final SyncRequestState syncRequestState = new SyncRequestState();

    public static synchronized void initialize(Context context, StringObfuscator stringObfuscator, EventCollectorClient eventCollectorClient) {
        if (theInstance == null) {
            theInstance = new WhispersyncClientImpl(context, stringObfuscator, eventCollectorClient);
            theInstance.syncMemoryFromDisk();
        } else {
            Log.w("Whispersync", "WhispersyncClient has already been initialized");
            theInstance.localStorage.setStringObfuscator(stringObfuscator);
            theInstance.eventCollectorClient = eventCollectorClient;
            theInstance.synchronizationManager.setEventCollectorClient(eventCollectorClient);
            if (theInstance.migrationManager != null) {
                theInstance.migrationManager.setEventCollectorClient(eventCollectorClient);
            }
        }
    }

    public static WhispersyncClientImpl getInstance() {
        if (theInstance == null) {
            Log.e("Whispersync", "Whispersync client has not been initialized.  Please call AmazonGames.initialize()");
        }
        return theInstance;
    }

    public WhispersyncClientImpl(Context context, StringObfuscator stringObfuscator, EventCollectorClient eventCollectorClient) {
        this.context = context;
        this.eventCollectorClient = eventCollectorClient;
        this.marshaller = new JsonGameDataMarshaller(eventCollectorClient);
        this.localStorage = new DiskStorage(context, this.marshaller, stringObfuscator);
        QuietPeriodListener quietPeriodListener = new SimpleQuietPeriodListener(50L);
        this.whispersyncEventPoster = new WhispersyncEventPoster();
        DiskSynchronizer diskSynchronizer = new DiskSynchronizer(this.gameDataMap, this.localStorage, this.syncRequestState, quietPeriodListener, this.whispersyncEventPoster, eventCollectorClient);
        this.synchronizationManager = new SynchronizationManager(diskSynchronizer, this.syncRequestState, this.whispersyncEventPoster);
    }

    public void setNetworkDependencies(NetworkClient networkClient, NetworkUtil networkUtil, SessionClient sessionClient, HttpClient httpClient, AuthManager authManager, JavascriptEventsManager javascriptEventsManager) {
        String packageName = this.context.getPackageName();
        String gameId = authManager.getGameId();
        WhispersyncHttpClient whispersyncHttpClient = new WhispersyncHttpClientImpl(networkClient, gameId);
        WhispersyncUserSettingsManager settingsManager = new WebOverlayWhispersyncSettingsManager(sessionClient);
        ClockSkewStorage clockSkewSharedPrefs = new ClockSkewSharedPrefs(this.context);
        Clock localClock = new LocalClock();
        GameDataServiceSyncedClock serviceSyncedClock = new GameDataServiceSyncedClock(localClock, clockSkewSharedPrefs);
        RemoteStorage cloudStorage = new CloudStorage(whispersyncHttpClient, this.marshaller, serviceSyncedClock);
        CloudSynchronizer cloudSynchronizer = new CloudSynchronizer(this.gameDataMap, this.localStorage, cloudStorage, this.syncRequestState, this.whispersyncEventPoster, this.eventCollectorClient, networkUtil, settingsManager);
        this.synchronizationManager.setCloudSynchronizer(cloudSynchronizer);
        WhispersyncJavascriptEventListener javascriptEventListener = new WhispersyncJavascriptEventListener(this.synchronizationManager);
        javascriptEventsManager.addEventListener(WHISPERSYNC_JAVASCRIPT_LISTENER_ID, javascriptEventListener);
        ClockUtil.setGlobalClock(serviceSyncedClock);
        MigrationHttpClient client = new MigrationHttpClient(packageName, gameId, networkClient, httpClient);
        this.migrationManager = new MigrationManager(client, networkUtil, settingsManager, this.eventCollectorClient);
    }

    @Override // com.amazon.ags.api.whispersync.WhispersyncClient
    public GameDataMap getGameData() {
        GameDataLock.lock();
        try {
            return this.gameDataMap;
        } finally {
            GameDataLock.unlock();
        }
    }

    public void synchronizeOnInitialization() {
        this.synchronizationManager.syncActively();
    }

    @Override // com.amazon.ags.api.whispersync.WhispersyncClient
    public void synchronize() {
        this.synchronizationManager.syncActively();
        reportEvent(WhispersyncMetrics.WHISPERSYNC_MANUAL_SYNC_METRIC);
    }

    @Override // com.amazon.ags.api.whispersync.WhispersyncClient
    public void flush() {
        this.synchronizationManager.flush();
        reportEvent(WhispersyncMetrics.WHISPERSYNC_MANUAL_FLUSH_METRIC);
    }

    @Override // com.amazon.ags.api.whispersync.WhispersyncClient
    public void setWhispersyncEventListener(WhispersyncEventListener listener) {
        this.whispersyncEventPoster.setWhispersyncEventListener(listener);
    }

    @Override // com.amazon.ags.api.whispersync.WhispersyncClient
    public void migrateVersion1GameData(MigrationCallback callback) {
        if (this.migrationManager == null) {
            Log.e(TAG, "Unable to download version 1.x game data until client is ready.  Please wait for AmazonGamesCallback.onServiceReady()");
            callback.onComplete(MigrationResultCode.FAILURE, null);
        } else {
            this.migrationManager.downloadV1GameData(callback);
        }
    }

    @Override // com.amazon.ags.api.whispersync.WhispersyncClient
    public void unpackVersion1MultiFileGameData(byte[] gameData, File overrideDir) throws IOException {
        File targetDir;
        if (overrideDir != null) {
            targetDir = overrideDir;
        } else {
            targetDir = this.context.getFilesDir().getParentFile();
        }
        this.migrationManager.unpackV1MultiFileGameData(gameData, targetDir);
    }

    private void syncMemoryFromDisk() {
        this.synchronizationManager.syncFromDiskToMemory();
    }

    private void reportEvent(String name) {
        GameCircleGenericEvent event = WhispersyncMetricsFactory.createCountEvent(name, 1);
        if (event != null) {
            this.eventCollectorClient.reportGenericEvent(event);
        }
    }

    public static void syncPassively() {
        theInstance.synchronizationManager.syncPassively();
    }

    public static boolean hasSuccessfullySynchronized() {
        return theInstance.localStorage.hasSuccessfullySynchronized();
    }
}

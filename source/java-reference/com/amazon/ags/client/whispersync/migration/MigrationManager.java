package com.amazon.ags.client.whispersync.migration;

import android.util.Log;
import com.amazon.ags.api.whispersync.migration.MigrationCallback;
import com.amazon.ags.api.whispersync.migration.MigrationResultCode;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetrics;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetricsFactory;
import com.amazon.ags.client.whispersync.settings.WhispersyncUserSettingsManager;
import com.amazon.ags.html5.comm.ConnectionException;
import com.amazon.ags.html5.util.NetworkUtil;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class MigrationManager {
    private static final String TAG = "GC_Whispersync";
    private EventCollectorClient eventCollectorClient;
    private final MigrationHttpClient migrationClient;
    private final NetworkUtil networkUtil;
    private final WhispersyncUserSettingsManager settingsManager;

    public MigrationManager(MigrationHttpClient migrationClient, NetworkUtil networkUtil, WhispersyncUserSettingsManager settingsManager, EventCollectorClient eventCollectorClient) {
        this.migrationClient = migrationClient;
        this.networkUtil = networkUtil;
        this.settingsManager = settingsManager;
        this.eventCollectorClient = eventCollectorClient;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.amazon.ags.client.whispersync.migration.MigrationManager$1] */
    public void downloadV1GameData(final MigrationCallback callback) {
        new Thread() { // from class: com.amazon.ags.client.whispersync.migration.MigrationManager.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws Throwable {
                MigrationManager.this.downloadBackground(callback);
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void downloadBackground(MigrationCallback callback) throws Throwable {
        if (!this.networkUtil.isNetworkConnected()) {
            callback.onComplete(MigrationResultCode.NETWORK_FAILURE, null);
            reportMigrationEventWithResultCode(MigrationResultCode.NETWORK_FAILURE);
            return;
        }
        if (this.settingsManager.isWhispersyncEnabled() == WhispersyncUserSettingsManager.YesNoMaybe.NO) {
            callback.onComplete(MigrationResultCode.WHISPERSYNC_OFF, null);
            reportMigrationEventWithResultCode(MigrationResultCode.WHISPERSYNC_OFF);
            return;
        }
        try {
            String signedURL = this.migrationClient.getV1GameDataDownloadUrl();
            if (signedURL == null) {
                callback.onComplete(MigrationResultCode.FAILURE, null);
                reportMigrationEventWithResultCode(MigrationResultCode.FAILURE);
            } else {
                DownloadResult result = this.migrationClient.download(signedURL);
                callback.onComplete(result.getResultCode(), result.getGameData());
                reportMigrationEventWithResultCode(result.getResultCode());
            }
        } catch (ConnectionException e) {
            callback.onComplete(MigrationResultCode.NETWORK_FAILURE, null);
            reportMigrationEventWithResultCode(MigrationResultCode.NETWORK_FAILURE);
        } catch (Exception e2) {
            callback.onComplete(MigrationResultCode.FAILURE, null);
            reportMigrationEventWithResultCode(MigrationResultCode.FAILURE);
        }
    }

    public void unpackV1MultiFileGameData(byte[] data, File targetDir) throws IOException {
        ZipUtil zipUtil = new ZipUtil();
        try {
            zipUtil.unzip(data, targetDir);
            Log.d(TAG, "Successfully unpacked new multi-file game data");
            reportUnpackMultifile(true);
        } catch (IOException ioe) {
            reportUnpackMultifile(false);
            throw ioe;
        }
    }

    public void setEventCollectorClient(EventCollectorClient eventCollectorClient) {
        if (eventCollectorClient != null) {
            this.eventCollectorClient = eventCollectorClient;
        }
    }

    private void reportMigrationEventWithResultCode(MigrationResultCode resultCode) {
        String eventName = getEventNameFromResultCode(resultCode);
        GameCircleGenericEvent event = WhispersyncMetricsFactory.createCountEvent(eventName, 1);
        if (event != null) {
            this.eventCollectorClient.reportGenericEvent(event);
        }
        reportMigrationEvent(MigrationResultCode.SUCCESS.equals(resultCode));
    }

    private void reportMigrationEvent(boolean succeeded) {
        GameCircleGenericEvent event = WhispersyncMetricsFactory.createBooleanCountEvent(WhispersyncMetrics.WHISPERSYNC_V1_MIGRATION_METRIC, 1, succeeded);
        if (event != null) {
            this.eventCollectorClient.reportGenericEvent(event);
        }
    }

    private void reportUnpackMultifile(boolean succeeded) {
        GameCircleGenericEvent event = WhispersyncMetricsFactory.createBooleanCountEvent(WhispersyncMetrics.WHISPERSYNC_V1_UNPACK_MULTIFILE_METRIC, 1, succeeded);
        if (event != null) {
            this.eventCollectorClient.reportGenericEvent(event);
        }
    }

    private String getEventNameFromResultCode(MigrationResultCode resultCode) {
        if (MigrationResultCode.FAILURE.equals(resultCode)) {
            return WhispersyncMetrics.WHISPERSYNC_V1_MIGRATION_FAILURE_METRIC;
        }
        if (MigrationResultCode.NETWORK_FAILURE.equals(resultCode)) {
            return WhispersyncMetrics.WHISPERSYNC_V1_MIGRATION_NO_NETWORK_METRIC;
        }
        if (MigrationResultCode.NO_DATA.equals(resultCode)) {
            return WhispersyncMetrics.WHISPERSYNC_V1_MIGRATION_NO_DATA_METRIC;
        }
        if (MigrationResultCode.WHISPERSYNC_OFF.equals(resultCode)) {
            return WhispersyncMetrics.WHISPERSYNC_V1_MIGRATION_WHISPERSYNC_OFF_METRIC;
        }
        return WhispersyncMetrics.WHISPERSYNC_V1_MIGRATION_METRIC;
    }
}

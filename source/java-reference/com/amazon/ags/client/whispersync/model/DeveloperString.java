package com.amazon.ags.client.whispersync.model;

import android.util.Log;
import com.amazon.ags.api.whispersync.model.SyncableDeveloperString;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.client.whispersync.GameDataLock;
import com.amazon.ags.client.whispersync.WhispersyncClientImpl;
import com.amazon.ags.client.whispersync.clock.ClockUtil;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetrics;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetricsFactory;

/* JADX INFO: loaded from: classes2.dex */
public class DeveloperString implements SyncableDeveloperString, Mergeable<DeveloperString> {
    private static final String TAG = "GC_Whispersync";
    private String cloud;
    private long cloudTimestamp;
    private boolean isCloudValueSet;
    private String local;
    private final String name;
    private String pending;
    private long pendingTimestamp;
    private SyncState state;
    private long timestamp;

    public DeveloperString(String name) {
        this.isCloudValueSet = false;
        this.state = SyncState.NOT_SET;
        this.name = name;
    }

    public DeveloperString(String name, String local, long timestamp, SyncState state) {
        this.isCloudValueSet = false;
        this.state = SyncState.NOT_SET;
        this.name = name;
        this.local = local;
        this.state = state;
        this.timestamp = timestamp;
        this.isCloudValueSet = false;
    }

    public DeveloperString(String name, String local, String remote, long timestamp, long remoteTimestamp, SyncState state) {
        this.isCloudValueSet = false;
        this.state = SyncState.NOT_SET;
        this.name = name;
        this.local = local;
        this.cloud = remote;
        this.state = state;
        this.timestamp = timestamp;
        this.cloudTimestamp = remoteTimestamp;
        this.isCloudValueSet = true;
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableDeveloperString
    public boolean inConflict() {
        return this.state == SyncState.IN_CONFLICT;
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableDeveloperString
    public void markAsResolved() {
        this.state = SyncState.DIRTY;
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableDeveloperString
    public String getCloudValue() {
        return this.cloud;
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableDeveloperString
    public long getCloudTimestamp() {
        return this.cloudTimestamp;
    }

    public boolean isCloudValueSet() {
        return this.isCloudValueSet;
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableDeveloperString
    public long getTimestamp() {
        return this.timestamp;
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableDeveloperString
    public String getValue() {
        return this.local;
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableDeveloperString
    public void setValue(String value) {
        GameDataLock.lock();
        try {
            if (this.state == SyncState.NOT_SET || ((this.local != null && !this.local.equals(value)) || (this.local == null && value != null))) {
                this.local = value;
                this.timestamp = ClockUtil.getCurrentTime();
                this.state = SyncState.DIRTY;
                WhispersyncClientImpl.syncPassively();
            }
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableDeveloperString
    public boolean isSet() {
        return this.state != SyncState.NOT_SET;
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public void merge(DeveloperString other) {
        if (other == null || other.state == SyncState.NOT_SET) {
            Log.w(TAG, "DeveloperString - Unable to merge DeveloperString from invalid value");
            reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_FAILED_MERGE_METRIC);
            return;
        }
        this.cloud = other.local;
        this.isCloudValueSet = true;
        if (this.state == SyncState.NOT_SET || this.state == SyncState.SYNCED) {
            Log.d(TAG, "DeveloperString - merging value for " + this.name + " from " + this.local + " to " + other.local);
            this.local = other.local;
            this.timestamp = other.timestamp;
            this.state = SyncState.SYNCED;
            return;
        }
        this.cloudTimestamp = other.timestamp;
        if ((this.local != null && !this.local.equals(other.local)) || (this.local == null && other.local != null)) {
            this.state = SyncState.IN_CONFLICT;
        }
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public DeveloperString deepCopy() {
        DeveloperString developerStringCopy = new DeveloperString(this.name, this.local, this.cloud, this.timestamp, this.cloudTimestamp, this.state);
        developerStringCopy.isCloudValueSet = this.isCloudValueSet;
        return developerStringCopy;
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public SyncState getState() {
        return this.state;
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public void startSyncing() {
        if (this.state == SyncState.DIRTY || this.state == SyncState.SYNCING) {
            this.pending = this.local;
            this.pendingTimestamp = this.timestamp;
            this.state = SyncState.SYNCING;
        }
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public void completeSyncing() {
        if (this.state == SyncState.SYNCING || this.state == SyncState.DIRTY) {
            this.cloud = this.pending;
            this.cloudTimestamp = this.pendingTimestamp;
            this.isCloudValueSet = true;
        }
        if (this.state == SyncState.SYNCING) {
            this.state = SyncState.SYNCED;
        }
    }

    protected void reportEvent(String name) {
        GameCircleGenericEvent event;
        EventCollectorClient eventCollectorClient = EventCollectorClient.getInstance();
        if (eventCollectorClient != null && (event = WhispersyncMetricsFactory.createSyncableTypeEvent(name, SyncableType.DEVELOPER_STRING)) != null) {
            eventCollectorClient.reportGenericEvent(event);
        }
    }
}

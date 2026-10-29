package com.amazon.ags.client.whispersync.model;

import android.util.Log;
import com.amazon.ags.api.whispersync.model.SyncableString;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.client.whispersync.GameDataLock;
import com.amazon.ags.client.whispersync.WhispersyncClientImpl;
import com.amazon.ags.client.whispersync.clock.ClockUtil;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetrics;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetricsFactory;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class LatestString extends StringElement implements SyncableString, Mergeable<LatestString> {
    private static final String TAG = "GC_Whispersync";
    private final String name;
    private SyncState state;

    public LatestString(String name) {
        this.state = SyncState.NOT_SET;
        this.name = name;
    }

    public LatestString(String name, String value, Map<String, String> metadata, long timestamp, SyncState state) {
        super(value, metadata, timestamp);
        this.state = SyncState.NOT_SET;
        this.name = name;
        this.state = state;
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public LatestString deepCopy() {
        return new LatestString(this.name, this.value, this.metadata, this.timestamp, this.state);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableString
    public void set(String value) {
        setValue(value, null);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableString
    public void set(String value, Map<String, String> metadata) {
        setValue(value, metadata);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableString
    public boolean isSet() {
        return this.state != SyncState.NOT_SET;
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public void merge(LatestString from) {
        if (from == null || from.state == SyncState.NOT_SET) {
            Log.w(TAG, "LatestString - Unable to merge LatestString from invalid value");
            reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_FAILED_MERGE_METRIC, SyncableType.LATEST_STRING);
            return;
        }
        if (this.state == SyncState.NOT_SET || from.timestamp > this.timestamp) {
            Log.d(TAG, "LatestString - merging value for " + this.name + " from " + this.value + " to " + from.value);
            this.value = from.value;
            this.metadata.clear();
            this.metadata.putAll(from.metadata);
            this.timestamp = from.timestamp;
            if (this.state == SyncState.NOT_SET) {
                this.state = SyncState.SYNCED;
            }
        }
    }

    @Override // com.amazon.ags.client.whispersync.model.StringElement
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[").append(LatestString.class.getSimpleName()).append(" name=").append(this.name).append(", ").append(" value=").append(this.value).append(", ").append(" timestamp=").append(this.timestamp).append(", ").append(" metadata=").append(this.metadata).append(", ").append(" state=").append(this.state).append("]");
        return sb.toString();
    }

    private void setValue(String value, Map<String, String> metadata) {
        GameDataLock.lock();
        try {
            this.value = value;
            this.timestamp = ClockUtil.getCurrentTime();
            this.metadata.clear();
            if (metadata != null) {
                this.metadata.putAll(metadata);
            }
            this.state = SyncState.DIRTY;
            WhispersyncClientImpl.syncPassively();
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public SyncState getState() {
        return this.state;
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public void startSyncing() {
        if (this.state == SyncState.DIRTY) {
            this.state = SyncState.SYNCING;
        }
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public void completeSyncing() {
        if (this.state == SyncState.SYNCING) {
            this.state = SyncState.SYNCED;
        }
    }

    protected void reportEvent(String name, SyncableType syncableType) {
        GameCircleGenericEvent event;
        EventCollectorClient eventCollectorClient = EventCollectorClient.getInstance();
        if (eventCollectorClient != null && (event = WhispersyncMetricsFactory.createSyncableTypeEvent(name, syncableType)) != null) {
            eventCollectorClient.reportGenericEvent(event);
        }
    }
}

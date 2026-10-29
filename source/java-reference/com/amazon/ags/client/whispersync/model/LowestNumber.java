package com.amazon.ags.client.whispersync.model;

import android.util.Log;
import com.amazon.ags.api.whispersync.model.SyncableNumber;
import com.amazon.ags.client.whispersync.GameDataLock;
import com.amazon.ags.client.whispersync.WhispersyncClientImpl;
import com.amazon.ags.client.whispersync.clock.ClockUtil;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetrics;
import java.math.BigDecimal;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class LowestNumber extends NumberElement implements SyncableNumber, Mergeable<LowestNumber> {
    private static final String TAG = "GC_Whispersync";
    private final String name;
    private SyncState state;

    public LowestNumber(String name) {
        this.state = SyncState.NOT_SET;
        this.name = name;
    }

    public LowestNumber(String name, BigDecimal value, Map<String, String> metadata, long timestamp, SyncState state) {
        super(value, metadata, timestamp);
        this.state = SyncState.NOT_SET;
        this.name = name;
        this.state = state;
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public LowestNumber deepCopy() {
        return new LowestNumber(this.name, this.value, this.metadata, this.timestamp, this.state);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumber
    public void set(long value) {
        set(value, (Map<String, String>) null);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumber
    public void set(double value) {
        set(value, (Map<String, String>) null);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumber
    public void set(int value) {
        set(value, (Map<String, String>) null);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumber
    public void set(String value) {
        set(value, (Map<String, String>) null);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumber
    public void set(long value, Map<String, String> metadata) {
        setValue(new BigDecimal(value), metadata);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumber
    public void set(double value, Map<String, String> metadata) {
        setValue(new BigDecimal(value), metadata);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumber
    public void set(int value, Map<String, String> metadata) {
        setValue(new BigDecimal(value), metadata);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumber
    public void set(String value, Map<String, String> metadata) {
        if (value == null) {
            Log.w(TAG, "Unable to add null String to LowestNumber with name " + this.name);
            reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_UPDATE_FAILURE_METRIC, SyncableType.LOWEST_NUMBER);
            throw new IllegalArgumentException("Unable to add null String to LowestNumber with name " + this.name);
        }
        setValue(new BigDecimal(value), metadata);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumber
    public boolean isSet() {
        return this.state != SyncState.NOT_SET;
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public void merge(LowestNumber from) {
        if (from == null || from.state == SyncState.NOT_SET) {
            Log.w(TAG, "LowestNumber - Unable to merge LowestNumber from invalid value");
            reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_FAILED_MERGE_METRIC, SyncableType.LOWEST_NUMBER);
            return;
        }
        if (this.state == SyncState.NOT_SET || from.value.compareTo(this.value) < 0) {
            Log.i(TAG, "LowestNumber - merging value for " + this.name + " from " + this.value + " to " + from.value);
            this.value = from.value;
            this.metadata.clear();
            this.metadata.putAll(from.metadata);
            this.timestamp = from.timestamp;
            if (this.state == SyncState.NOT_SET) {
                this.state = SyncState.SYNCED;
            }
        }
    }

    @Override // com.amazon.ags.client.whispersync.model.NumberElement
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[").append(LowestNumber.class.getSimpleName()).append(" name=").append(this.name).append(", ").append(" value=").append(this.value).append(", ").append(" timestamp=").append(this.timestamp).append(", ").append(" metadata=").append(this.metadata).append(", ").append(" state=").append(this.state).append("]");
        return sb.toString();
    }

    private void setValue(BigDecimal value, Map<String, String> metadata) {
        if (value == null) {
            Log.e(TAG, "Unable to set null LowestNumber with name " + this.name);
            reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_UPDATE_FAILURE_METRIC, SyncableType.LOWEST_NUMBER);
            throw new IllegalArgumentException("Unable to set null LowestNumber with name " + this.name);
        }
        GameDataLock.lock();
        try {
            if (this.state == SyncState.NOT_SET || this.value.compareTo(value) > 0) {
                this.value = value;
                this.timestamp = ClockUtil.getCurrentTime();
                this.state = SyncState.DIRTY;
                this.metadata.clear();
                if (metadata != null) {
                    this.metadata.putAll(metadata);
                }
                WhispersyncClientImpl.syncPassively();
            }
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
}

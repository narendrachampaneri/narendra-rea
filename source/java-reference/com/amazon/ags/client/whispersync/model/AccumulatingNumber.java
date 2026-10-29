package com.amazon.ags.client.whispersync.model;

import android.util.Log;
import com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.client.whispersync.GameDataLock;
import com.amazon.ags.client.whispersync.WhispersyncClientImpl;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetrics;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetricsFactory;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes2.dex */
public class AccumulatingNumber implements SyncableAccumulatingNumber, Mergeable<AccumulatingNumber> {
    private static final String TAG = "GC_Whispersync";
    private BigDecimal local;
    private final String name;
    private BigDecimal remote;
    private SyncState state;

    public AccumulatingNumber(String name) {
        this.state = SyncState.NOT_SET;
        this.name = name;
        this.local = BigDecimal.ZERO;
        this.remote = BigDecimal.ZERO;
    }

    public AccumulatingNumber(String name, BigDecimal localValue, BigDecimal remoteValue, SyncState state) {
        this.state = SyncState.NOT_SET;
        this.name = name;
        this.local = localValue;
        this.remote = remoteValue;
        this.state = state;
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public AccumulatingNumber deepCopy() {
        return new AccumulatingNumber(this.name, this.local, this.remote, this.state);
    }

    public BigDecimal getLocal() {
        return this.local;
    }

    public BigDecimal getRemote() {
        return this.remote;
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber
    public void increment(long delta) {
        update(new BigDecimal(delta));
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber
    public void increment(double delta) {
        update(new BigDecimal(delta));
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber
    public void increment(int delta) {
        update(new BigDecimal(delta));
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber
    public void increment(String delta) {
        if (delta == null) {
            Log.e(TAG, "delta cannot be null for AccumulatingNumber with name " + this.name);
            reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_UPDATE_FAILURE_METRIC);
            throw new IllegalArgumentException("delta cannot be null for AccumulatingNumber with name " + this.name);
        }
        update(new BigDecimal(delta));
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber
    public void decrement(long delta) {
        decrement(new BigDecimal(delta));
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber
    public void decrement(double delta) {
        decrement(new BigDecimal(delta));
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber
    public void decrement(int delta) {
        decrement(new BigDecimal(delta));
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber
    public void decrement(String delta) {
        if (delta == null) {
            Log.e(TAG, "delta cannot be null for AccumulatingNumber with name " + this.name);
            reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_UPDATE_FAILURE_METRIC);
            throw new IllegalArgumentException("delta cannot be null for AccumulatingNumber with name " + this.name);
        }
        decrement(new BigDecimal(delta));
    }

    private void decrement(BigDecimal delta) {
        update(delta.negate());
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber
    public long asLong() {
        return this.local.add(this.remote).longValue();
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber
    public double asDouble() {
        return this.local.add(this.remote).doubleValue();
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber
    public int asInt() {
        return this.local.add(this.remote).intValue();
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber
    public String asString() {
        return this.local.add(this.remote).toString();
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber
    public BigDecimal asDecimal() {
        return this.local.add(this.remote);
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public void merge(AccumulatingNumber from) {
        boolean hasSuccessfullySynchronized = WhispersyncClientImpl.hasSuccessfullySynchronized();
        this.remote = from.remote;
        if (!hasSuccessfullySynchronized) {
            this.local = this.local.add(from.local);
        }
        if (this.state == SyncState.NOT_SET) {
            this.state = SyncState.SYNCED;
        }
    }

    private void update(BigDecimal delta) {
        if (delta == null) {
            Log.e(TAG, "delta cannot be null for AccumulatingNumber with name " + this.name);
            reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_UPDATE_FAILURE_METRIC);
            throw new IllegalArgumentException("delta cannot be null for AccumulatingNumber with name " + this.name);
        }
        GameDataLock.lock();
        try {
            this.local = this.local.add(delta);
            this.state = SyncState.DIRTY;
            WhispersyncClientImpl.syncPassively();
        } finally {
            GameDataLock.unlock();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[").append(AccumulatingNumber.class.getSimpleName()).append(" name=").append(this.name).append(", ").append(" local=").append(this.local).append(", ").append(" remote=").append(this.remote).append(", ").append(" state=").append(this.state).append("]");
        return sb.toString();
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

    private void reportEvent(String name) {
        GameCircleGenericEvent event;
        EventCollectorClient eventCollectorClient = EventCollectorClient.getInstance();
        if (eventCollectorClient != null && (event = WhispersyncMetricsFactory.createSyncableTypeEvent(name, SyncableType.ACCUMULATING_NUMBER)) != null) {
            eventCollectorClient.reportGenericEvent(event);
        }
    }
}

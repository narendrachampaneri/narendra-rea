package com.amazon.ags.client.whispersync.model;

import android.util.Log;
import com.amazon.ags.api.whispersync.model.SyncableNumberElement;
import com.amazon.ags.api.whispersync.model.SyncableNumberList;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.client.whispersync.GameDataLock;
import com.amazon.ags.client.whispersync.WhispersyncClientImpl;
import com.amazon.ags.client.whispersync.clock.ClockUtil;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetrics;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetricsFactory;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
public abstract class NumberList implements SyncableNumberList, Mergeable<NumberList> {
    private static final String TAG = "GC_Whispersync";
    protected final SortedSet<NumberElement> elements;
    protected int maxSize;
    protected final String name;
    protected SyncState state;

    public abstract Comparator<NumberElement> getComparator();

    public abstract SyncableType getSyncableType();

    public NumberList(String name) {
        this.state = SyncState.NOT_SET;
        this.elements = new TreeSet(getComparator());
        this.name = name;
        this.maxSize = 5;
    }

    public NumberList(String name, List<NumberElement> elements, int maxSize, SyncState state) {
        this.state = SyncState.NOT_SET;
        this.elements = new TreeSet(getComparator());
        for (NumberElement element : elements) {
            this.elements.add(new NumberElement(element));
        }
        this.name = name;
        this.maxSize = maxSize;
        this.state = state;
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberList
    public void setMaxSize(int size) {
        if (size <= 0 || size > 1000) {
            Log.e(TAG, "Unable to set max size to " + size);
            reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_UPDATE_FAILURE_METRIC);
            throw new IllegalArgumentException();
        }
        if (size > this.maxSize) {
            this.maxSize = size;
        }
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberList
    public int getMaxSize() {
        return this.maxSize;
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberList
    public void add(long value) {
        add(value, (Map<String, String>) null);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberList
    public void add(double value) {
        add(value, (Map<String, String>) null);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberList
    public void add(int value) {
        add(value, (Map<String, String>) null);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberList
    public void add(String value) {
        add(value, (Map<String, String>) null);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberList
    public void add(long value, Map<String, String> metadata) {
        add(new BigDecimal(value), metadata);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberList
    public void add(double value, Map<String, String> metadata) {
        add(new BigDecimal(value), metadata);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberList
    public void add(int value, Map<String, String> metadata) {
        add(new BigDecimal(value), metadata);
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberList
    public void add(String value, Map<String, String> metadata) {
        if (value == null) {
            Log.w(TAG, "Unable to add null String to NumberList with name " + this.name);
            reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_UPDATE_FAILURE_METRIC);
            throw new IllegalArgumentException("Unable to add null String to NumberList with name " + this.name);
        }
        add(new BigDecimal(value), metadata);
    }

    private void add(BigDecimal value, Map<String, String> metadata) {
        add(new NumberElement(value, metadata, ClockUtil.getCurrentTime()));
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberList
    public boolean isSet() {
        GameDataLock.lock();
        try {
            return !this.elements.isEmpty();
        } finally {
            GameDataLock.unlock();
        }
    }

    private void add(NumberElement numberElement) {
        GameDataLock.lock();
        try {
            if (numberElement == null) {
                Log.w(TAG, "Unable to add null NumberElement to NumberList with name " + this.name);
                reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_UPDATE_FAILURE_METRIC);
                throw new IllegalArgumentException("Unable to add null NumberElement to NumberList with name " + this.name);
            }
            Log.d(TAG, "Adding number element " + numberElement + " to NumberList of type " + getSyncableType());
            this.elements.add(numberElement);
            if (this.elements.size() > this.maxSize) {
                if (this.elements.last() != numberElement) {
                    this.state = SyncState.DIRTY;
                    WhispersyncClientImpl.syncPassively();
                }
                this.elements.remove(this.elements.last());
            } else {
                this.state = SyncState.DIRTY;
                WhispersyncClientImpl.syncPassively();
            }
            GameDataLock.unlock();
        } catch (Throwable th) {
            GameDataLock.unlock();
            throw th;
        }
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberList
    public SyncableNumberElement[] getValues() {
        GameDataLock.lock();
        try {
            int size = Math.min(this.elements.size(), this.maxSize);
            SyncableNumberElement[] results = new SyncableNumberElement[size];
            Iterator<NumberElement> iterator = this.elements.iterator();
            int index = 0;
            while (index < size) {
                int index2 = index + 1;
                results[index] = iterator.next();
                index = index2;
            }
            GameDataLock.unlock();
            return results;
        } catch (Throwable th) {
            GameDataLock.unlock();
            throw th;
        }
    }

    public List<NumberElement> copyElements() {
        List<NumberElement> copiedElements = new ArrayList<>(this.elements.size());
        GameDataLock.lock();
        try {
            for (NumberElement element : this.elements) {
                copiedElements.add(new NumberElement(element));
            }
            GameDataLock.unlock();
            return copiedElements;
        } catch (Throwable th) {
            GameDataLock.unlock();
            throw th;
        }
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public void merge(NumberList from) {
        if (from == null || from.elements == null || from.elements.isEmpty()) {
            Log.w(TAG, "NumberList - Unable to merge NumberList from an invalid/unset value " + from);
            reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_FAILED_MERGE_METRIC);
            return;
        }
        if (from.getSyncableType() != getSyncableType()) {
            Log.e(TAG, "Cannot merge a " + from.getSyncableType() + " with a " + getSyncableType());
            return;
        }
        if (from.maxSize > this.maxSize) {
            Log.i(TAG, "Increasing maxSize of " + this.name + " from " + this.maxSize + " to " + from.maxSize);
            this.maxSize = from.maxSize;
        }
        for (NumberElement item : from.elements) {
            this.elements.add(item);
            if (this.elements.size() > this.maxSize) {
                this.elements.remove(this.elements.last());
            }
        }
        if (this.state == SyncState.NOT_SET) {
            this.state = SyncState.SYNCED;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[").append(getSyncableType().getJsonName()).append(" name=").append(this.name).append(", ").append(" value=").append(this.elements).append(", ").append(" isSet=").append(isSet()).append("]");
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
        if (eventCollectorClient != null && (event = WhispersyncMetricsFactory.createSyncableTypeEvent(name, getSyncableType())) != null) {
            eventCollectorClient.reportGenericEvent(event);
        }
    }
}

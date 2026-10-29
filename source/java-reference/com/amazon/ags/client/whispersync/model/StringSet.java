package com.amazon.ags.client.whispersync.model;

import android.util.Log;
import com.amazon.ags.api.whispersync.model.SyncableStringElement;
import com.amazon.ags.api.whispersync.model.SyncableStringSet;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.client.whispersync.GameDataLock;
import com.amazon.ags.client.whispersync.WhispersyncClientImpl;
import com.amazon.ags.client.whispersync.clock.ClockUtil;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetrics;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetricsFactory;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class StringSet implements SyncableStringSet, Mergeable<StringSet> {
    private static final String TAG = "GC_Whispersync";
    private final Set<SyncableStringElement> elements;
    private final String name;
    private SyncState state;

    public StringSet(String name) {
        this.state = SyncState.NOT_SET;
        this.name = name;
        this.elements = new HashSet();
    }

    public StringSet(String name, Set<SyncableStringElement> elements, SyncState state) {
        this.state = SyncState.NOT_SET;
        this.elements = new HashSet(elements.size());
        for (SyncableStringElement element : elements) {
            this.elements.add(new StringElement((StringElement) element));
        }
        this.name = name;
        this.state = state;
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public StringSet deepCopy() {
        return new StringSet(this.name, this.elements, this.state);
    }

    @Override // java.lang.Iterable
    public Iterator<SyncableStringElement> iterator() {
        return this.elements.iterator();
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableStringSet
    public void add(String value) {
        add(new StringElement(value, new HashMap(), ClockUtil.getCurrentTime()));
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableStringSet
    public void add(String value, Map<String, String> metadata) {
        add(new StringElement(value, metadata, ClockUtil.getCurrentTime()));
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableStringSet
    public SyncableStringElement get(String value) {
        GameDataLock.lock();
        try {
            for (SyncableStringElement element : this.elements) {
                if (element != null && element.getValue() != null && element.getValue().equals(value)) {
                    return element;
                }
            }
            return null;
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableStringSet
    public boolean contains(String value) {
        return get(value) != null;
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableStringSet
    public boolean isSet() {
        GameDataLock.lock();
        try {
            return !this.elements.isEmpty();
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableStringSet
    public Set<SyncableStringElement> getValues() {
        GameDataLock.lock();
        try {
            return Collections.unmodifiableSet(this.elements);
        } finally {
            GameDataLock.unlock();
        }
    }

    private void add(StringElement element) {
        if (element == null) {
            Log.e(TAG, "Unable to add null StringElement to StringSet with name " + this.name);
            reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_UPDATE_FAILURE_METRIC);
            throw new IllegalArgumentException("Unable to add null StringElement to StringSet with name " + this.name);
        }
        try {
            GameDataLock.lock();
            if (!contains(element.getValue())) {
                this.elements.add(element);
                this.state = SyncState.DIRTY;
                WhispersyncClientImpl.syncPassively();
            }
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public void merge(StringSet from) {
        if (from == null || from.elements == null || from.elements.isEmpty()) {
            Log.w(TAG, "StringSet - Unable to merge StringSet from an invalid/unset value " + from);
            reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_FAILED_MERGE_METRIC);
            return;
        }
        for (SyncableStringElement fromElement : from) {
            SyncableStringElement elementInCurrentSet = get(fromElement.getValue());
            if (elementInCurrentSet == null) {
                this.elements.add(new StringElement((StringElement) fromElement));
            } else if (elementInCurrentSet.getTimestamp() < fromElement.getTimestamp()) {
                this.elements.remove(elementInCurrentSet);
                this.elements.add(new StringElement((StringElement) fromElement));
            }
        }
        if (this.state == SyncState.NOT_SET) {
            this.state = SyncState.SYNCED;
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

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[").append(HighestNumber.class.getSimpleName()).append(" name=").append(this.name).append(", ").append(" value=").append(this.elements).append(", ").append(" state=").append(this.state).append("]");
        return sb.toString();
    }

    private void reportEvent(String name) {
        GameCircleGenericEvent event;
        EventCollectorClient eventCollectorClient = EventCollectorClient.getInstance();
        if (eventCollectorClient != null && (event = WhispersyncMetricsFactory.createSyncableTypeEvent(name, SyncableType.STRING_SET)) != null) {
            eventCollectorClient.reportGenericEvent(event);
        }
    }
}

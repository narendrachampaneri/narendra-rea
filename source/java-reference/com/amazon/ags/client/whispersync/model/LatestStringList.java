package com.amazon.ags.client.whispersync.model;

import android.util.Log;
import com.amazon.ags.api.whispersync.model.SyncableStringElement;
import com.amazon.ags.api.whispersync.model.SyncableStringList;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.client.whispersync.GameDataLock;
import com.amazon.ags.client.whispersync.WhispersyncClientImpl;
import com.amazon.ags.client.whispersync.clock.ClockUtil;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetrics;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetricsFactory;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
public class LatestStringList implements SyncableStringList, Mergeable<LatestStringList> {
    private static final Comparator<StringElement> ITEM_COMPARATOR = new Comparator<StringElement>() { // from class: com.amazon.ags.client.whispersync.model.LatestStringList.1
        @Override // java.util.Comparator
        public int compare(StringElement o1, StringElement o2) {
            long timeDifference = o2.getTimestamp() - o1.getTimestamp();
            if (timeDifference != 0) {
                return timeDifference > 0 ? 1 : -1;
            }
            if (o1.getValue() == null) {
                return o2.getValue() == null ? 0 : -1;
            }
            if (o2.getValue() == null) {
                return 1;
            }
            return o1.getValue().compareTo(o2.getValue());
        }
    };
    private static final String TAG = "GC_Whispersync";
    protected final SortedSet<StringElement> elements;
    protected int maxSize;
    protected final String name;
    protected SyncState state;

    public LatestStringList(String name) {
        this.state = SyncState.NOT_SET;
        this.elements = new TreeSet(ITEM_COMPARATOR);
        this.name = name;
        this.maxSize = 5;
    }

    public LatestStringList(String name, List<StringElement> elements, int maxSize, SyncState state) {
        this.state = SyncState.NOT_SET;
        this.elements = new TreeSet(ITEM_COMPARATOR);
        for (StringElement element : elements) {
            this.elements.add(new StringElement(element));
        }
        this.name = name;
        this.maxSize = maxSize;
        this.state = state;
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public LatestStringList deepCopy() {
        return new LatestStringList(this.name, copyElements(), this.maxSize, this.state);
    }

    public List<StringElement> copyElements() {
        List<StringElement> copiedElements = new ArrayList<>(this.elements.size());
        GameDataLock.lock();
        try {
            for (StringElement element : this.elements) {
                copiedElements.add(new StringElement(element));
            }
            GameDataLock.unlock();
            return copiedElements;
        } catch (Throwable th) {
            GameDataLock.unlock();
            throw th;
        }
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableStringList
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

    @Override // com.amazon.ags.api.whispersync.model.SyncableStringList
    public int getMaxSize() {
        return this.maxSize;
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableStringList
    public void add(String value) {
        add(new StringElement(value, new HashMap(), ClockUtil.getCurrentTime()));
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableStringList
    public void add(String value, Map<String, String> metadata) {
        add(new StringElement(value, metadata, ClockUtil.getCurrentTime()));
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableStringList
    public boolean isSet() {
        GameDataLock.lock();
        try {
            return !this.elements.isEmpty();
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableStringList
    public SyncableStringElement[] getValues() {
        GameDataLock.lock();
        try {
            int size = Math.min(this.elements.size(), this.maxSize);
            SyncableStringElement[] results = new SyncableStringElement[size];
            Iterator<StringElement> iterator = this.elements.iterator();
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

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public void merge(LatestStringList from) {
        if (from == null || from.elements == null || from.elements.isEmpty()) {
            Log.w(TAG, "LatestStringList - Unable to merge LatestStringList from an invalid/unset value " + from);
            reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_FAILED_MERGE_METRIC);
            return;
        }
        if (from.maxSize > this.maxSize) {
            Log.i(TAG, "Increasing maxSize of " + this.name + " from " + this.maxSize + " to " + from.maxSize);
            this.maxSize = from.maxSize;
        }
        for (StringElement item : from.elements) {
            this.elements.add(item);
            if (this.elements.size() > this.maxSize) {
                this.elements.remove(this.elements.last());
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[").append(HighestNumber.class.getSimpleName()).append(" name=").append(this.name).append(", ").append(" elements=").append(this.elements).append(", ").append(" isSet=").append(isSet()).append("]");
        return sb.toString();
    }

    private void add(StringElement stringElement) {
        GameDataLock.lock();
        try {
            if (stringElement == null) {
                Log.e(TAG, "Unable to add null StringElement to LatestStringList with name " + this.name);
                reportEvent(WhispersyncMetrics.WHISPERSYNC_SYNCABLE_TYPE_UPDATE_FAILURE_METRIC);
                throw new IllegalArgumentException("Unable to add null StringElement to LatestStringList with name " + this.name);
            }
            Log.d(TAG, "Adding string element " + stringElement + " to StringList");
            this.elements.add(stringElement);
            if (this.elements.size() > this.maxSize) {
                if (this.elements.last() != stringElement) {
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
        if (eventCollectorClient != null && (event = WhispersyncMetricsFactory.createSyncableTypeEvent(name, SyncableType.LATEST_STRING_LIST)) != null) {
            eventCollectorClient.reportGenericEvent(event);
        }
    }
}

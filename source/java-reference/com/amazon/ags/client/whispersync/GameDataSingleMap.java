package com.amazon.ags.client.whispersync;

import android.util.Log;
import com.amazon.ags.api.whispersync.GameDataMap;
import com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber;
import com.amazon.ags.api.whispersync.model.SyncableDeveloperString;
import com.amazon.ags.api.whispersync.model.SyncableNumber;
import com.amazon.ags.api.whispersync.model.SyncableNumberList;
import com.amazon.ags.api.whispersync.model.SyncableString;
import com.amazon.ags.api.whispersync.model.SyncableStringList;
import com.amazon.ags.api.whispersync.model.SyncableStringSet;
import com.amazon.ags.client.whispersync.model.AccumulatingNumber;
import com.amazon.ags.client.whispersync.model.DeveloperString;
import com.amazon.ags.client.whispersync.model.HighNumberList;
import com.amazon.ags.client.whispersync.model.HighestNumber;
import com.amazon.ags.client.whispersync.model.Key;
import com.amazon.ags.client.whispersync.model.LatestNumber;
import com.amazon.ags.client.whispersync.model.LatestNumberList;
import com.amazon.ags.client.whispersync.model.LatestString;
import com.amazon.ags.client.whispersync.model.LatestStringList;
import com.amazon.ags.client.whispersync.model.LowNumberList;
import com.amazon.ags.client.whispersync.model.LowestNumber;
import com.amazon.ags.client.whispersync.model.Mergeable;
import com.amazon.ags.client.whispersync.model.StringSet;
import com.amazon.ags.client.whispersync.model.SyncState;
import com.amazon.ags.client.whispersync.model.SyncableType;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class GameDataSingleMap implements InternalGameDataMap {
    private static final String TAG = "GC_Whispersync";
    private final Map<Key, Mergeable<?>> gameDataMap;
    private final String name;

    public GameDataSingleMap() {
        this.gameDataMap = new HashMap();
        this.name = null;
    }

    public GameDataSingleMap(String name) {
        this.gameDataMap = new HashMap();
        this.name = name;
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public GameDataSingleMap deepCopy() {
        Log.v(TAG, "GameDataMap - Deep copy of GameDataMap with name: " + this.name);
        GameDataSingleMap copy = new GameDataSingleMap();
        for (Map.Entry<Key, Mergeable<?>> element : this.gameDataMap.entrySet()) {
            copy.gameDataMap.put(element.getKey(), element.getValue().deepCopy());
        }
        return copy;
    }

    @Override // com.amazon.ags.client.whispersync.InternalGameDataMap
    public InternalGameDataMap lockAndCopy() {
        long copyStart = System.currentTimeMillis();
        GameDataLock.lock();
        try {
            InternalGameDataMap gameDataMapCopy = deepCopy();
            GameDataLock.unlock();
            long copyEnd = System.currentTimeMillis();
            Log.v(TAG, "GameDataMap copy took " + (copyEnd - copyStart) + " msec.");
            return gameDataMapCopy;
        } catch (Throwable th) {
            GameDataLock.unlock();
            throw th;
        }
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public SyncableNumber getHighestNumber(String name) {
        Key key = new Key(SyncableType.HIGHEST_NUMBER, name);
        GameDataLock.lock();
        try {
            if (!this.gameDataMap.containsKey(key)) {
                this.gameDataMap.put(key, new HighestNumber(name));
            }
            return (HighestNumber) this.gameDataMap.get(key);
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public SyncableNumber getLowestNumber(String name) {
        Key key = new Key(SyncableType.LOWEST_NUMBER, name);
        GameDataLock.lock();
        try {
            if (!this.gameDataMap.containsKey(key)) {
                this.gameDataMap.put(key, new LowestNumber(name));
            }
            return (LowestNumber) this.gameDataMap.get(key);
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public SyncableNumber getLatestNumber(String name) {
        Key key = new Key(SyncableType.LATEST_NUMBER, name);
        GameDataLock.lock();
        try {
            if (!this.gameDataMap.containsKey(key)) {
                this.gameDataMap.put(key, new LatestNumber(name));
            }
            return (LatestNumber) this.gameDataMap.get(key);
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public SyncableAccumulatingNumber getAccumulatingNumber(String name) {
        Key key = new Key(SyncableType.ACCUMULATING_NUMBER, name);
        GameDataLock.lock();
        try {
            if (!this.gameDataMap.containsKey(key)) {
                this.gameDataMap.put(key, new AccumulatingNumber(name));
            }
            return (AccumulatingNumber) this.gameDataMap.get(key);
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public SyncableNumberList getHighNumberList(String name) {
        Key key = new Key(SyncableType.HIGHEST_NUMBER_LIST, name);
        GameDataLock.lock();
        try {
            if (!this.gameDataMap.containsKey(key)) {
                this.gameDataMap.put(key, new HighNumberList(name));
            }
            return (SyncableNumberList) this.gameDataMap.get(key);
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public SyncableNumberList getLowNumberList(String name) {
        Key key = new Key(SyncableType.LOWEST_NUMBER_LIST, name);
        GameDataLock.lock();
        try {
            if (!this.gameDataMap.containsKey(key)) {
                this.gameDataMap.put(key, new LowNumberList(name));
            }
            return (SyncableNumberList) this.gameDataMap.get(key);
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public SyncableNumberList getLatestNumberList(String name) {
        Key key = new Key(SyncableType.LATEST_NUMBER_LIST, name);
        GameDataLock.lock();
        try {
            if (!this.gameDataMap.containsKey(key)) {
                this.gameDataMap.put(key, new LatestNumberList(name));
            }
            return (SyncableNumberList) this.gameDataMap.get(key);
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public SyncableString getLatestString(String name) {
        Key key = new Key(SyncableType.LATEST_STRING, name);
        GameDataLock.lock();
        try {
            if (!this.gameDataMap.containsKey(key)) {
                this.gameDataMap.put(key, new LatestString(name));
            }
            return (SyncableString) this.gameDataMap.get(key);
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public SyncableStringList getLatestStringList(String name) {
        Key key = new Key(SyncableType.LATEST_STRING_LIST, name);
        GameDataLock.lock();
        try {
            if (!this.gameDataMap.containsKey(key)) {
                this.gameDataMap.put(key, new LatestStringList(name));
            }
            return (SyncableStringList) this.gameDataMap.get(key);
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public SyncableStringSet getStringSet(String name) {
        Key key = new Key(SyncableType.STRING_SET, name);
        GameDataLock.lock();
        try {
            if (!this.gameDataMap.containsKey(key)) {
                this.gameDataMap.put(key, new StringSet(name));
            }
            return (SyncableStringSet) this.gameDataMap.get(key);
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public SyncableDeveloperString getDeveloperString(String name) {
        Key key = new Key(SyncableType.DEVELOPER_STRING, name);
        GameDataLock.lock();
        try {
            if (!this.gameDataMap.containsKey(key)) {
                this.gameDataMap.put(key, new DeveloperString(name));
            }
            return (SyncableDeveloperString) this.gameDataMap.get(key);
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public GameDataMap getMap(String name) {
        Key key = new Key(SyncableType.MAP, name);
        GameDataLock.lock();
        try {
            if (!this.gameDataMap.containsKey(key)) {
                this.gameDataMap.put(key, new GameDataSingleMap(name));
            }
            return (GameDataMap) this.gameDataMap.get(key);
        } finally {
            GameDataLock.unlock();
        }
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public Set<String> getHighestNumberKeys() {
        return getKeysByType(SyncableType.HIGHEST_NUMBER);
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public Set<String> getLowestNumberKeys() {
        return getKeysByType(SyncableType.LOWEST_NUMBER);
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public Set<String> getLatestNumberKeys() {
        return getKeysByType(SyncableType.LATEST_NUMBER);
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public Set<String> getAccumulatingNumberKeys() {
        return getKeysByType(SyncableType.ACCUMULATING_NUMBER);
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public Set<String> getHighNumberListKeys() {
        return getKeysByType(SyncableType.HIGHEST_NUMBER_LIST);
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public Set<String> getLowNumberListKeys() {
        return getKeysByType(SyncableType.LOWEST_NUMBER_LIST);
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public Set<String> getLatestNumberListKeys() {
        return getKeysByType(SyncableType.LATEST_NUMBER_LIST);
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public Set<String> getLatestStringKeys() {
        return getKeysByType(SyncableType.LATEST_STRING);
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public Set<String> getLatestStringListKeys() {
        return getKeysByType(SyncableType.LATEST_STRING_LIST);
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public Set<String> getStringSetKeys() {
        return getKeysByType(SyncableType.STRING_SET);
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public Set<String> getDeveloperStringKeys() {
        return getKeysByType(SyncableType.DEVELOPER_STRING);
    }

    @Override // com.amazon.ags.api.whispersync.GameDataMap
    public Set<String> getMapKeys() {
        return getKeysByType(SyncableType.MAP);
    }

    @Override // com.amazon.ags.client.whispersync.InternalGameDataMap
    public Map<Key, Mergeable<?>> getAllElements() {
        return Collections.unmodifiableMap(this.gameDataMap);
    }

    @Override // com.amazon.ags.client.whispersync.InternalGameDataMap
    public int size() {
        return this.gameDataMap.size();
    }

    @Override // com.amazon.ags.client.whispersync.InternalGameDataMap
    public void putElement(Key key, Mergeable<?> element) {
        this.gameDataMap.put(key, element);
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public void merge(InternalGameDataMap fromMap) {
        GameDataLock.lock();
        try {
            mergeLocked(fromMap);
        } finally {
            GameDataLock.unlock();
        }
    }

    private void mergeLocked(InternalGameDataMap fromMap) {
        if (fromMap == null || fromMap.getAllElements() == null || fromMap.getAllElements().isEmpty()) {
            Log.w(TAG, "GameDataMap - Unable to merge from an invalid/unset GameDataMap " + fromMap);
            return;
        }
        for (Map.Entry<Key, Mergeable<?>> entry : fromMap.getAllElements().entrySet()) {
            Mergeable<?> mergeable = this.gameDataMap.get(entry.getKey());
            if (mergeable == null) {
                this.gameDataMap.put(entry.getKey(), entry.getValue());
            } else {
                mergeable.merge(entry.getValue());
            }
        }
    }

    private Set<String> getKeysByType(SyncableType type) {
        Set<String> allKeysByType = new HashSet<>();
        for (Key key : this.gameDataMap.keySet()) {
            if (key.getType() == type && this.gameDataMap.get(key).getState() != SyncState.NOT_SET) {
                allKeysByType.add(key.getName());
            }
        }
        return allKeysByType;
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public SyncState getState() {
        SyncState state = SyncState.NOT_SET;
        for (Mergeable<?> mergeable : this.gameDataMap.values()) {
            if (mergeable.getState() == SyncState.DIRTY) {
                SyncState state2 = SyncState.DIRTY;
                return state2;
            }
            if (mergeable.getState() == SyncState.SYNCING) {
                state = SyncState.SYNCING;
            } else if (mergeable.getState() == SyncState.SYNCED && state == SyncState.NOT_SET) {
                state = SyncState.SYNCED;
            }
        }
        return state;
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public void startSyncing() {
        GameDataLock.lock();
        try {
            Iterator<Mergeable<?>> it = this.gameDataMap.values().iterator();
            while (it.hasNext()) {
                it.next().startSyncing();
            }
            GameDataLock.unlock();
        } catch (Throwable th) {
            GameDataLock.unlock();
            throw th;
        }
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public void completeSyncing() {
        GameDataLock.lock();
        try {
            Iterator<Mergeable<?>> it = this.gameDataMap.values().iterator();
            while (it.hasNext()) {
                it.next().completeSyncing();
            }
            GameDataLock.unlock();
        } catch (Throwable th) {
            GameDataLock.unlock();
            throw th;
        }
    }
}

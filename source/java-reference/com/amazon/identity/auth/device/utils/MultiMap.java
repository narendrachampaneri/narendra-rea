package com.amazon.identity.auth.device.utils;

import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class MultiMap<K, V> {
    private final Map<K, Set<V>> _multiMap = new HashMap();

    public boolean put(K key, V value) {
        Set<V> values = this._multiMap.get(key);
        if (values == null) {
            values = new HashSet<>();
            this._multiMap.put(key, values);
        }
        return values.add(value);
    }

    public Set<K> getKeys() {
        return Collections.unmodifiableSet(this._multiMap.keySet());
    }

    public Set<V> getValues(K key) {
        Set<V> values = this._multiMap.get(key);
        if (values == null) {
            values = new HashSet<>();
        }
        return Collections.unmodifiableSet(values);
    }

    public void clear() {
        this._multiMap.clear();
    }

    public int size() {
        int size = 0;
        Set<K> keys = getKeys();
        for (K key : keys) {
            size += getValues(key).size();
        }
        return size;
    }

    public boolean addAll(K key, Set<V> valueSet) {
        Set<V> values = this._multiMap.get(key);
        if (values == null) {
            values = new HashSet<>();
            this._multiMap.put(key, values);
        }
        return values.addAll(valueSet);
    }
}

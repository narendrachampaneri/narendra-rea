package com.amazon.ags.client.whispersync.model;

import com.amazon.ags.client.whispersync.model.Mergeable;

/* JADX INFO: loaded from: classes2.dex */
public interface Mergeable<T extends Mergeable<T>> {
    void completeSyncing();

    T deepCopy();

    SyncState getState();

    void merge(T t);

    void startSyncing();
}

package com.amazon.ags.client.whispersync;

import com.amazon.ags.api.whispersync.GameDataMap;
import com.amazon.ags.client.whispersync.model.Key;
import com.amazon.ags.client.whispersync.model.Mergeable;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface InternalGameDataMap extends GameDataMap, Mergeable<InternalGameDataMap> {
    Map<Key, Mergeable<?>> getAllElements();

    InternalGameDataMap lockAndCopy();

    void putElement(Key key, Mergeable<?> mergeable);

    int size();
}

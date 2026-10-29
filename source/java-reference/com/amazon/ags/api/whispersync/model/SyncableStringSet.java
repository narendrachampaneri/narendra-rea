package com.amazon.ags.api.whispersync.model;

import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public interface SyncableStringSet extends Iterable<SyncableStringElement> {
    void add(String str);

    void add(String str, Map<String, String> map);

    boolean contains(String str);

    SyncableStringElement get(String str);

    Set<SyncableStringElement> getValues();

    boolean isSet();
}

package com.amazon.ags.api.whispersync.model;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface SyncableString extends SyncableStringElement {
    boolean isSet();

    void set(String str);

    void set(String str, Map<String, String> map);
}

package com.amazon.ags.api.whispersync.model;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface SyncableNumber extends SyncableNumberElement {
    boolean isSet();

    void set(double d);

    void set(double d, Map<String, String> map);

    void set(int i);

    void set(int i, Map<String, String> map);

    void set(long j);

    void set(long j, Map<String, String> map);

    void set(String str);

    void set(String str, Map<String, String> map);
}

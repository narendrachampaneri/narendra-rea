package com.amazon.ags.api.whispersync.model;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface SyncableStringList {
    public static final int DEFAULT_MAX_SIZE = 5;
    public static final int MAX_SIZE_LIMIT = 1000;

    void add(String str);

    void add(String str, Map<String, String> map);

    int getMaxSize();

    SyncableStringElement[] getValues();

    boolean isSet();

    void setMaxSize(int i);
}

package com.amazon.ags.api.whispersync.model;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface SyncableNumberList {
    public static final int DEFAULT_MAX_SIZE = 5;
    public static final int MAX_SIZE_LIMIT = 1000;

    void add(double d);

    void add(double d, Map<String, String> map);

    void add(int i);

    void add(int i, Map<String, String> map);

    void add(long j);

    void add(long j, Map<String, String> map);

    void add(String str);

    void add(String str, Map<String, String> map);

    int getMaxSize();

    SyncableNumberElement[] getValues();

    boolean isSet();

    void setMaxSize(int i);
}

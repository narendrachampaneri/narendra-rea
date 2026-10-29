package com.amazon.ags.api.whispersync.model;

/* JADX INFO: loaded from: classes2.dex */
public interface SyncableDeveloperString {
    long getCloudTimestamp();

    String getCloudValue();

    long getTimestamp();

    String getValue();

    boolean inConflict();

    boolean isSet();

    void markAsResolved();

    void setValue(String str);
}

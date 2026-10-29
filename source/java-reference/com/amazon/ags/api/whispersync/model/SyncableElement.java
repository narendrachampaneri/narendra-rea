package com.amazon.ags.api.whispersync.model;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface SyncableElement {
    Map<String, String> getMetadata();

    long getTimestamp();
}

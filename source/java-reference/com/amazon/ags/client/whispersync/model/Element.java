package com.amazon.ags.client.whispersync.model;

import android.util.Log;
import com.amazon.ags.api.whispersync.model.SyncableElement;
import com.amazon.ags.client.whispersync.clock.ClockUtil;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Element implements SyncableElement {
    private static final String TAG = "GC_Whispersync";
    protected final Map<String, String> metadata = new HashMap();
    protected long timestamp;

    public Element() {
    }

    public Element(Map<String, String> metadata, long timestamp) {
        if (metadata != null) {
            this.metadata.putAll(metadata);
        }
        long currentTime = ClockUtil.getCurrentTime();
        if (timestamp < 0 || timestamp > currentTime) {
            Log.w(TAG, "Received an invalid timestamp [" + timestamp + "] setting it to current time [" + currentTime + "]");
            this.timestamp = currentTime;
        } else {
            this.timestamp = timestamp;
        }
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableElement
    public long getTimestamp() {
        return this.timestamp;
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableElement
    public Map<String, String> getMetadata() {
        return Collections.unmodifiableMap(this.metadata);
    }
}

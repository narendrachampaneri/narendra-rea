package com.amazon.ags.client.whispersync.model;

import android.util.Log;
import com.amazon.ags.api.whispersync.model.SyncableNumberElement;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.client.whispersync.clock.ClockUtil;
import com.amazon.ags.client.whispersync.metrics.WhispersyncMetricsFactory;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class NumberElement extends Element implements SyncableNumberElement {
    private static final String TAG = "GC_Whispersync";
    protected BigDecimal value;

    public NumberElement() {
        this.value = BigDecimal.ZERO;
    }

    public NumberElement(BigDecimal value) {
        super(new HashMap(), ClockUtil.getCurrentTime());
        if (value == null) {
            Log.e(TAG, "NumberElement cannot contain a null value");
            throw new IllegalArgumentException();
        }
        this.value = value;
    }

    public NumberElement(BigDecimal value, Map<String, String> metadata, long timestamp) {
        super(metadata, timestamp);
        if (value == null) {
            Log.e(TAG, "NumberElement cannot contain a null value");
            throw new IllegalArgumentException();
        }
        this.value = value;
    }

    public NumberElement(NumberElement copy) {
        super(new HashMap(), copy.timestamp);
        for (String key : copy.metadata.keySet()) {
            this.metadata.put(key, copy.metadata.get(key));
        }
        this.value = new BigDecimal(copy.value.doubleValue());
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberElement
    public long asLong() {
        return this.value.longValue();
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberElement
    public double asDouble() {
        return this.value.doubleValue();
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberElement
    public int asInt() {
        return this.value.intValue();
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberElement
    public String asString() {
        return this.value.toString();
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableNumberElement
    public BigDecimal asDecimal() {
        return this.value;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[").append(NumberElement.class.getSimpleName()).append(" value=").append(this.value).append(", ").append(" timestamp=").append(this.timestamp).append(", ").append(" metadata=").append(this.metadata).append("]");
        return sb.toString();
    }

    protected void reportEvent(String name, SyncableType syncableType) {
        GameCircleGenericEvent event;
        EventCollectorClient eventCollectorClient = EventCollectorClient.getInstance();
        if (eventCollectorClient != null && (event = WhispersyncMetricsFactory.createSyncableTypeEvent(name, syncableType)) != null) {
            eventCollectorClient.reportGenericEvent(event);
        }
    }
}

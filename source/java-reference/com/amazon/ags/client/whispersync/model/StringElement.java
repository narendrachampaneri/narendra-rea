package com.amazon.ags.client.whispersync.model;

import com.amazon.ags.api.whispersync.model.SyncableStringElement;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class StringElement extends Element implements SyncableStringElement {
    protected String value;

    public StringElement() {
    }

    public StringElement(String value, Map<String, String> metadata, long timestamp) {
        super(metadata, timestamp);
        this.value = value;
    }

    public StringElement(StringElement copy) {
        super(new HashMap(), copy.timestamp);
        for (String key : copy.metadata.keySet()) {
            this.metadata.put(key, copy.metadata.get(key));
        }
        this.value = copy.value;
    }

    @Override // com.amazon.ags.api.whispersync.model.SyncableStringElement
    public String getValue() {
        return this.value;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[").append(StringElement.class.getSimpleName()).append(" value=").append(this.value).append(", ").append(" timestamp=").append(this.timestamp).append(", ").append(" metadata=").append(this.metadata).append("]");
        return sb.toString();
    }
}

package com.amazon.ags.storage;

/* JADX INFO: loaded from: classes2.dex */
public class OfflineEventId {
    public static final OfflineEventId Invalid = new OfflineEventId(0);
    private final long id;

    public OfflineEventId(long id) {
        this.id = id;
    }

    public long getId() {
        return this.id;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OfflineEventId)) {
            return false;
        }
        OfflineEventId inputId = (OfflineEventId) obj;
        return inputId.id == this.id;
    }

    public int hashCode() {
        return (int) (this.id ^ (this.id >>> 32));
    }
}

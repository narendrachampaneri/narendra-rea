package com.amazon.insights.core.idresolver;

/* JADX INFO: loaded from: classes2.dex */
public class Id {
    private static final Id EMPTY_ID = new Id("");
    private final String id;

    public static synchronized Id getEmptyId() {
        return EMPTY_ID;
    }

    protected Id(String id) {
        this.id = id;
    }

    public static Id valueOf(String id) {
        return (id == null || id.equals("")) ? getEmptyId() : new Id(id);
    }

    public String getValue() {
        return this.id;
    }

    public int hashCode() {
        int result = (this.id == null ? 0 : this.id.hashCode()) + 31;
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Id other = (Id) obj;
            if (this.id == null) {
                return other.id == null;
            }
            return this.id.equals(other.id);
        }
        return false;
    }
}

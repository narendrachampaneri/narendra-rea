package com.chartboost.sdk.impl;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class cz implements Serializable {
    private final String a;

    public String a() {
        return this.a;
    }

    public boolean equals(Object o) {
        Object o2;
        if (this == o) {
            return true;
        }
        if (o == null) {
            return false;
        }
        if (o instanceof cz) {
            o2 = ((cz) o).a;
        } else {
            if (!(o instanceof String)) {
                return false;
            }
            o2 = (String) o;
        }
        if (this.a != null) {
            if (this.a.equals(o2)) {
                return true;
            }
        } else if (o2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (this.a != null) {
            return this.a.hashCode();
        }
        return 0;
    }

    public String toString() {
        return this.a;
    }
}

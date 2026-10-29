package com.chartboost.sdk.impl;

/* JADX INFO: loaded from: classes.dex */
public class cv extends cu {
    final cj b;

    public cj b() {
        return this.b;
    }

    @Override // com.chartboost.sdk.impl.cu
    public boolean equals(Object o) {
        if (!(o instanceof cv)) {
            return false;
        }
        cv cvVar = (cv) o;
        return this.a.equals(cvVar.a) && this.b.equals(cvVar.b);
    }

    @Override // com.chartboost.sdk.impl.cu
    public int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }
}

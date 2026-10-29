package com.chartboost.sdk.impl;

import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class ct implements Serializable {
    final byte a;
    final byte[] b;

    public byte a() {
        return this.a;
    }

    public byte[] b() {
        return this.b;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof ct)) {
            return false;
        }
        ct ctVar = (ct) o;
        return this.a == ctVar.a && Arrays.equals(this.b, ctVar.b);
    }

    public int hashCode() {
        return (this.b != null ? Arrays.hashCode(this.b) : 0) + (this.a * ClosedCaptionCtrl.TAB_OFFSET_CHAN_2);
    }
}

package com.amazon.ags.api.whispersync.model;

import java.math.BigDecimal;

/* JADX INFO: loaded from: classes2.dex */
public interface SyncableAccumulatingNumber {
    BigDecimal asDecimal();

    double asDouble();

    int asInt();

    long asLong();

    String asString();

    void decrement(double d);

    void decrement(int i);

    void decrement(long j);

    void decrement(String str);

    void increment(double d);

    void increment(int i);

    void increment(long j);

    void increment(String str);
}

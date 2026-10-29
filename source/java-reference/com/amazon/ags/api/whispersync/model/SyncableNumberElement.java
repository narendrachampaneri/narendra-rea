package com.amazon.ags.api.whispersync.model;

import java.math.BigDecimal;

/* JADX INFO: loaded from: classes2.dex */
public interface SyncableNumberElement extends SyncableElement {
    BigDecimal asDecimal();

    double asDouble();

    int asInt();

    long asLong();

    String asString();
}

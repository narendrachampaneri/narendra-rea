package com.amazon.insights.core.idresolver;

import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class RandomUUIDGenerator implements UniqueIdGenerator {
    @Override // com.amazon.insights.core.idresolver.UniqueIdGenerator
    public String generateUniqueIdString() {
        return UUID.randomUUID().toString();
    }
}

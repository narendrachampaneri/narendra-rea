package com.amazon.insights.delivery;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public interface EventStore {

    public interface EventIterator extends Iterator<String> {
        String peek();

        void removeReadEvents();
    }

    EventIterator iterator();

    boolean put(String str) throws EventStoreException;
}

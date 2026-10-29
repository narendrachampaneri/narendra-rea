package com.amazon.insights.event.adapter;

import com.amazon.insights.event.InternalEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface EventAdapter<T> {
    T translateFromEvent(InternalEvent internalEvent);
}

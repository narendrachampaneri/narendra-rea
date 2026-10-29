package com.amazon.insights.delivery;

import com.amazon.insights.event.EventObserver;
import com.amazon.insights.event.InternalEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface DeliveryClient extends EventObserver {
    void attemptDelivery();

    String[] batchedEvents();

    void enqueueEventForDelivery(InternalEvent internalEvent);
}

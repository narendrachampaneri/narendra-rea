package com.amazon.insights.event;

import com.amazon.insights.Event;
import com.amazon.insights.EventClient;

/* JADX INFO: loaded from: classes2.dex */
public interface InternalEventClient extends EventClient {
    void addEventObserver(EventObserver eventObserver);

    InternalEvent createInternalEvent(String str);

    void recordEvent(Event event, boolean z);

    void removeEventObserver(EventObserver eventObserver);
}

package com.amazon.insights.delivery;

/* JADX INFO: loaded from: classes2.dex */
public class EventStoreException extends RuntimeException {
    private static final long serialVersionUID = 7508256672436016788L;

    public EventStoreException(String message) {
        super(message);
    }

    public EventStoreException(Throwable tr) {
        super(tr);
    }

    public EventStoreException(String message, Throwable tr) {
        super(message, tr);
    }
}

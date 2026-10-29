package com.newrelic.agent.android.instrumentation.io;

import java.util.EventObject;

/* JADX INFO: loaded from: classes.dex */
public final class StreamCompleteEvent extends EventObject {
    private static final long serialVersionUID = 1;
    private final long bytes;
    private final Exception exception;

    public StreamCompleteEvent(Object source, long bytes, Exception exception) {
        super(source);
        this.bytes = bytes;
        this.exception = exception;
    }

    public StreamCompleteEvent(Object source, long bytes) {
        this(source, bytes, null);
    }

    public long getBytes() {
        return this.bytes;
    }

    public Exception getException() {
        return this.exception;
    }

    public boolean isError() {
        return this.exception != null;
    }
}

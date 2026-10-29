package com.amazon.ags.storage;

/* JADX INFO: loaded from: classes2.dex */
public class OfflineEventException extends Exception {
    private static final long serialVersionUID = -5999670364817975593L;

    public OfflineEventException() {
    }

    public OfflineEventException(String detailMessage) {
        super(detailMessage);
    }

    public OfflineEventException(Throwable throwable) {
        super(throwable);
    }

    public OfflineEventException(String detailMessage, Throwable throwable) {
        super(detailMessage, throwable);
    }
}

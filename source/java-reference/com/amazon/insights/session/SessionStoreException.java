package com.amazon.insights.session;

/* JADX INFO: loaded from: classes2.dex */
public class SessionStoreException extends RuntimeException {
    private static final long serialVersionUID = 1;

    public SessionStoreException(String message) {
        super(message);
    }

    public SessionStoreException(Throwable tr) {
        super(tr);
    }

    public SessionStoreException(String message, Throwable tr) {
        super(message, tr);
    }
}

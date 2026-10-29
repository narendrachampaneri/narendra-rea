package com.amazon.ags.html5.comm;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectionException extends Exception {
    private static final long serialVersionUID = 3026948415101973716L;

    public ConnectionException() {
    }

    public ConnectionException(String detailMessage) {
        super(detailMessage);
    }

    public ConnectionException(Throwable throwable) {
        super(throwable);
    }

    public ConnectionException(String detailMessage, Throwable throwable) {
        super(detailMessage, throwable);
    }
}

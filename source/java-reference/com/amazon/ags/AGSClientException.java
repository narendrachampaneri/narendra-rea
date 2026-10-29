package com.amazon.ags;

/* JADX INFO: loaded from: classes2.dex */
public class AGSClientException extends Exception {
    private static final long serialVersionUID = 134523463456345L;

    public AGSClientException(String message, Throwable t) {
        super(message, t);
    }

    public AGSClientException(String message) {
        super(message);
    }
}

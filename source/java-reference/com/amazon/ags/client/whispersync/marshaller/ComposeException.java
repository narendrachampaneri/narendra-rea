package com.amazon.ags.client.whispersync.marshaller;

/* JADX INFO: loaded from: classes2.dex */
public class ComposeException extends Exception {
    private static final long serialVersionUID = -8452283936316342389L;

    public ComposeException() {
    }

    public ComposeException(String message, Throwable throwable) {
        super(message, throwable);
    }

    public ComposeException(String message) {
        super(message);
    }

    public ComposeException(Throwable throwable) {
        super(throwable);
    }
}

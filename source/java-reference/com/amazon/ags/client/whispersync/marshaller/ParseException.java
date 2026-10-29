package com.amazon.ags.client.whispersync.marshaller;

/* JADX INFO: loaded from: classes2.dex */
public class ParseException extends Exception {
    private static final long serialVersionUID = 1693532024920707475L;

    public ParseException() {
    }

    public ParseException(String message, Throwable throwable) {
        super(message, throwable);
    }

    public ParseException(String message) {
        super(message);
    }

    public ParseException(Throwable throwable) {
        super(throwable);
    }
}

package com.amazon.insights.validate;

/* JADX INFO: loaded from: classes2.dex */
public class ValidationError {
    private final Exception exception;
    private final String reason;

    public ValidationError(String reason) {
        this(reason, null);
    }

    public ValidationError(String reason, Exception e) {
        this.reason = reason;
        this.exception = e;
    }

    public String getReason() {
        return this.reason;
    }

    public Exception getException() {
        return this.exception;
    }
}

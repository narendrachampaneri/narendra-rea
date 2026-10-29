package com.amazon.insights.error;

/* JADX INFO: loaded from: classes2.dex */
public class UnexpectedError extends BaseInsightsError {
    private final Exception exception;

    @Override // com.amazon.insights.error.BaseInsightsError, com.amazon.insights.error.InsightsError
    public /* bridge */ /* synthetic */ String getMessage() {
        return super.getMessage();
    }

    public UnexpectedError(String message, Exception ex) {
        super(message);
        this.exception = ex;
    }

    public Exception getException() {
        return this.exception;
    }
}

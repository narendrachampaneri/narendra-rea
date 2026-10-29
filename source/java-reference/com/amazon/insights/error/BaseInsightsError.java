package com.amazon.insights.error;

/* JADX INFO: loaded from: classes2.dex */
class BaseInsightsError implements InsightsError {
    private final String message;

    public BaseInsightsError(String message) {
        this.message = message;
    }

    @Override // com.amazon.insights.error.InsightsError
    public String getMessage() {
        return this.message;
    }
}

package com.amazon.insights.error;

/* JADX INFO: loaded from: classes2.dex */
public class InvalidArgumentError extends BaseInsightsError {
    private static final String MESSAGE_TEMPLATE = "Invalid parameter: '%s' provided to method '%s. %s'";
    private final String parameterName;

    @Override // com.amazon.insights.error.BaseInsightsError, com.amazon.insights.error.InsightsError
    public /* bridge */ /* synthetic */ String getMessage() {
        return super.getMessage();
    }

    public InvalidArgumentError(String parameterName, String methodName, String message) {
        super(String.format(MESSAGE_TEMPLATE, parameterName, methodName, message));
        this.parameterName = parameterName;
    }

    public String getParameterName() {
        return this.parameterName;
    }
}

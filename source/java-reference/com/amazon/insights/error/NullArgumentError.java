package com.amazon.insights.error;

/* JADX INFO: loaded from: classes2.dex */
public class NullArgumentError extends BaseInsightsError {
    private static final String MESSAGE_TEMPLATE = "Null value for parameter: '%s' provided to method '%s'";
    private final String parameterName;

    @Override // com.amazon.insights.error.BaseInsightsError, com.amazon.insights.error.InsightsError
    public /* bridge */ /* synthetic */ String getMessage() {
        return super.getMessage();
    }

    public NullArgumentError(String parameterName, String methodName) {
        super(String.format(MESSAGE_TEMPLATE, parameterName, methodName));
        this.parameterName = parameterName;
    }

    public String getParameterName() {
        return this.parameterName;
    }
}

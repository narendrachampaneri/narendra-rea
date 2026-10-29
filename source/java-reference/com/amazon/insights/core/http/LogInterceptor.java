package com.amazon.insights.core.http;

import com.amazon.insights.core.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public final class LogInterceptor implements HttpClient.Interceptor {
    private static Logger logger = Logger.getLogger(LogInterceptor.class);

    @Override // com.amazon.insights.core.http.HttpClient.Interceptor
    public void before(HttpClient.Request request) {
        if (logger.isLoggingEnabled(Logger.LogLevel.VERBOSE)) {
            logger.v(request.toString());
        }
    }

    @Override // com.amazon.insights.core.http.HttpClient.Interceptor
    public void after(HttpClient.Response response) {
        if (logger.isLoggingEnabled(Logger.LogLevel.VERBOSE)) {
            logger.v(response.toString());
        }
    }
}

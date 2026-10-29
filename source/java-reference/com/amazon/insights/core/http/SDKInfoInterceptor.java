package com.amazon.insights.core.http;

import com.amazon.insights.core.util.SDKInfo;

/* JADX INFO: loaded from: classes2.dex */
public final class SDKInfoInterceptor implements HttpClient.Interceptor {
    static final String CLIENT_SDK_VERSION_HEADER_NAME = "x-amzn-ClientSDKVersion";
    private final SDKInfo sdkInfo;

    public SDKInfoInterceptor(SDKInfo sdkInfo) {
        this.sdkInfo = sdkInfo;
    }

    @Override // com.amazon.insights.core.http.HttpClient.Interceptor
    public void before(HttpClient.Request request) {
        if (request != null) {
            request.addHeader(CLIENT_SDK_VERSION_HEADER_NAME, String.format("%s", this.sdkInfo.toString()));
        }
    }

    @Override // com.amazon.insights.core.http.HttpClient.Interceptor
    public void after(HttpClient.Response response) {
    }
}

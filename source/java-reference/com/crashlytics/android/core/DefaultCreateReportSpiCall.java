package com.crashlytics.android.core;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.common.ResponseParser;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class DefaultCreateReportSpiCall extends AbstractSpiCall implements CreateReportSpiCall {
    static final String FILE_CONTENT_TYPE = "application/octet-stream";
    static final String FILE_PARAM = "report[file]";
    static final String IDENTIFIER_PARAM = "report[identifier]";

    public DefaultCreateReportSpiCall(Kit kit, String protocolAndHostOverride, String url, HttpRequestFactory requestFactory) {
        super(kit, protocolAndHostOverride, url, requestFactory, HttpMethod.POST);
    }

    DefaultCreateReportSpiCall(Kit kit, String protocolAndHostOverride, String url, HttpRequestFactory requestFactory, HttpMethod method) {
        super(kit, protocolAndHostOverride, url, requestFactory, method);
    }

    @Override // com.crashlytics.android.core.CreateReportSpiCall
    public boolean invoke(CreateReportRequest requestData) {
        HttpRequest httpRequest = applyMultipartDataTo(applyHeadersTo(getHttpRequest(), requestData), requestData);
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Sending report to: " + getUrl());
        int statusCode = httpRequest.code();
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Create report request ID: " + httpRequest.header(AbstractSpiCall.HEADER_REQUEST_ID));
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Result was: " + statusCode);
        return ResponseParser.parse(statusCode) == 0;
    }

    private HttpRequest applyHeadersTo(HttpRequest request, CreateReportRequest requestData) {
        HttpRequest request2 = request.header(AbstractSpiCall.HEADER_API_KEY, requestData.apiKey).header(AbstractSpiCall.HEADER_CLIENT_TYPE, "android").header(AbstractSpiCall.HEADER_CLIENT_VERSION, CrashlyticsCore.getInstance().getVersion());
        Map<String, String> customHeaders = requestData.report.getCustomHeaders();
        for (Map.Entry<String, String> entry : customHeaders.entrySet()) {
            request2 = request2.header(entry);
        }
        return request2;
    }

    private HttpRequest applyMultipartDataTo(HttpRequest request, CreateReportRequest requestData) {
        Report report = requestData.report;
        return request.part(FILE_PARAM, report.getFileName(), "application/octet-stream", report.getFile()).part(IDENTIFIER_PARAM, report.getIdentifier());
    }
}

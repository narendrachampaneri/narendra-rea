package com.newrelic.agent.android.instrumentation.okhttp2;

import com.newrelic.agent.android.Measurements;
import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.instrumentation.TransactionState;
import com.newrelic.agent.android.instrumentation.TransactionStateUtil;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class OkHttp2TransactionStateUtil extends TransactionStateUtil {
    private static final String NO_BODY_TEXT = "Response BODY not found.";
    private static final AgentLog log = AgentLogManager.getAgentLog();

    public static void inspectAndInstrument(TransactionState transactionState, Request request) {
        inspectAndInstrument(transactionState, request.urlString(), request.method());
    }

    public static void inspectAndInstrumentResponse(TransactionState transactionState, Response response) {
        String appData = response.header(TransactionStateUtil.APP_DATA_HEADER);
        int statusCode = response.code();
        long contentLength = response.body().contentLength();
        inspectAndInstrumentResponse(transactionState, appData, (int) contentLength, statusCode);
        addTransactionAndErrorData(transactionState, response);
    }

    private static void addTransactionAndErrorData(TransactionState transactionState, Response response) {
        TransactionData transactionData = transactionState.end();
        if (transactionData != null) {
            TaskQueue.queue(new HttpTransactionMeasurement(transactionData.getUrl(), transactionData.getHttpMethod(), transactionData.getStatusCode(), transactionData.getErrorCode(), transactionData.getTimestamp(), transactionData.getTime(), transactionData.getBytesSent(), transactionData.getBytesReceived(), transactionData.getAppData()));
            if (transactionState.getStatusCode() >= 400) {
                String contentTypeHeader = response.header("Content-Type");
                Map<String, String> params = new TreeMap<>();
                if (contentTypeHeader != null && contentTypeHeader.length() > 0 && !"".equals(contentTypeHeader)) {
                    params.put("content_type", null);
                }
                params.put("content_length", transactionState.getBytesReceived() + "");
                Measurements.addHttpError(transactionData.getUrl(), transactionData.getHttpMethod(), transactionData.getStatusCode(), response.message(), params);
            }
        }
    }
}

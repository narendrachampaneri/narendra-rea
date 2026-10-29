package com.newrelic.agent.android.instrumentation.okhttp2;

import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.instrumentation.TransactionState;
import com.newrelic.agent.android.instrumentation.TransactionStateUtil;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import com.squareup.okhttp.Call;
import com.squareup.okhttp.Callback;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class CallExtension extends Call {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private OkHttpClient client;
    private Call impl;
    private Request request;
    private TransactionState transactionState;

    CallExtension(OkHttpClient client, Request request, Call impl) {
        super(client, request);
        this.client = client;
        this.request = request;
        this.impl = impl;
    }

    public Response execute() throws IOException {
        getTransactionState();
        try {
            Response response = this.impl.execute();
            checkResponse(response);
            return response;
        } catch (IOException e) {
            error(e);
            throw e;
        }
    }

    public void enqueue(Callback responseCallback) {
        getTransactionState();
        this.impl.enqueue(new CallbackExtension(responseCallback, this.transactionState));
    }

    public void cancel() {
        this.impl.cancel();
    }

    public boolean isCanceled() {
        return this.impl.isCanceled();
    }

    private void checkResponse(Response response) {
        if (!getTransactionState().isComplete()) {
            OkHttp2TransactionStateUtil.inspectAndInstrumentResponse(getTransactionState(), response);
        }
    }

    private TransactionState getTransactionState() {
        if (this.transactionState == null) {
            this.transactionState = new TransactionState();
            OkHttp2TransactionStateUtil.inspectAndInstrument(this.transactionState, this.request);
        }
        return this.transactionState;
    }

    private void error(Exception e) {
        TransactionData transactionData;
        TransactionState transactionState = getTransactionState();
        TransactionStateUtil.setErrorCodeFromException(transactionState, e);
        if (!transactionState.isComplete() && (transactionData = transactionState.end()) != null) {
            TaskQueue.queue(new HttpTransactionMeasurement(transactionData.getUrl(), transactionData.getHttpMethod(), transactionData.getStatusCode(), transactionData.getErrorCode(), transactionData.getTimestamp(), transactionData.getTime(), transactionData.getBytesSent(), transactionData.getBytesReceived(), transactionData.getAppData()));
        }
    }
}

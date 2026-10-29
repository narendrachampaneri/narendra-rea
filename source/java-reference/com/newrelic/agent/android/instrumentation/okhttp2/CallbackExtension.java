package com.newrelic.agent.android.instrumentation.okhttp2;

import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.instrumentation.TransactionState;
import com.newrelic.agent.android.instrumentation.TransactionStateUtil;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import com.squareup.okhttp.Callback;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class CallbackExtension implements Callback {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private Callback impl;
    private TransactionState transactionState;

    public CallbackExtension(Callback impl, TransactionState transactionState) {
        this.impl = impl;
        this.transactionState = transactionState;
    }

    public void onFailure(Request request, IOException e) {
        if (log.getLevel() >= 4) {
            log.verbose("CallbackExtension.onFailure() - logging error.");
        }
        error(e);
        this.impl.onFailure(request, e);
    }

    public void onResponse(Response response) throws IOException {
        if (log.getLevel() >= 4) {
            log.verbose("CallbackExtension.onResponse() - checking response.");
        }
        checkResponse(response);
        this.impl.onResponse(response);
    }

    private void checkResponse(Response response) {
        if (!getTransactionState().isComplete()) {
            if (log.getLevel() >= 4) {
                log.verbose("CallbackExtension.checkResponse() - transaction is not complete.  Inspecting and instrumenting response.");
            }
            OkHttp2TransactionStateUtil.inspectAndInstrumentResponse(getTransactionState(), response);
        }
    }

    private TransactionState getTransactionState() {
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

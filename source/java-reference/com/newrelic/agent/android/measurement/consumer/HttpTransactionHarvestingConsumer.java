package com.newrelic.agent.android.measurement.consumer;

import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.HttpTransaction;
import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;

/* JADX INFO: loaded from: classes.dex */
public class HttpTransactionHarvestingConsumer extends BaseMeasurementConsumer {
    public HttpTransactionHarvestingConsumer() {
        super(MeasurementType.Network);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.BaseMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurement(Measurement measurement) {
        HttpTransactionMeasurement m = (HttpTransactionMeasurement) measurement;
        HttpTransaction txn = new HttpTransaction();
        txn.setUrl(m.getUrl());
        txn.setHttpMethod(m.getHttpMethod());
        txn.setStatusCode(m.getStatusCode());
        txn.setErrorCode(m.getErrorCode());
        txn.setTotalTime(m.getTotalTime());
        txn.setCarrier(Agent.getActiveNetworkCarrier());
        txn.setWanType(Agent.getActiveNetworkWanType());
        txn.setBytesReceived(m.getBytesReceived());
        txn.setBytesSent(m.getBytesSent());
        txn.setAppData(m.getAppData());
        txn.setTimestamp(Long.valueOf(m.getStartTime()));
        Harvest.addHttpTransaction(txn);
    }
}

package com.newrelic.agent.android.measurement.consumer;

import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.HttpError;
import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import com.newrelic.agent.android.measurement.http.HttpErrorMeasurement;

/* JADX INFO: loaded from: classes.dex */
public class HttpErrorHarvestingConsumer extends BaseMeasurementConsumer {
    public HttpErrorHarvestingConsumer() {
        super(MeasurementType.HttpError);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.BaseMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurement(Measurement measurement) {
        HttpError error = new HttpError((HttpErrorMeasurement) measurement);
        Harvest.addHttpError(error);
    }
}

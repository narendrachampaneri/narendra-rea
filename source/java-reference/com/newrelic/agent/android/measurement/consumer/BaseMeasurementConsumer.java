package com.newrelic.agent.android.measurement.consumer;

import com.newrelic.agent.android.harvest.HarvestAdapter;
import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public class BaseMeasurementConsumer extends HarvestAdapter implements MeasurementConsumer {
    private final MeasurementType measurementType;

    public BaseMeasurementConsumer(MeasurementType measurementType) {
        this.measurementType = measurementType;
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public MeasurementType getMeasurementType() {
        return this.measurementType;
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurement(Measurement measurement) {
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurements(Collection<Measurement> measurements) {
        for (Measurement measurement : measurements) {
            consumeMeasurement(measurement);
        }
    }
}

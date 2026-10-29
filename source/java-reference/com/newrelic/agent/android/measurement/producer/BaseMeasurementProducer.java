package com.newrelic.agent.android.measurement.producer;

import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class BaseMeasurementProducer implements MeasurementProducer {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private final MeasurementType producedMeasurementType;
    private final ArrayList<Measurement> producedMeasurements = new ArrayList<>();

    public BaseMeasurementProducer(MeasurementType measurementType) {
        this.producedMeasurementType = measurementType;
    }

    @Override // com.newrelic.agent.android.measurement.producer.MeasurementProducer, com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public MeasurementType getMeasurementType() {
        return this.producedMeasurementType;
    }

    @Override // com.newrelic.agent.android.measurement.producer.MeasurementProducer
    public void produceMeasurement(Measurement measurement) {
        synchronized (this.producedMeasurements) {
            if (measurement != null) {
                this.producedMeasurements.add(measurement);
            }
        }
    }

    @Override // com.newrelic.agent.android.measurement.producer.MeasurementProducer
    public void produceMeasurements(Collection<Measurement> measurements) {
        synchronized (this.producedMeasurements) {
            if (measurements != null) {
                this.producedMeasurements.addAll(measurements);
                while (this.producedMeasurements.remove((Object) null)) {
                }
            }
        }
    }

    @Override // com.newrelic.agent.android.measurement.producer.MeasurementProducer
    public Collection<Measurement> drainMeasurements() {
        Collection<Measurement> arrayList;
        synchronized (this.producedMeasurements) {
            if (this.producedMeasurements.size() == 0) {
                arrayList = Collections.emptyList();
            } else {
                arrayList = new ArrayList<>(this.producedMeasurements);
                this.producedMeasurements.clear();
            }
        }
        return arrayList;
    }
}

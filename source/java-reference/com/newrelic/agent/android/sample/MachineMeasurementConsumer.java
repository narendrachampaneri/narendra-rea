package com.newrelic.agent.android.sample;

import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer;
import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.tracing.Sample;

/* JADX INFO: loaded from: classes.dex */
public class MachineMeasurementConsumer extends MetricMeasurementConsumer {
    public MachineMeasurementConsumer() {
        super(MeasurementType.Machine);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer
    protected String formatMetricName(String name) {
        return name;
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.BaseMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurement(Measurement measurement) {
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer, com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvest() {
        Sample memorySample = Sampler.sampleMemory();
        if (memorySample != null) {
            Metric memoryMetric = new Metric("Memory/Used");
            memoryMetric.sample(memorySample.getValue().doubleValue());
            addMetric(memoryMetric);
        }
        super.onHarvest();
    }
}

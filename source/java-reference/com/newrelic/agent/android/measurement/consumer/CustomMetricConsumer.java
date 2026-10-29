package com.newrelic.agent.android.measurement.consumer;

import com.newrelic.agent.android.measurement.CustomMetricMeasurement;
import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import com.newrelic.agent.android.metric.Metric;

/* JADX INFO: loaded from: classes.dex */
public class CustomMetricConsumer extends MetricMeasurementConsumer {
    private static final String METRIC_PREFIX = "Custom/";

    public CustomMetricConsumer() {
        super(MeasurementType.Custom);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer
    protected String formatMetricName(String name) {
        return METRIC_PREFIX + name;
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.BaseMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurement(Measurement measurement) {
        CustomMetricMeasurement custom = (CustomMetricMeasurement) measurement;
        Metric metric = custom.getCustomMetric();
        metric.setName(formatMetricName(metric.getName()));
        addMetric(metric);
    }
}

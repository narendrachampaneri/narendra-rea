package com.newrelic.agent.android.measurement.consumer;

import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.HarvestLifecycleAware;
import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.metric.MetricStore;

/* JADX INFO: loaded from: classes.dex */
public abstract class MetricMeasurementConsumer extends BaseMeasurementConsumer implements HarvestLifecycleAware {
    protected MetricStore metrics;
    protected boolean recordUnscopedMetrics;

    protected abstract String formatMetricName(String str);

    public MetricMeasurementConsumer(MeasurementType measurementType) {
        super(measurementType);
        this.recordUnscopedMetrics = true;
        this.metrics = new MetricStore();
        Harvest.addHarvestListener(this);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.BaseMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurement(Measurement measurement) {
        String name = formatMetricName(measurement.getName());
        String scope = measurement.getScope();
        double delta = measurement.getEndTimeInSeconds() - measurement.getStartTimeInSeconds();
        if (scope != null) {
            Metric scopedMetric = this.metrics.get(name, scope);
            if (scopedMetric == null) {
                scopedMetric = new Metric(name, scope);
                this.metrics.add(scopedMetric);
            }
            scopedMetric.sample(delta);
            scopedMetric.addExclusive(measurement.getExclusiveTimeInSeconds());
        }
        if (this.recordUnscopedMetrics) {
            Metric unscopedMetric = this.metrics.get(name);
            if (unscopedMetric == null) {
                unscopedMetric = new Metric(name);
                this.metrics.add(unscopedMetric);
            }
            unscopedMetric.sample(delta);
            unscopedMetric.addExclusive(measurement.getExclusiveTimeInSeconds());
        }
    }

    protected void addMetric(Metric newMetric) {
        Metric metric;
        if (newMetric.getScope() != null) {
            metric = this.metrics.get(newMetric.getName(), newMetric.getScope());
        } else {
            metric = this.metrics.get(newMetric.getName());
        }
        if (metric != null) {
            metric.aggregate(newMetric);
        } else {
            this.metrics.add(newMetric);
        }
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvest() {
        for (Metric metric : this.metrics.getAll()) {
            Harvest.addMetric(metric);
        }
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestComplete() {
        this.metrics.clear();
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestError() {
        this.metrics.clear();
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestSendFailed() {
        this.metrics.clear();
    }
}

package com.newrelic.agent.android.measurement.consumer;

import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.instrumentation.MetricCategory;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.BaseMeasurement;
import com.newrelic.agent.android.measurement.CustomMetricMeasurement;
import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import com.newrelic.agent.android.measurement.MethodMeasurement;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.tracing.ActivityTrace;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceLifecycleAware;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SummaryMetricMeasurementConsumer extends MetricMeasurementConsumer implements TraceLifecycleAware {
    private static final String ACTIVITY_METRIC_PREFIX = "Mobile/Activity/Summary/Name/";
    private static final String METRIC_PREFIX = "Mobile/Summary/";
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private final List<ActivityTrace> completedTraces;

    public SummaryMetricMeasurementConsumer() {
        super(MeasurementType.Any);
        this.completedTraces = new CopyOnWriteArrayList();
        this.recordUnscopedMetrics = false;
        TraceMachine.addTraceListener(this);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.BaseMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurement(Measurement measurement) {
        if (measurement != null) {
            switch (measurement.getType()) {
                case Method:
                    consumeMethodMeasurement((MethodMeasurement) measurement);
                    break;
                case Network:
                    consumeNetworkMeasurement((HttpTransactionMeasurement) measurement);
                    break;
                case Custom:
                    consumeCustomMeasurement((CustomMetricMeasurement) measurement);
                    break;
            }
        }
    }

    private void consumeMethodMeasurement(MethodMeasurement methodMeasurement) {
        if (methodMeasurement.getCategory() == null || methodMeasurement.getCategory() == MetricCategory.NONE) {
            methodMeasurement.setCategory(MetricCategory.categoryForMethod(methodMeasurement.getName()));
            if (methodMeasurement.getCategory() == MetricCategory.NONE) {
                return;
            }
        }
        BaseMeasurement summary = new BaseMeasurement(methodMeasurement);
        summary.setName(methodMeasurement.getCategory().getCategoryName());
        super.consumeMeasurement(summary);
    }

    private void consumeCustomMeasurement(CustomMetricMeasurement customMetricMeasurement) {
        if (customMetricMeasurement.getCategory() != null && customMetricMeasurement.getCategory() != MetricCategory.NONE) {
            BaseMeasurement summary = new BaseMeasurement(customMetricMeasurement);
            summary.setName(customMetricMeasurement.getCategory().getCategoryName());
            super.consumeMeasurement(summary);
        }
    }

    private void consumeNetworkMeasurement(HttpTransactionMeasurement networkMeasurement) {
        BaseMeasurement summary = new BaseMeasurement(networkMeasurement);
        summary.setName(MetricCategory.NETWORK.getCategoryName());
        super.consumeMeasurement(summary);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer
    protected String formatMetricName(String name) {
        return METRIC_PREFIX + name.replace("#", "/");
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer, com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvest() {
        if (this.metrics.getAll().size() != 0 && this.completedTraces.size() != 0) {
            for (ActivityTrace trace : this.completedTraces) {
                summarizeActivityMetrics(trace);
            }
            if (this.metrics.getAll().size() != 0) {
                log.debug("Not all metrics were summarized!");
            }
            this.completedTraces.clear();
        }
    }

    private void summarizeActivityNetworkMetrics(ActivityTrace activityTrace) {
        String activityName = activityTrace.getActivityName();
        if (activityTrace.networkCountMetric.getCount() > 0) {
            String name = activityTrace.networkCountMetric.getName();
            activityTrace.networkCountMetric.setName(name.replace("<activity>", activityName));
            activityTrace.networkCountMetric.setCount(1L);
            activityTrace.networkCountMetric.setMinFieldValue(Double.valueOf(activityTrace.networkCountMetric.getTotal()));
            activityTrace.networkCountMetric.setMaxFieldValue(Double.valueOf(activityTrace.networkCountMetric.getTotal()));
            Harvest.addMetric(activityTrace.networkCountMetric);
        }
        if (activityTrace.networkTimeMetric.getCount() > 0) {
            String name2 = activityTrace.networkTimeMetric.getName();
            activityTrace.networkTimeMetric.setName(name2.replace("<activity>", activityName));
            activityTrace.networkTimeMetric.setCount(1L);
            activityTrace.networkTimeMetric.setMinFieldValue(Double.valueOf(activityTrace.networkTimeMetric.getTotal()));
            activityTrace.networkTimeMetric.setMaxFieldValue(Double.valueOf(activityTrace.networkTimeMetric.getTotal()));
            Harvest.addMetric(activityTrace.networkTimeMetric);
        }
    }

    private void summarizeActivityMetrics(ActivityTrace activityTrace) {
        Trace trace = activityTrace.rootTrace;
        List<Metric> activityMetrics = this.metrics.removeAllWithScope(trace.metricName);
        List<Metric> backgroundMetrics = this.metrics.removeAllWithScope(trace.metricBackgroundName);
        Map<String, Metric> summaryMetrics = new HashMap<>();
        for (Metric activityMetric : activityMetrics) {
            summaryMetrics.put(activityMetric.getName(), activityMetric);
        }
        for (Metric backgroundMetric : backgroundMetrics) {
            if (summaryMetrics.containsKey(backgroundMetric.getName())) {
                summaryMetrics.get(backgroundMetric.getName()).aggregate(backgroundMetric);
            } else {
                summaryMetrics.put(backgroundMetric.getName(), backgroundMetric);
            }
        }
        double totalExclusiveTime = 0.0d;
        Iterator<Metric> it = summaryMetrics.values().iterator();
        while (it.hasNext()) {
            totalExclusiveTime += it.next().getExclusive();
        }
        double traceTime = (trace.exitTimestamp - trace.entryTimestamp) / 1000.0d;
        for (Metric metric : summaryMetrics.values()) {
            double normalizedTime = 0.0d;
            if (metric.getExclusive() != 0.0d && totalExclusiveTime != 0.0d) {
                normalizedTime = metric.getExclusive() / totalExclusiveTime;
            }
            double scaledTime = normalizedTime * traceTime;
            metric.setTotal(Double.valueOf(scaledTime));
            metric.setExclusive(Double.valueOf(scaledTime));
            metric.setMinFieldValue(Double.valueOf(0.0d));
            metric.setMaxFieldValue(Double.valueOf(0.0d));
            metric.setSumOfSquares(Double.valueOf(0.0d));
            metric.setScope(ACTIVITY_METRIC_PREFIX + trace.displayName);
            Harvest.addMetric(metric);
            Metric unScoped = new Metric(metric);
            unScoped.setScope(null);
            Harvest.addMetric(unScoped);
        }
        summarizeActivityNetworkMetrics(activityTrace);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer, com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestError() {
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer, com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestComplete() {
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onTraceStart(ActivityTrace activityTrace) {
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onTraceComplete(ActivityTrace activityTrace) {
        if (!this.completedTraces.contains(activityTrace)) {
            this.completedTraces.add(activityTrace);
        }
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onEnterMethod() {
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onExitMethod() {
    }
}

package com.newrelic.agent.android.harvest;

import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.tracing.ActivityTrace;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HarvestDataValidator extends HarvestAdapter {
    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestFinalize() {
        if (Harvest.isInitialized()) {
            ensureActivityNameMetricsExist();
        }
    }

    public void ensureActivityNameMetricsExist() {
        MachineMeasurements metrics;
        HarvestData harvestData = Harvest.getInstance().getHarvestData();
        ActivityTraces activityTraces = harvestData.getActivityTraces();
        if (activityTraces != null && activityTraces.count() != 0 && (metrics = harvestData.getMetrics()) != null && !metrics.isEmpty()) {
            for (ActivityTrace activityTrace : activityTraces.getActivityTraces()) {
                String activityName = activityTrace.rootTrace.displayName;
                int hashIndex = activityName.indexOf("#");
                if (hashIndex > 0) {
                    activityName = activityName.substring(0, hashIndex);
                }
                String activityMetricRoot = TraceMachine.ACTIVITY_METRIC_PREFIX + activityName;
                boolean foundMetricForActivity = false;
                List<Metric> unScopedMetrics = metrics.getMetrics().getAllUnscoped();
                if (unScopedMetrics != null && unScopedMetrics.size() > 0) {
                    for (Metric metric : unScopedMetrics) {
                        if (metric.getName().startsWith(activityMetricRoot)) {
                            foundMetricForActivity = true;
                            break;
                        }
                    }
                }
                if (!foundMetricForActivity) {
                    Metric activityMetric = new Metric(activityMetricRoot);
                    metrics.addMetric(activityMetric);
                }
            }
        }
    }
}

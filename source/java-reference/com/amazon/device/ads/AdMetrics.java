package com.amazon.device.ads;

import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class AdMetrics {
    public static final String LOGTAG = AdMetrics.class.getSimpleName();
    private MetricsCollector globalMetrics;
    private final Metrics.MetricsSubmitter submitter;
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
    private final WebRequest.WebRequestFactory webRequestFactory = new WebRequest.WebRequestFactory();

    public AdMetrics(Metrics.MetricsSubmitter submitter) {
        this.submitter = submitter;
    }

    private String getAaxUrlAndResetAdMetrics() {
        String json = getAaxJson();
        String url = this.submitter.getInstrumentationPixelUrl() + WebUtils.getURLEncodedString(json);
        this.submitter.resetMetricsCollector();
        return url;
    }

    public WebRequest getAaxWebRequestAndResetAdMetrics() {
        WebRequest webRequest = this.webRequestFactory.createWebRequest();
        webRequest.setUrlString(getAaxUrlAndResetAdMetrics());
        return webRequest;
    }

    public boolean canSubmit() {
        String pixelUrl = this.submitter.getInstrumentationPixelUrl();
        if (pixelUrl == null || pixelUrl.equals("")) {
            return false;
        }
        String appKey = MobileAdsInfoStore.getInstance().getRegistrationInfo().getAppKey();
        if (appKey == null || appKey.equals("123")) {
            this.logger.d("Not submitting metrics because the AppKey is either not set or set to a test key.");
            return false;
        }
        return true;
    }

    public void addGlobalMetrics(MetricsCollector globalMetrics) {
        this.globalMetrics = globalMetrics;
    }

    protected String getAaxJson() {
        JSONObject json = new JSONObject();
        JSONUtils.put(json, "c", "msdk");
        JSONUtils.put(json, "v", Version.getRawSDKVersion());
        addMetricsToJSON(json, this.submitter.getMetricsCollector());
        addMetricsToJSON(json, this.globalMetrics);
        String jsonString = !(json instanceof JSONObject) ? json.toString() : JSONObjectInstrumentation.toString(json);
        String bracesRemovedJsonString = jsonString.substring(1, jsonString.length() - 1);
        return bracesRemovedJsonString;
    }

    protected static void addMetricsToJSON(JSONObject json, MetricsCollector metricsCollector) {
        if (metricsCollector != null) {
            HashMap<Metrics.MetricType, Long> startedMetricHits = new HashMap<>();
            HashMap<Metrics.MetricType, Integer> incrementedMetricHits = new HashMap<>();
            String adTypeMetricTag = metricsCollector.getAdTypeMetricTag();
            if (adTypeMetricTag != null) {
                adTypeMetricTag = adTypeMetricTag + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR;
            }
            MetricsCollector.MetricHit[] tempMetricHits = (MetricsCollector.MetricHit[]) metricsCollector.getMetricHits().toArray(new MetricsCollector.MetricHit[metricsCollector.getMetricHits().size()]);
            for (MetricsCollector.MetricHit metricHit : tempMetricHits) {
                String metricName = metricHit.metric.getAaxName();
                if (adTypeMetricTag != null && metricHit.metric.isAdTypeSpecific()) {
                    metricName = adTypeMetricTag + metricName;
                }
                if (metricHit instanceof MetricsCollector.MetricHitStartTime) {
                    MetricsCollector.MetricHitStartTime metricHitStartTime = (MetricsCollector.MetricHitStartTime) metricHit;
                    startedMetricHits.put(metricHit.metric, Long.valueOf(metricHitStartTime.startTime));
                } else if (metricHit instanceof MetricsCollector.MetricHitStopTime) {
                    MetricsCollector.MetricHitStopTime metricHitStopTime = (MetricsCollector.MetricHitStopTime) metricHit;
                    Long startTime = startedMetricHits.remove(metricHit.metric);
                    if (startTime != null) {
                        long previousTotalTime = JSONUtils.getLongFromJSON(json, metricName, 0L);
                        long totalTime = (metricHitStopTime.stopTime + previousTotalTime) - startTime.longValue();
                        JSONUtils.put(json, metricName, totalTime);
                    }
                } else if (metricHit instanceof MetricsCollector.MetricHitTotalTime) {
                    MetricsCollector.MetricHitTotalTime metricHitTotalTime = (MetricsCollector.MetricHitTotalTime) metricHit;
                    JSONUtils.put(json, metricName, metricHitTotalTime.totalTime);
                } else if (metricHit instanceof MetricsCollector.MetricHitIncrement) {
                    MetricsCollector.MetricHitIncrement metricHitIncrement = (MetricsCollector.MetricHitIncrement) metricHit;
                    Integer increment = incrementedMetricHits.get(metricHit.metric);
                    incrementedMetricHits.put(metricHit.metric, Integer.valueOf(increment == null ? metricHitIncrement.increment : increment.intValue() + metricHitIncrement.increment));
                } else if (metricHit instanceof MetricsCollector.MetricHitString) {
                    MetricsCollector.MetricHitString metricHitString = (MetricsCollector.MetricHitString) metricHit;
                    JSONUtils.put(json, metricName, metricHitString.text);
                }
            }
            for (Map.Entry<Metrics.MetricType, Integer> incrementedMetric : incrementedMetricHits.entrySet()) {
                String metricName2 = incrementedMetric.getKey().getAaxName();
                if (adTypeMetricTag != null && incrementedMetric.getKey().isAdTypeSpecific()) {
                    metricName2 = adTypeMetricTag + metricName2;
                }
                JSONUtils.put(json, metricName2, incrementedMetric.getValue().intValue());
            }
        }
    }
}

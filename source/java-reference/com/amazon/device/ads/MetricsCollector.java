package com.amazon.device.ads;

import java.util.ArrayList;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
class MetricsCollector {
    private static final String LOGTAG = MetricsCollector.class.getSimpleName();
    private String adTypeMetricTag;
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
    protected Vector<MetricHit> metricHits = new Vector<>(60);

    public Vector<MetricHit> getMetricHits() {
        return this.metricHits;
    }

    public void incrementMetric(Metrics.MetricType metric) {
        this.logger.d("METRIC Increment " + metric.toString());
        this.metricHits.add(new MetricHitIncrement(metric, 1));
    }

    public void setMetricString(Metrics.MetricType metric, String s) {
        this.logger.d("METRIC Set " + metric.toString() + ": " + s);
        this.metricHits.add(new MetricHitString(metric, s));
    }

    public void publishMetricInMilliseconds(Metrics.MetricType metric, long value) {
        this.logger.d("METRIC Publish " + metric.toString());
        this.metricHits.add(new MetricHitTotalTime(metric, value));
    }

    public void publishMetricInMillisecondsFromNanoseconds(Metrics.MetricType metric, long value) {
        publishMetricInMilliseconds(metric, NumberUtils.convertToMillisecondsFromNanoseconds(value));
    }

    public void startMetricInMillisecondsFromNanoseconds(Metrics.MetricType metric, long startTime) {
        this.logger.d("METRIC Start " + metric.toString());
        this.metricHits.add(new MetricHitStartTime(metric, NumberUtils.convertToMillisecondsFromNanoseconds(startTime)));
    }

    public void startMetric(Metrics.MetricType metric) {
        startMetricInMillisecondsFromNanoseconds(metric, System.nanoTime());
    }

    public void stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType metric, long stopTime) {
        this.logger.d("METRIC Stop " + metric.toString());
        this.metricHits.add(new MetricHitStopTime(metric, NumberUtils.convertToMillisecondsFromNanoseconds(stopTime)));
    }

    public void stopMetric(Metrics.MetricType metric) {
        stopMetricInMillisecondsFromNanoseconds(metric, System.nanoTime());
    }

    public void setAdType(AdProperties.AdType adType) {
        this.adTypeMetricTag = adType.getAdTypeMetricTag();
    }

    public String getAdTypeMetricTag() {
        return this.adTypeMetricTag;
    }

    static class CompositeMetricsCollector extends MetricsCollector {
        private final ArrayList<MetricsCollector> collectors;

        public CompositeMetricsCollector(ArrayList<MetricsCollector> collectors) {
            this.collectors = collectors;
        }

        @Override // com.amazon.device.ads.MetricsCollector
        public void incrementMetric(Metrics.MetricType metric) {
            for (MetricsCollector collector : this.collectors) {
                collector.incrementMetric(metric);
            }
        }

        @Override // com.amazon.device.ads.MetricsCollector
        public void setMetricString(Metrics.MetricType metric, String s) {
            for (MetricsCollector collector : this.collectors) {
                collector.setMetricString(metric, s);
            }
        }

        @Override // com.amazon.device.ads.MetricsCollector
        public void publishMetricInMilliseconds(Metrics.MetricType metric, long value) {
            for (MetricsCollector collector : this.collectors) {
                collector.publishMetricInMilliseconds(metric, value);
            }
        }

        @Override // com.amazon.device.ads.MetricsCollector
        public void publishMetricInMillisecondsFromNanoseconds(Metrics.MetricType metric, long value) {
            for (MetricsCollector collector : this.collectors) {
                collector.publishMetricInMillisecondsFromNanoseconds(metric, value);
            }
        }

        @Override // com.amazon.device.ads.MetricsCollector
        public void startMetricInMillisecondsFromNanoseconds(Metrics.MetricType metric, long startTime) {
            for (MetricsCollector collector : this.collectors) {
                collector.startMetricInMillisecondsFromNanoseconds(metric, startTime);
            }
        }

        @Override // com.amazon.device.ads.MetricsCollector
        public void startMetric(Metrics.MetricType metric) {
            for (MetricsCollector collector : this.collectors) {
                collector.startMetric(metric);
            }
        }

        @Override // com.amazon.device.ads.MetricsCollector
        public void stopMetricInMillisecondsFromNanoseconds(Metrics.MetricType metric, long stopTime) {
            for (MetricsCollector collector : this.collectors) {
                collector.stopMetricInMillisecondsFromNanoseconds(metric, stopTime);
            }
        }

        @Override // com.amazon.device.ads.MetricsCollector
        public void stopMetric(Metrics.MetricType metric) {
            for (MetricsCollector collector : this.collectors) {
                collector.stopMetric(metric);
            }
        }
    }

    public boolean isMetricsCollectorEmpty() {
        return this.metricHits.isEmpty();
    }

    static class MetricHit {
        public final Metrics.MetricType metric;

        public MetricHit(Metrics.MetricType metric) {
            this.metric = metric;
        }
    }

    static class MetricHitStartTime extends MetricHit {
        public final long startTime;

        public MetricHitStartTime(Metrics.MetricType metric, long startTime) {
            super(metric);
            this.startTime = startTime;
        }
    }

    static class MetricHitStopTime extends MetricHit {
        public final long stopTime;

        public MetricHitStopTime(Metrics.MetricType metric, long stopTime) {
            super(metric);
            this.stopTime = stopTime;
        }
    }

    static class MetricHitTotalTime extends MetricHit {
        public final long totalTime;

        public MetricHitTotalTime(Metrics.MetricType metric, long totalTime) {
            super(metric);
            this.totalTime = totalTime;
        }
    }

    static class MetricHitIncrement extends MetricHit {
        public final int increment;

        public MetricHitIncrement(Metrics.MetricType metric, int increment) {
            super(metric);
            this.increment = increment;
        }
    }

    static class MetricHitString extends MetricHit {
        public final String text;

        public MetricHitString(Metrics.MetricType metric, String text) {
            super(metric);
            this.text = text;
        }
    }
}

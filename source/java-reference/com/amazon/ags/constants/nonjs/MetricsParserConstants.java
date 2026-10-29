package com.amazon.ags.constants.nonjs;

/* JADX INFO: loaded from: classes2.dex */
public class MetricsParserConstants {
    public static final String COUNT_METRIC_KEY_PREFIX = "Count";
    public static final String METRIC_KEY_PREFIX_DELIMITER = "::";
    public static final String TIME_METRIC_KEY_PREFIX = "Time";

    public static String convertCountKey(String countKey) {
        return "Count::" + countKey;
    }

    public static String convertTimeKey(String timeKey) {
        return "Time::" + timeKey;
    }
}

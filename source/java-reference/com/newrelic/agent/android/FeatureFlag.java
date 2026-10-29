package com.newrelic.agent.android;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public enum FeatureFlag {
    HttpResponseBodyCapture,
    CrashReporting,
    AnalyticsEvents;

    public static final Set<FeatureFlag> enabledFeatures = new HashSet();

    static {
        enableFeature(HttpResponseBodyCapture);
        enableFeature(CrashReporting);
        enableFeature(AnalyticsEvents);
    }

    public static void enableFeature(FeatureFlag featureFlag) {
        enabledFeatures.add(featureFlag);
    }

    public static void disableFeature(FeatureFlag featureFlag) {
        enabledFeatures.remove(featureFlag);
    }

    public static boolean featureEnabled(FeatureFlag featureFlag) {
        return enabledFeatures.contains(featureFlag);
    }
}

package com.newrelic.agent.android;

import com.newrelic.agent.android.analytics.AnalyticAttributeStore;
import com.newrelic.agent.android.crashes.CrashStore;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class AgentConfiguration {
    private static final String DEFAULT_COLLECTOR_HOST = "mobile-collector.newrelic.com";
    private static final String DEFAULT_CRASH_COLLECTOR_HOST = "mobile-crash.newrelic.com";
    private AnalyticAttributeStore analyticAttributeStore;
    private String appName;
    private String applicationToken;
    private CrashStore crashStore;
    private boolean useLocationService;
    private String collectorHost = DEFAULT_COLLECTOR_HOST;
    private String crashCollectorHost = DEFAULT_CRASH_COLLECTOR_HOST;
    private boolean useSsl = true;
    private boolean reportCrashes = true;
    private boolean enableAnalyticsEvents = true;
    private String sessionID = UUID.randomUUID().toString();
    private String customApplicationVersion = null;
    private String customBuildId = null;

    public String getApplicationToken() {
        return this.applicationToken;
    }

    public void setApplicationToken(String applicationToken) {
        this.applicationToken = applicationToken;
    }

    public String getAppName() {
        return this.appName;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }

    public String getCollectorHost() {
        return this.collectorHost;
    }

    public void setCollectorHost(String collectorHost) {
        this.collectorHost = collectorHost;
    }

    public String getCrashCollectorHost() {
        return this.crashCollectorHost;
    }

    public void setCrashCollectorHost(String crashCollectorHost) {
        this.crashCollectorHost = crashCollectorHost;
    }

    public boolean useSsl() {
        return this.useSsl;
    }

    public void setUseSsl(boolean useSsl) {
        this.useSsl = useSsl;
    }

    public boolean useLocationService() {
        return this.useLocationService;
    }

    public void setUseLocationService(boolean useLocationService) {
        this.useLocationService = useLocationService;
    }

    public boolean getReportCrashes() {
        return this.reportCrashes;
    }

    public void setReportCrashes(boolean reportCrashes) {
        this.reportCrashes = reportCrashes;
    }

    public CrashStore getCrashStore() {
        return this.crashStore;
    }

    public void setCrashStore(CrashStore crashStore) {
        this.crashStore = crashStore;
    }

    public AnalyticAttributeStore getAnalyticAttributeStore() {
        return this.analyticAttributeStore;
    }

    public void setAnalyticAttributeStore(AnalyticAttributeStore analyticAttributeStore) {
        this.analyticAttributeStore = analyticAttributeStore;
    }

    public boolean getEnableAnalyticsEvents() {
        return this.enableAnalyticsEvents;
    }

    public void setEnableAnalyticsEvents(boolean enableAnalyticsEvents) {
        this.enableAnalyticsEvents = enableAnalyticsEvents;
    }

    public String getSessionID() {
        return this.sessionID;
    }

    public void setSessionID(String sessionID) {
        this.sessionID = sessionID;
    }

    public String getCustomApplicationVersion() {
        return this.customApplicationVersion;
    }

    public void setCustomApplicationVersion(String customApplicationVersion) {
        this.customApplicationVersion = customApplicationVersion;
    }

    public String getCustomBuildIdentifier() {
        return this.customBuildId;
    }

    public void setCustomBuildIdentifier(String customBuildId) {
        this.customBuildId = customBuildId;
    }
}

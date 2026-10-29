package com.newrelic.agent.android;

import android.content.Context;
import android.text.TextUtils;
import com.amazon.device.ads.WebRequest;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.instrumentation.TransactionState;
import com.newrelic.agent.android.instrumentation.TransactionStateUtil;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.logging.AndroidAgentLog;
import com.newrelic.agent.android.logging.NullAgentLog;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import com.newrelic.agent.android.metric.MetricUnit;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.newrelic.agent.android.tracing.TracingInactiveException;
import com.newrelic.agent.android.util.NetworkFailure;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpResponse;

/* JADX INFO: loaded from: classes.dex */
public class NewRelic {
    private static final String DEFAULT_COLLECTOR_ADDR = "mobile-collector.newrelic.com";
    private static final String UNKNOWN_HTTP_REQUEST_TYPE = "unknown";
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private static final AgentConfiguration agentConfiguration = new AgentConfiguration();
    private static boolean started = false;
    private boolean loggingEnabled = true;
    private int logLevel = 3;

    private boolean isInstrumented() {
        return true;
    }

    private NewRelic(String token) {
        agentConfiguration.setApplicationToken(token);
    }

    public static NewRelic withApplicationToken(String token) {
        return new NewRelic(token);
    }

    public NewRelic usingSsl(boolean useSsl) {
        agentConfiguration.setUseSsl(useSsl);
        return this;
    }

    public NewRelic usingCollectorAddress(String address) {
        agentConfiguration.setCollectorHost(address);
        return this;
    }

    public NewRelic usingCrashCollectorAddress(String address) {
        agentConfiguration.setCrashCollectorHost(address);
        return this;
    }

    public NewRelic withLocationServiceEnabled(boolean enabled) {
        agentConfiguration.setUseLocationService(enabled);
        return this;
    }

    public NewRelic withLoggingEnabled(boolean enabled) {
        this.loggingEnabled = enabled;
        return this;
    }

    public NewRelic withLogLevel(int level) {
        this.logLevel = level;
        return this;
    }

    public NewRelic withCrashReportingEnabled(boolean enabled) {
        agentConfiguration.setReportCrashes(enabled);
        if (enabled) {
            enableFeature(FeatureFlag.CrashReporting);
        } else {
            disableFeature(FeatureFlag.CrashReporting);
        }
        return this;
    }

    public NewRelic withHttpResponseBodyCaptureEnabled(boolean enabled) {
        if (enabled) {
            enableFeature(FeatureFlag.HttpResponseBodyCapture);
        } else {
            disableFeature(FeatureFlag.HttpResponseBodyCapture);
        }
        return this;
    }

    public NewRelic withApplicationVersion(String appVersion) {
        if (appVersion != null) {
            agentConfiguration.setCustomApplicationVersion(appVersion);
        }
        return this;
    }

    @Deprecated
    public NewRelic withBuildIdentifier(String buildId) {
        StatsEngine.get().inc("Supportability/AgentHealth/Deprecated/WithBuildIdentifier");
        return withApplicationBuild(buildId);
    }

    public NewRelic withApplicationBuild(String buildId) {
        if (!TextUtils.isEmpty(buildId)) {
            agentConfiguration.setCustomBuildIdentifier(buildId);
        }
        return this;
    }

    public NewRelic withAnalyticsEvents(boolean enabled) {
        if (enabled) {
            enableFeature(FeatureFlag.AnalyticsEvents);
        } else {
            disableFeature(FeatureFlag.AnalyticsEvents);
        }
        return this;
    }

    public static void enableFeature(FeatureFlag featureFlag) {
        FeatureFlag.enableFeature(featureFlag);
    }

    public static void disableFeature(FeatureFlag featureFlag) {
        FeatureFlag.disableFeature(featureFlag);
    }

    public void start(Context context) {
        if (started) {
            log.debug("NewRelic is already running.");
            return;
        }
        try {
            AgentLogManager.setAgentLog(this.loggingEnabled ? new AndroidAgentLog() : new NullAgentLog());
            log.setLevel(this.logLevel);
            if (isInstrumented()) {
                AndroidAgentImpl.init(context, agentConfiguration);
                started = true;
            } else {
                log.error("Failed to detect New Relic instrumentation.  Something likely went wrong during your build process and you should visit http://support.newrelic.com.");
            }
        } catch (Throwable e) {
            log.error("Error occurred while starting the New Relic agent!", e);
        }
    }

    public static boolean isStarted() {
        return started;
    }

    @Deprecated
    public static void shutdown() {
        StatsEngine.get().inc("Supportability/AgentHealth/Deprecated/Shutdown");
        if (started) {
            try {
                Agent.getImpl().stop();
            } finally {
                Agent.setImpl(NullAgentImpl.instance);
                started = false;
            }
        }
    }

    public static String startInteraction(String actionName) {
        checkNull(actionName, "startInteraction: actionName must be an action/method name.");
        log.debug("NewRelic.startInteraction invoked. actionName: " + actionName);
        TraceMachine.startTracing(actionName.replace("/", "."), true);
        try {
            return TraceMachine.getActivityTrace().getId();
        } catch (TracingInactiveException e) {
            return null;
        }
    }

    @Deprecated
    public static String startInteraction(Context activityContext, String actionName) {
        checkNull(activityContext, "startInteraction: context must be an Activity instance.");
        checkNull(actionName, "startInteraction: actionName must be an action/method name.");
        TraceMachine.startTracing(activityContext.getClass().getSimpleName() + "#" + actionName.replace("/", "."));
        try {
            return TraceMachine.getActivityTrace().getId();
        } catch (TracingInactiveException e) {
            return null;
        }
    }

    @Deprecated
    public static String startInteraction(Context context, String actionName, boolean cancelRunningTrace) {
        if (!TraceMachine.isTracingActive() || cancelRunningTrace) {
            return startInteraction(context, actionName);
        }
        log.warning("startInteraction: An interaction is already being traced, and invalidateActiveTrace is false. This interaction will not be traced.");
        return null;
    }

    public static void endInteraction(String id) {
        log.debug("NewRelic.endInteraction invoked. id: " + id);
        TraceMachine.endTrace(id);
    }

    public static void setInteractionName(String name) {
        TraceMachine.setRootDisplayName(name);
    }

    public static void recordMetric(String name, String category, int count, double totalValue, double exclusiveValue) {
        recordMetric(name, category, count, totalValue, exclusiveValue, null, null);
    }

    public static void recordMetric(String name, String category, int count, double totalValue, double exclusiveValue, MetricUnit countUnit, MetricUnit valueUnit) {
        log.debug("NewRelic.recordMeric invoked for name " + name + ", category: " + category + ", count: " + count + ", totalValue " + totalValue + ", exclusiveValue: " + exclusiveValue + ", countUnit: " + countUnit + ", valueUnit: " + valueUnit);
        checkNull(category, "recordMetric: category must not be null. If no MetricCategory is applicable, use MetricCategory.NONE.");
        checkEmpty(name, "recordMetric: name must not be empty.");
        if (!checkNegative(count, "recordMetric: count must not be negative.")) {
            Measurements.addCustomMetric(name, category, count, totalValue, exclusiveValue, countUnit, valueUnit);
        }
    }

    public static void recordMetric(String name, String category, double value) {
        recordMetric(name, category, 1, value, value, null, null);
    }

    public static void recordMetric(String name, String category) {
        recordMetric(name, category, 1.0d);
    }

    public static void noticeHttpTransaction(String url, String httpMethod, int statusCode, long startTimeMs, long endTimeMs, long bytesSent, long bytesReceived) {
        _noticeHttpTransaction(url, httpMethod, statusCode, startTimeMs, endTimeMs, bytesSent, bytesReceived, null, null, null);
    }

    public static void noticeHttpTransaction(String url, String httpMethod, int statusCode, long startTimeMs, long endTimeMs, long bytesSent, long bytesReceived, String responseBody) {
        _noticeHttpTransaction(url, httpMethod, statusCode, startTimeMs, endTimeMs, bytesSent, bytesReceived, responseBody, null, null);
    }

    public static void noticeHttpTransaction(String url, String httpMethod, int statusCode, long startTimeMs, long endTimeMs, long bytesSent, long bytesReceived, String responseBody, Map<String, String> params) {
        _noticeHttpTransaction(url, httpMethod, statusCode, startTimeMs, endTimeMs, bytesSent, bytesReceived, responseBody, params, null);
    }

    public static void noticeHttpTransaction(String url, String httpMethod, int statusCode, long startTimeMs, long endTimeMs, long bytesSent, long bytesReceived, String responseBody, Map<String, String> params, String appData) {
        _noticeHttpTransaction(url, httpMethod, statusCode, startTimeMs, endTimeMs, bytesSent, bytesReceived, responseBody, params, appData);
    }

    public static void noticeHttpTransaction(String url, String httpMethod, int statusCode, long startTimeMs, long endTimeMs, long bytesSent, long bytesReceived, String responseBody, Map<String, String> params, HttpResponse httpResponse) {
        Header header;
        if (httpResponse != null && (header = httpResponse.getFirstHeader(TransactionStateUtil.CROSS_PROCESS_ID_HEADER)) != null && header.getValue() != null && header.getValue().length() > 0) {
            _noticeHttpTransaction(url, httpMethod, statusCode, startTimeMs, endTimeMs, bytesSent, bytesReceived, responseBody, params, header.getValue());
        } else {
            _noticeHttpTransaction(url, httpMethod, statusCode, startTimeMs, endTimeMs, bytesSent, bytesReceived, responseBody, params, null);
        }
    }

    public static void noticeHttpTransaction(String url, String httpMethod, int statusCode, long startTimeMs, long endTimeMs, long bytesSent, long bytesReceived, String responseBody, Map<String, String> params, URLConnection urlConnection) {
        String header;
        if (urlConnection != null && (header = urlConnection.getHeaderField(TransactionStateUtil.CROSS_PROCESS_ID_HEADER)) != null && header.length() > 0) {
            _noticeHttpTransaction(url, httpMethod, statusCode, startTimeMs, endTimeMs, bytesSent, bytesReceived, responseBody, params, header);
        } else {
            _noticeHttpTransaction(url, httpMethod, statusCode, startTimeMs, endTimeMs, bytesSent, bytesReceived, responseBody, params, null);
        }
    }

    @Deprecated
    public static void noticeHttpTransaction(String url, int statusCode, long startTimeMs, long endTimeMs, long bytesSent, long bytesReceived, String responseBody, Map<String, String> params, HttpResponse httpResponse) {
        noticeHttpTransaction(url, "unknown", statusCode, startTimeMs, endTimeMs, bytesSent, bytesReceived, responseBody, params, httpResponse);
    }

    @Deprecated
    public static void noticeHttpTransaction(String url, int statusCode, long startTimeMs, long endTimeMs, long bytesSent, long bytesReceived, String responseBody, Map<String, String> params, URLConnection urlConnection) {
        noticeHttpTransaction(url, "unknown", statusCode, startTimeMs, endTimeMs, bytesSent, bytesReceived, responseBody, params, urlConnection);
    }

    @Deprecated
    public static void noticeHttpTransaction(String url, int statusCode, long startTimeMs, long endTimeMs, long bytesSent, long bytesReceived) {
        _noticeHttpTransaction(url, "unknown", statusCode, startTimeMs, endTimeMs, bytesSent, bytesReceived, null, null, null);
    }

    @Deprecated
    public static void noticeHttpTransaction(String url, int statusCode, long startTimeMs, long endTimeMs, long bytesSent, long bytesReceived, String responseBody) {
        _noticeHttpTransaction(url, "unknown", statusCode, startTimeMs, endTimeMs, bytesSent, bytesReceived, responseBody, null, null);
    }

    @Deprecated
    public static void noticeHttpTransaction(String url, int statusCode, long startTimeMs, long endTimeMs, long bytesSent, long bytesReceived, String responseBody, Map<String, String> params) {
        _noticeHttpTransaction(url, "unknown", statusCode, startTimeMs, endTimeMs, bytesSent, bytesReceived, responseBody, params, null);
    }

    @Deprecated
    public static void noticeHttpTransaction(String url, int statusCode, long startTimeMs, long endTimeMs, long bytesSent, long bytesReceived, String responseBody, Map<String, String> params, String appData) {
        _noticeHttpTransaction(url, "unknown", statusCode, startTimeMs, endTimeMs, bytesSent, bytesReceived, responseBody, params, appData);
    }

    private static void _noticeHttpTransaction(String url, String httpMethod, int statusCode, long startTimeMs, long endTimeMs, long bytesSent, long bytesReceived, String responseBody, Map<String, String> params, String appData) {
        checkEmpty(url, "noticeHttpTransaction: url must not be empty.");
        checkEmpty(httpMethod, "noticeHttpTransaction: httpMethod must not be empty.");
        try {
            new URL(url);
            double totalTime = endTimeMs - startTimeMs;
            if (!checkNegative((int) totalTime, "noticeHttpTransaction: the startTimeMs is later than the endTimeMs, resulting in a negative total time.")) {
                TaskQueue.queue(new HttpTransactionMeasurement(url, httpMethod, statusCode, 0, startTimeMs, totalTime / 1000.0d, bytesSent, bytesReceived, appData));
                if (statusCode >= 400) {
                    Measurements.addHttpError(url, httpMethod, statusCode, responseBody, params);
                }
            }
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("noticeHttpTransaction: URL is malformed: " + url);
        }
    }

    public static void noticeNetworkFailure(String url, String httpMethod, long startTime, long endTime, NetworkFailure failure, String message) {
        float durationInSeconds = (endTime - startTime) / 1000.0f;
        TransactionState ts = new TransactionState();
        TransactionStateUtil.inspectAndInstrument(ts, url, httpMethod);
        ts.setErrorCode(failure.getErrorCode());
        TransactionData transactionData = ts.end();
        Map<String, String> params = new TreeMap<>();
        params.put("content_length", "0");
        params.put("content_type", WebRequest.CONTENT_TYPE_HTML);
        TaskQueue.queue(new HttpTransactionMeasurement(transactionData.getUrl(), transactionData.getHttpMethod(), transactionData.getStatusCode(), transactionData.getErrorCode(), startTime, durationInSeconds, transactionData.getBytesSent(), transactionData.getBytesReceived(), transactionData.getAppData()));
        Measurements.addHttpError(transactionData.getUrl(), transactionData.getHttpMethod(), transactionData.getStatusCode(), message, params);
    }

    public static void noticeNetworkFailure(String url, String httpMethod, long startTime, long endTime, NetworkFailure failure) {
        noticeNetworkFailure(url, httpMethod, startTime, endTime, failure, "");
    }

    public static void noticeNetworkFailure(String url, String httpMethod, long startTime, long endTime, Exception e) {
        checkEmpty(url, "noticeHttpException: url must not be empty.");
        NetworkFailure failure = NetworkFailure.exceptionToNetworkFailure(e);
        noticeNetworkFailure(url, httpMethod, startTime, endTime, failure, e.getMessage());
    }

    @Deprecated
    public static void noticeNetworkFailure(String url, long startTime, long endTime, NetworkFailure failure) {
        noticeNetworkFailure(url, "unknown", startTime, endTime, failure);
    }

    @Deprecated
    public static void noticeNetworkFailure(String url, long startTime, long endTime, Exception e) {
        noticeNetworkFailure(url, "unknown", startTime, endTime, e);
    }

    private static void checkNull(Object object, String message) {
        if (object == null) {
            throw new IllegalArgumentException(message);
        }
    }

    private static void checkEmpty(String string, String message) {
        checkNull(string, message);
        if (string.length() == 0) {
            throw new IllegalArgumentException(message);
        }
    }

    private static boolean checkNegative(int number, String message) {
        if (number >= 0) {
            return false;
        }
        log.error(message);
        return true;
    }

    public static void crashNow() {
        crashNow("This is a demonstration crash courtesy of New Relic");
    }

    public static void crashNow(String message) {
        throw new RuntimeException(message);
    }

    public static boolean setAttribute(String name, String value) {
        return AnalyticsControllerImpl.getInstance().setAttribute(name, value);
    }

    public static boolean setAttribute(String name, float value) {
        return AnalyticsControllerImpl.getInstance().setAttribute(name, value);
    }

    public static boolean setAttribute(String name, boolean value) {
        return AnalyticsControllerImpl.getInstance().setAttribute(name, value);
    }

    public static boolean incrementAttribute(String name) {
        return AnalyticsControllerImpl.getInstance().incrementAttribute(name, 1.0f);
    }

    public static boolean incrementAttribute(String name, float value) {
        return AnalyticsControllerImpl.getInstance().incrementAttribute(name, value);
    }

    public static boolean removeAttribute(String name) {
        return AnalyticsControllerImpl.getInstance().removeAttribute(name);
    }

    public static boolean removeAllAttributes() {
        return AnalyticsControllerImpl.getInstance().removeAllAttributes();
    }

    public static boolean recordEvent(String name, Map<String, Object> eventAttributes) {
        return AnalyticsControllerImpl.getInstance().recordEvent(name, eventAttributes);
    }

    public static void setMaxEventPoolSize(int maxSize) {
        AnalyticsControllerImpl.getInstance().setMaxEventPoolSize(maxSize);
    }

    public static void setMaxEventBufferTime(int maxBufferTimeInSec) {
        AnalyticsControllerImpl.getInstance().setMaxEventBufferTime(maxBufferTimeInSec);
    }

    public static String currentSessionId() {
        return agentConfiguration.getSessionID();
    }
}

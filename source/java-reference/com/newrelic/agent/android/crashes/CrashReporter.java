package com.newrelic.agent.android.crashes;

import com.google.android.exoplayer.hls.HlsChunkSource;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.harvest.crash.Crash;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.stats.TicToc;
import com.newrelic.agent.android.util.NamedThreadFactory;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class CrashReporter {
    private static final String CRASH_COLLECTOR_PATH = "/mobile_crash";
    private static final int CRASH_COLLECTOR_TIMEOUT = 5000;
    private static AgentConfiguration agentConfiguration;
    private static ExecutorService executor;
    private CrashStore crashStore;
    private Thread.UncaughtExceptionHandler previousExceptionHandler;
    protected static CrashReporter instance = new CrashReporter();
    protected static final AtomicBoolean initialized = new AtomicBoolean(false);
    private final AgentLog log = AgentLogManager.getAgentLog();
    protected boolean isEnabled = false;
    private boolean reportCrashes = true;

    public static void initialize(AgentConfiguration _agentConfiguration) {
        if (initialized.compareAndSet(false, true)) {
            executor = Executors.newCachedThreadPool(new NamedThreadFactory("CrashUploader"));
            agentConfiguration = _agentConfiguration;
            instance.isEnabled = agentConfiguration.getReportCrashes();
            instance.crashStore = agentConfiguration.getCrashStore();
            instance.reportSavedCrashes();
            instance.reportSupportabilityMetrics();
            if (instance.isEnabled) {
                instance.installCrashHandler();
            }
        }
    }

    public static AgentConfiguration getAgentConfiguration() {
        return agentConfiguration;
    }

    public UncaughtExceptionHandler getHandler() {
        return new UncaughtExceptionHandler();
    }

    public static UncaughtExceptionHandler getInstanceHandler() {
        return instance.getHandler();
    }

    public static void setReportCrashes(boolean reportCrashes) {
        instance.reportCrashes = reportCrashes;
    }

    public static int getStoredCrashCount() {
        return instance.crashStore.count();
    }

    public static List<Crash> fetchAllCrashes() {
        return instance.crashStore.fetchAll();
    }

    public static void clear() {
        instance.crashStore.clear();
    }

    private void installCrashHandler() {
        Thread.UncaughtExceptionHandler currentExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (currentExceptionHandler != null) {
            if (currentExceptionHandler instanceof UncaughtExceptionHandler) {
                this.log.debug("New Relic crash handler already installed.");
                return;
            } else {
                this.previousExceptionHandler = currentExceptionHandler;
                this.log.debug("Installing New Relic crash handler and chaining " + this.previousExceptionHandler.getClass().getName() + ".");
            }
        } else {
            this.log.debug("Installing New Relic crash handler.");
        }
        Thread.setDefaultUncaughtExceptionHandler(new UncaughtExceptionHandler());
    }

    protected void reportSavedCrashes() {
        for (Crash crash : this.crashStore.fetchAll()) {
            reportCrash(crash);
        }
    }

    protected Future<?> reportCrash(Crash crash) {
        if (!this.reportCrashes) {
            return null;
        }
        CrashSender sender = new CrashSender(crash);
        Future<?> crashSenderThread = executor.submit(sender);
        return crashSenderThread;
    }

    public class UncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {
        private final AtomicBoolean handledException = new AtomicBoolean(false);

        public UncaughtExceptionHandler() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable throwable) {
            try {
                if (!this.handledException.compareAndSet(false, true)) {
                    StatsEngine.get().inc("Supportability/AgentHealth/Recursion/UncaughtExceptionHandler");
                    return;
                }
                if (!CrashReporter.instance.isEnabled || !FeatureFlag.featureEnabled(FeatureFlag.CrashReporting)) {
                    CrashReporter.this.log.debug("A crash has been detected but crash reporting is disabled!");
                    chainExceptionHandler(thread, throwable);
                    return;
                }
                CrashReporter.this.log.debug("A crash has been detected in " + thread.getStackTrace()[0].getClassName() + " and will be reported ASAP.");
                CrashReporter.this.log.debug("Analytics data is currently " + (CrashReporter.agentConfiguration.getEnableAnalyticsEvents() ? "enabled " : "disabled"));
                Crash crash = new Crash(throwable, AnalyticsControllerImpl.getInstance().getSessionAttributes(), AnalyticsControllerImpl.getInstance().getEventManager().getQueuedEvents(), CrashReporter.agentConfiguration.getEnableAnalyticsEvents());
                try {
                    CrashReporter.this.crashStore.store(crash);
                    CrashReporter.this.reportCrash(crash);
                    CrashReporter.executor.shutdown();
                    if (!CrashReporter.executor.awaitTermination(HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS, TimeUnit.MILLISECONDS)) {
                        CrashReporter.this.recordFailedUpload("Crash upload thread(s) timed-out before completion");
                    }
                } catch (Exception e) {
                    CrashReporter.this.recordFailedUpload("Exception caught while sending crash: " + e.getMessage());
                }
            } catch (Throwable t) {
                CrashReporter.this.recordFailedUpload("Error encountered while preparing crash for New Relic! " + t.getMessage());
            } finally {
                CrashReporter.this.storeSupportabilityMetrics();
                chainExceptionHandler(thread, throwable);
            }
        }

        private void chainExceptionHandler(Thread thread, Throwable throwable) {
            if (CrashReporter.this.previousExceptionHandler != null) {
                CrashReporter.this.log.debug("Chaining crash reporting duties to " + CrashReporter.this.previousExceptionHandler.getClass().getSimpleName());
                CrashReporter.this.previousExceptionHandler.uncaughtException(thread, throwable);
            }
        }
    }

    protected void recordFailedUpload(String errorMsg) {
        this.log.error(errorMsg);
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_CRASH_FAILED_UPLOAD);
    }

    protected void storeSupportabilityMetrics() {
        StatsEngine.get().getStatsMap();
    }

    protected void reportSupportabilityMetrics() {
    }

    private class CrashSender implements Runnable {
        private final Crash crash;

        CrashSender(Crash crash) {
            this.crash = crash;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpURLConnection connection;
            TicToc timer;
            try {
                String protocol = CrashReporter.agentConfiguration.useSsl() ? "https://" : "http://";
                try {
                    String urlString = protocol + CrashReporter.agentConfiguration.getCrashCollectorHost() + CrashReporter.CRASH_COLLECTOR_PATH;
                    URL url = new URL(urlString);
                    connection = (HttpURLConnection) url.openConnection();
                    timer = new TicToc();
                    timer.tic();
                    connection.setDoOutput(true);
                    connection.setChunkedStreamingMode(0);
                    connection.setRequestProperty("Content-Type", "application/json");
                    connection.setConnectTimeout(5000);
                    OutputStream out = new BufferedOutputStream(connection.getOutputStream());
                    out.write(this.crash.toJsonString().getBytes());
                    out.close();
                    if (requestWasSuccessful(connection)) {
                        StatsEngine.get().sampleTimeMs(MetricNames.SUPPORTABILITY_CRASH_UPLOAD_TIME, timer.toc());
                        CrashReporter.this.log.info("Crash " + this.crash.getUuid().toString() + " successfully submitted.");
                        CrashReporter.this.crashStore.delete(this.crash);
                    } else {
                        CrashReporter.this.recordFailedUpload("Something went wrong while submitting a crash (will try again later) - Response code " + connection.getResponseCode());
                    }
                } catch (Exception e) {
                    CrashReporter.this.recordFailedUpload("Crash upload failed: " + e.getMessage());
                } finally {
                    connection.disconnect();
                }
                CrashReporter.this.log.debug("Crash collection took " + timer.toc() + "ms");
            } catch (Exception e2) {
                CrashReporter.this.recordFailedUpload("Unable to report crash to New Relic, will try again later. " + e2.getMessage());
            }
        }

        private boolean requestWasSuccessful(HttpURLConnection connection) throws IOException {
            switch (connection.getResponseCode()) {
                case 200:
                    return true;
                default:
                    return false;
            }
        }
    }
}

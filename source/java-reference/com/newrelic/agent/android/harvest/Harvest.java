package com.newrelic.agent.android.harvest;

import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.activity.config.ActivityTraceConfiguration;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.analytics.SessionEvent;
import com.newrelic.agent.android.harvest.type.Harvestable;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.tracing.ActivityTrace;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class Harvest {
    private static final boolean DISABLE_ACTIVITY_TRACE_LIMITS_FOR_DEBUGGING = false;
    private HarvestConfiguration configuration = HarvestConfiguration.getDefaultHarvestConfiguration();
    private HarvestConnection harvestConnection;
    protected HarvestData harvestData;
    private HarvestDataValidator harvestDataValidator;
    private HarvestTimer harvestTimer;
    private Harvester harvester;
    private static final AgentLog log = AgentLogManager.getAgentLog();
    protected static Harvest instance = new Harvest();
    private static final Collection<HarvestLifecycleAware> unregisteredLifecycleListeners = new ArrayList();
    private static final HarvestableCache activityTraceCache = new HarvestableCache();

    public static void initialize(AgentConfiguration agentConfiguration) {
        instance.initializeHarvester(agentConfiguration);
        registerUnregisteredListeners();
        addHarvestListener(StatsEngine.get());
    }

    public void initializeHarvester(AgentConfiguration agentConfiguration) {
        createHarvester();
        this.harvester.setAgentConfiguration(agentConfiguration);
        this.harvester.setConfiguration(instance.getConfiguration());
        flushHarvestableCaches();
    }

    public static void setPeriod(long period) {
        instance.getHarvestTimer().setPeriod(period);
    }

    public static void start() {
        instance.getHarvestTimer().start();
    }

    public static void stop() {
        instance.getHarvestTimer().stop();
    }

    public static void harvestNow() {
        if (isInitialized()) {
            long sessionDuration = getMillisecondsSinceSessionStart();
            StatsEngine.get().sampleTimeMs("Session/Duration", sessionDuration);
            log.debug("Harvest.harvestNow - Generating sessionDuration attribute with value " + sessionDuration);
            AnalyticsControllerImpl analyticsController = AnalyticsControllerImpl.getInstance();
            analyticsController.setAttribute(AnalyticAttribute.SESSION_DURATION_ATTRIBUTE, sessionDuration, false);
            log.debug("Harvest.harvestNow - Generating session event.");
            SessionEvent sessionEvent = new SessionEvent();
            analyticsController.addEvent(sessionEvent);
            analyticsController.getEventManager().shutdown();
            instance.getHarvestTimer().tickNow();
        }
    }

    public static void setInstance(Harvest harvestInstance) {
        instance = harvestInstance;
    }

    public void createHarvester() {
        this.harvestConnection = new HarvestConnection();
        this.harvestData = new HarvestData();
        this.harvester = new Harvester();
        this.harvester.setHarvestConnection(this.harvestConnection);
        this.harvester.setHarvestData(this.harvestData);
        this.harvestTimer = new HarvestTimer(this.harvester);
        this.harvestDataValidator = new HarvestDataValidator();
        addHarvestListener(this.harvestDataValidator);
    }

    public void shutdownHarvester() {
        this.harvestTimer.shutdown();
        this.harvestTimer = null;
        this.harvester = null;
        this.harvestConnection = null;
        this.harvestData = null;
    }

    public static void shutdown() {
        if (isInitialized()) {
            stop();
            instance.shutdownHarvester();
        }
    }

    public static void addHttpError(HttpError error) {
        if (instance.shouldCollectNetworkErrors() && !isDisabled()) {
            HttpErrors errors = instance.getHarvestData().getHttpErrors();
            instance.getHarvester().expireHttpErrors();
            int errorLimit = instance.getConfiguration().getError_limit();
            if (errors.count() >= errorLimit) {
                StatsEngine.get().inc("Supportability/AgentHealth/ErrorsDropped");
                log.debug("Maximum number of HTTP errors (" + errorLimit + ") reached. HTTP Error dropped.");
            } else {
                errors.addHttpError(error);
                log.verbose("Harvest: " + instance + " now contains " + errors.count() + " errors.");
            }
        }
    }

    public static void addHttpTransaction(HttpTransaction txn) {
        if (!isDisabled()) {
            HttpTransactions transactions = instance.getHarvestData().getHttpTransactions();
            instance.getHarvester().expireHttpTransactions();
            int transactionLimit = instance.getConfiguration().getReport_max_transaction_count();
            if (transactions.count() >= transactionLimit) {
                StatsEngine.get().inc("Supportability/AgentHealth/TransactionsDropped");
                log.debug("Maximum number of transactions (" + transactionLimit + ") reached. HTTP Transaction dropped.");
            } else {
                transactions.add(txn);
            }
        }
    }

    public static void addActivityTrace(ActivityTrace activityTrace) {
        if (!isDisabled()) {
            if (!isInitialized()) {
                activityTraceCache.add(activityTrace);
                return;
            }
            if (activityTrace.rootTrace == null) {
                log.error("Activity trace is lacking a root trace!");
                return;
            }
            if (activityTrace.rootTrace.childExclusiveTime == 0) {
                log.error("Total trace exclusive time is zero. Ignoring trace " + activityTrace.rootTrace.displayName);
                return;
            }
            double traceExclusiveTime = activityTrace.rootTrace.childExclusiveTime / 1000.0d;
            if (traceExclusiveTime < instance.getConfiguration().getActivity_trace_min_utilization()) {
                StatsEngine.get().inc("Supportability/AgentHealth/IgnoredTraces");
                log.debug("Total trace exclusive time is too low (" + traceExclusiveTime + "). Ignoring trace " + activityTrace.rootTrace.displayName);
                return;
            }
            ActivityTraces activityTraces = instance.getHarvestData().getActivityTraces();
            ActivityTraceConfiguration configurations = instance.getActivityTraceConfiguration();
            instance.getHarvester().expireActivityTraces();
            if (activityTraces.count() >= configurations.getMaxTotalTraceCount()) {
                log.debug("Activity trace limit of " + configurations.getMaxTotalTraceCount() + " exceeded. Ignoring trace: " + activityTrace.toJsonString());
            } else {
                log.debug("Adding activity trace: " + activityTrace.toJsonString());
                activityTraces.add(activityTrace);
            }
        }
    }

    public static void addMetric(Metric metric) {
        if (!isDisabled() && isInitialized()) {
            instance.getHarvestData().getMetrics().addMetric(metric);
        }
    }

    public static void addAgentHealthException(AgentHealthException exception) {
        if (!isDisabled() && isInitialized()) {
            instance.getHarvestData().getAgentHealth().addException(exception);
        }
    }

    public static void addHarvestListener(HarvestLifecycleAware harvestAware) {
        if (harvestAware == null) {
            log.error("Harvest: Argument to addHarvestListener cannot be null.");
        } else {
            if (!isInitialized()) {
                if (!isUnregisteredListener(harvestAware)) {
                    addUnregisteredListener(harvestAware);
                    return;
                }
                return;
            }
            instance.getHarvester().addHarvestListener(harvestAware);
        }
    }

    public static void removeHarvestListener(HarvestLifecycleAware harvestAware) {
        if (harvestAware == null) {
            log.error("Harvest: Argument to removeHarvestListener cannot be null.");
        } else {
            if (!isInitialized()) {
                if (isUnregisteredListener(harvestAware)) {
                    removeUnregisteredListener(harvestAware);
                    return;
                }
                return;
            }
            instance.getHarvester().removeHarvestListener(harvestAware);
        }
    }

    public static boolean isInitialized() {
        return instance.getHarvester() != null;
    }

    public static int getActivityTraceCacheSize() {
        return activityTraceCache.getSize();
    }

    public static long getMillisSinceStart() {
        return instance.getHarvestTimer().timeSinceStart();
    }

    public static boolean shouldCollectActivityTraces() {
        ActivityTraceConfiguration configurations;
        if (isDisabled()) {
            return false;
        }
        return !isInitialized() || (configurations = instance.getActivityTraceConfiguration()) == null || configurations.getMaxTotalTraceCount() > 0;
    }

    private void flushHarvestableCaches() {
        try {
            flushActivityTraceCache();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void flushActivityTraceCache() {
        Collection<Harvestable> activityTraces = activityTraceCache.flush();
        for (Harvestable activityTrace : activityTraces) {
            addActivityTrace((ActivityTrace) activityTrace);
        }
    }

    private static void addUnregisteredListener(HarvestLifecycleAware harvestAware) {
        if (harvestAware != null) {
            synchronized (unregisteredLifecycleListeners) {
                unregisteredLifecycleListeners.add(harvestAware);
            }
        }
    }

    private static void removeUnregisteredListener(HarvestLifecycleAware harvestAware) {
        if (harvestAware != null) {
            synchronized (unregisteredLifecycleListeners) {
                unregisteredLifecycleListeners.remove(harvestAware);
            }
        }
    }

    private static void registerUnregisteredListeners() {
        for (HarvestLifecycleAware harvestAware : unregisteredLifecycleListeners) {
            addHarvestListener(harvestAware);
        }
        unregisteredLifecycleListeners.clear();
    }

    private static boolean isUnregisteredListener(HarvestLifecycleAware harvestAware) {
        if (harvestAware == null) {
            return false;
        }
        return unregisteredLifecycleListeners.contains(harvestAware);
    }

    private HarvestTimer getHarvestTimer() {
        return this.harvestTimer;
    }

    public static Harvest getInstance() {
        return instance;
    }

    protected Harvester getHarvester() {
        return this.harvester;
    }

    public HarvestData getHarvestData() {
        return this.harvestData;
    }

    public HarvestConfiguration getConfiguration() {
        return this.configuration;
    }

    public HarvestConnection getHarvestConnection() {
        return this.harvestConnection;
    }

    public void setHarvestConnection(HarvestConnection connection) {
        this.harvestConnection = connection;
    }

    public boolean shouldCollectNetworkErrors() {
        return this.configuration.isCollect_network_errors();
    }

    public void setConfiguration(HarvestConfiguration newConfiguration) {
        this.configuration.reconfigure(newConfiguration);
        this.harvestTimer.setPeriod(TimeUnit.MILLISECONDS.convert(this.configuration.getData_report_period(), TimeUnit.SECONDS));
        this.harvestConnection.setServerTimestamp(this.configuration.getServer_timestamp());
        this.harvestData.setDataToken(this.configuration.getDataToken());
        this.harvester.setConfiguration(this.configuration);
    }

    public void setConnectInformation(ConnectInformation connectInformation) {
        this.harvestConnection.setConnectInformation(connectInformation);
        this.harvestData.setDeviceInformation(connectInformation.getDeviceInformation());
    }

    public static void setHarvestConfiguration(HarvestConfiguration configuration) {
        if (!isInitialized()) {
            log.error("Cannot configure Harvester before initialization.");
            new Exception().printStackTrace();
        } else {
            log.debug("Harvest Configuration: " + configuration);
            instance.setConfiguration(configuration);
        }
    }

    public static HarvestConfiguration getHarvestConfiguration() {
        return !isInitialized() ? HarvestConfiguration.getDefaultHarvestConfiguration() : instance.getConfiguration();
    }

    public static void setHarvestConnectInformation(ConnectInformation connectInformation) {
        if (!isInitialized()) {
            log.error("Cannot configure Harvester before initialization.");
            new Exception().printStackTrace();
        } else {
            log.debug("Setting Harvest connect information: " + connectInformation);
            instance.setConnectInformation(connectInformation);
        }
    }

    public static boolean isDisabled() {
        if (isInitialized()) {
            return instance.getHarvester().isDisabled();
        }
        return false;
    }

    protected ActivityTraceConfiguration getActivityTraceConfiguration() {
        return this.configuration.getAt_capture();
    }

    public static long getMillisecondsSinceSessionStart() {
        if (getInstance() == null || getInstance().getHarvestTimer() == null) {
            return 0L;
        }
        long lTime = instance.getHarvestTimer().timeSinceStart();
        return lTime;
    }

    public static float getSecondsSinceSessionStart() {
        if (getInstance() == null || getInstance().getHarvestTimer() == null) {
            return 0.0f;
        }
        float fTime = instance.getHarvestTimer().timeSinceStart() / 1000.0f;
        return fTime;
    }
}

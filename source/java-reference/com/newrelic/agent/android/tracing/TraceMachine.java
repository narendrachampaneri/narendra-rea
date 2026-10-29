package com.newrelic.agent.android.tracing;

import com.google.android.exoplayer.hls.HlsChunkSource;
import com.newrelic.agent.android.Measurements;
import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.api.v2.TraceMachineInterface;
import com.newrelic.agent.android.harvest.ActivityHistory;
import com.newrelic.agent.android.harvest.ActivitySighting;
import com.newrelic.agent.android.harvest.AgentHealth;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.HarvestAdapter;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class TraceMachine extends HarvestAdapter {
    public static final String ACTIVITY_BACKGROUND_METRIC_PREFIX = "Mobile/Activity/Background/Name/";
    public static final String ACTIVITY_METRIC_PREFIX = "Mobile/Activity/Name/";
    public static final String ACTIVTY_DISPLAY_NAME_PREFIX = "Display ";
    public static final int HEALTHY_TRACE_TIMEOUT = 500;
    public static final String NR_TRACE_FIELD = "_nr_trace";
    public static final String NR_TRACE_TYPE = "Lcom/newrelic/agent/android/tracing/Trace;";
    public static final int UNHEALTHY_TRACE_TIMEOUT = 60000;
    private static TraceMachineInterface traceMachineInterface;
    private ActivityTrace activityTrace;
    public static final AtomicBoolean disabled = new AtomicBoolean(false);
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private static final Collection<TraceLifecycleAware> traceListeners = new CopyOnWriteArrayList();
    private static final ThreadLocal<Trace> threadLocalTrace = new ThreadLocal<>();
    private static final ThreadLocal<TraceStack> threadLocalTraceStack = new ThreadLocal<>();
    private static final List<ActivitySighting> activityHistory = new CopyOnWriteArrayList();
    private static TraceMachine traceMachine = null;

    protected TraceMachine(Trace rootTrace) {
        this.activityTrace = new ActivityTrace(rootTrace);
        Harvest.addHarvestListener(this);
    }

    public static TraceMachine getTraceMachine() {
        return traceMachine;
    }

    public static void addTraceListener(TraceLifecycleAware listener) {
        traceListeners.add(listener);
    }

    public static void removeTraceListener(TraceLifecycleAware listener) {
        traceListeners.remove(listener);
    }

    public static void setTraceMachineInterface(TraceMachineInterface traceMachineInterface2) {
        traceMachineInterface = traceMachineInterface2;
    }

    public static void startTracing(String name) {
        startTracing(name, false);
    }

    public static void startTracing(String name, boolean customName) {
        try {
            if (!disabled.get() && Harvest.shouldCollectActivityTraces()) {
                if (isTracingActive()) {
                    traceMachine.completeActivityTrace();
                }
                threadLocalTrace.remove();
                threadLocalTraceStack.set(new TraceStack());
                Trace rootTrace = new Trace();
                if (customName) {
                    rootTrace.displayName = name;
                } else {
                    rootTrace.displayName = formatActivityDisplayName(name);
                }
                rootTrace.metricName = formatActivityMetricName(rootTrace.displayName);
                rootTrace.metricBackgroundName = formatActivityBackgroundMetricName(rootTrace.displayName);
                rootTrace.entryTimestamp = System.currentTimeMillis();
                if (log.getLevel() == 5) {
                    log.debug("Started trace of " + name + ":" + rootTrace.myUUID.toString());
                }
                traceMachine = new TraceMachine(rootTrace);
                rootTrace.traceMachine = traceMachine;
                pushTraceContext(rootTrace);
                traceMachine.activityTrace.previousActivity = getLastActivitySighting();
                activityHistory.add(new ActivitySighting(rootTrace.entryTimestamp, rootTrace.displayName));
                for (TraceLifecycleAware listener : traceListeners) {
                    listener.onTraceStart(traceMachine.activityTrace);
                }
            }
        } catch (Exception e) {
            log.error("Caught error while initializing TraceMachine, shutting it down", e);
            AgentHealth.noticeException(e);
            traceMachine = null;
            threadLocalTrace.remove();
            threadLocalTraceStack.remove();
        }
    }

    public static void haltTracing() {
        if (!isTracingInactive()) {
            TraceMachine finishedMachine = traceMachine;
            traceMachine = null;
            finishedMachine.activityTrace.discard();
            endLastActivitySighting();
            Harvest.removeHarvestListener(finishedMachine);
            threadLocalTrace.remove();
            threadLocalTraceStack.remove();
        }
    }

    public static void endTrace() {
        traceMachine.completeActivityTrace();
    }

    public static void endTrace(String id) {
        try {
            if (getActivityTrace().rootTrace.myUUID.toString().equals(id)) {
                traceMachine.completeActivityTrace();
            }
        } catch (TracingInactiveException e) {
        }
    }

    public static String formatActivityMetricName(String name) {
        return ACTIVITY_METRIC_PREFIX + name;
    }

    public static String formatActivityBackgroundMetricName(String name) {
        return ACTIVITY_BACKGROUND_METRIC_PREFIX + name;
    }

    public static String formatActivityDisplayName(String name) {
        return ACTIVTY_DISPLAY_NAME_PREFIX + name;
    }

    private static Trace registerNewTrace(String name) throws TracingInactiveException {
        if (isTracingInactive()) {
            log.debug("Tried to register a new trace but tracing is inactive!");
            throw new TracingInactiveException();
        }
        Trace parentTrace = getCurrentTrace();
        Trace childTrace = new Trace(name, parentTrace.myUUID, traceMachine);
        try {
            traceMachine.activityTrace.addTrace(childTrace);
            if (log.getLevel() == 4) {
                log.verbose("Registering trace of " + name + " with parent " + parentTrace.displayName);
            }
            parentTrace.addChild(childTrace);
            return childTrace;
        } catch (Exception e) {
            throw new TracingInactiveException();
        }
    }

    public void completeActivityTrace() {
        if (!isTracingInactive()) {
            TraceMachine finishedMachine = traceMachine;
            traceMachine = null;
            finishedMachine.activityTrace.complete();
            endLastActivitySighting();
            for (TraceLifecycleAware listener : traceListeners) {
                listener.onTraceComplete(finishedMachine.activityTrace);
            }
            Harvest.removeHarvestListener(finishedMachine);
        }
    }

    public static void enterNetworkSegment(String name) {
        try {
            if (!isTracingInactive()) {
                Trace currentTrace = getCurrentTrace();
                if (currentTrace.getType() == TraceType.NETWORK) {
                    exitMethod();
                }
                enterMethod(null, name, null);
                Trace networkTrace = getCurrentTrace();
                networkTrace.setType(TraceType.NETWORK);
            }
        } catch (TracingInactiveException e) {
        } catch (Exception e2) {
            log.error("Caught error while calling enterNetworkSegment()", e2);
            AgentHealth.noticeException(e2);
        }
    }

    public static void enterMethod(String name) {
        enterMethod(null, name, null);
    }

    public static void enterMethod(String name, ArrayList<String> annotationParams) {
        enterMethod(null, name, annotationParams);
    }

    public static void enterMethod(Trace trace, String name, ArrayList<String> annotationParams) {
        try {
            if (!isTracingInactive()) {
                long currentTime = System.currentTimeMillis();
                long lastUpdatedAt = traceMachine.activityTrace.lastUpdatedAt;
                long inception = traceMachine.activityTrace.startedAt;
                if (500 + lastUpdatedAt < currentTime && !traceMachine.activityTrace.hasMissingChildren()) {
                    log.debug("Completing activity trace after hitting healthy timeout (500ms)");
                    traceMachine.completeActivityTrace();
                    return;
                }
                if (HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS + inception < currentTime) {
                    log.debug("Completing activity trace after hitting unhealthy timeout (60000ms)");
                    traceMachine.completeActivityTrace();
                    return;
                }
                loadTraceContext(trace);
                Trace childTrace = registerNewTrace(name);
                pushTraceContext(childTrace);
                childTrace.scope = getCurrentScope();
                childTrace.setAnnotationParams(annotationParams);
                for (TraceLifecycleAware listener : traceListeners) {
                    listener.onEnterMethod();
                }
                childTrace.entryTimestamp = System.currentTimeMillis();
            }
        } catch (TracingInactiveException e) {
        } catch (Exception e2) {
            log.error("Caught error while calling enterMethod()", e2);
            AgentHealth.noticeException(e2);
        }
    }

    public static void exitMethod() {
        try {
            if (!isTracingInactive()) {
                Trace trace = threadLocalTrace.get();
                if (trace == null) {
                    log.debug("threadLocalTrace is null");
                    return;
                }
                trace.exitTimestamp = System.currentTimeMillis();
                if (trace.threadId == 0 && traceMachineInterface != null) {
                    trace.threadId = traceMachineInterface.getCurrentThreadId();
                    trace.threadName = traceMachineInterface.getCurrentThreadName();
                }
                for (TraceLifecycleAware listener : traceListeners) {
                    listener.onExitMethod();
                }
                try {
                    trace.complete();
                    threadLocalTraceStack.get().pop();
                    if (threadLocalTraceStack.get().empty()) {
                        threadLocalTrace.set(null);
                    } else {
                        Trace parentTrace = threadLocalTraceStack.get().peek();
                        threadLocalTrace.set(parentTrace);
                        parentTrace.childExclusiveTime += trace.getDurationAsMilliseconds();
                    }
                    if (trace.getType() == TraceType.TRACE) {
                        TaskQueue.queue(trace);
                    }
                } catch (TracingInactiveException e) {
                    threadLocalTrace.remove();
                    threadLocalTraceStack.remove();
                    if (trace.getType() == TraceType.TRACE) {
                        TaskQueue.queue(trace);
                    }
                }
            }
        } catch (Exception e2) {
            log.error("Caught error while calling exitMethod()", e2);
            AgentHealth.noticeException(e2);
        }
    }

    private static void pushTraceContext(Trace trace) {
        if (!isTracingInactive() && trace != null) {
            TraceStack traceStack = threadLocalTraceStack.get();
            if (traceStack.empty() || traceStack.peek() != trace) {
                traceStack.push(trace);
            }
            threadLocalTrace.set(trace);
        }
    }

    private static void loadTraceContext(Trace trace) {
        if (!isTracingInactive()) {
            if (threadLocalTrace.get() == null) {
                threadLocalTrace.set(trace);
                threadLocalTraceStack.set(new TraceStack());
                if (trace != null) {
                    threadLocalTraceStack.get().push(trace);
                } else {
                    return;
                }
            } else if (trace == null) {
                if (threadLocalTraceStack.get().isEmpty()) {
                    if (log.getLevel() == 5) {
                        log.debug("No context to load!");
                    }
                    threadLocalTrace.set(null);
                    return;
                }
                trace = threadLocalTraceStack.get().peek();
                threadLocalTrace.set(trace);
            }
            if (log.getLevel() == 4) {
                log.verbose("Trace " + trace.myUUID.toString() + " is now active");
            }
        }
    }

    public static void unloadTraceContext(Object object) {
        try {
            if (!isTracingInactive()) {
                if (traceMachineInterface == null || !traceMachineInterface.isUIThread()) {
                    if (threadLocalTrace.get() != null && log.getLevel() == 4) {
                        log.verbose("Trace " + threadLocalTrace.get().myUUID.toString() + " is now inactive");
                    }
                    threadLocalTrace.remove();
                    threadLocalTraceStack.remove();
                    try {
                        TraceFieldInterface tfi = (TraceFieldInterface) object;
                        tfi._nr_setTrace(null);
                    } catch (ClassCastException e) {
                        ExceptionHelper.recordSupportabilityMetric(e, "TraceFieldInterface");
                        log.error("Not a TraceFieldInterface: " + e.getMessage());
                    }
                }
            }
        } catch (Exception e2) {
            log.error("Caught error while calling unloadTraceContext()", e2);
            AgentHealth.noticeException(e2);
        }
    }

    public static Trace getCurrentTrace() throws TracingInactiveException {
        if (isTracingInactive()) {
            throw new TracingInactiveException();
        }
        Trace trace = threadLocalTrace.get();
        return trace != null ? trace : getRootTrace();
    }

    public static Map<String, Object> getCurrentTraceParams() throws TracingInactiveException {
        return getCurrentTrace().getParams();
    }

    public static void setCurrentTraceParam(String key, Object value) {
        if (!isTracingInactive()) {
            try {
                getCurrentTrace().getParams().put(key, value);
            } catch (TracingInactiveException e) {
            }
        }
    }

    public static void setCurrentDisplayName(String name) {
        if (!isTracingInactive()) {
            try {
                getCurrentTrace().displayName = name;
            } catch (TracingInactiveException e) {
            }
        }
    }

    public static void setRootDisplayName(String name) {
        if (!isTracingInactive()) {
            try {
                Trace rootTrace = getRootTrace();
                Measurements.renameActivity(rootTrace.displayName, name);
                renameActivityHistory(rootTrace.displayName, name);
                rootTrace.metricName = formatActivityMetricName(name);
                rootTrace.metricBackgroundName = formatActivityBackgroundMetricName(name);
                rootTrace.displayName = name;
                Trace currentTrace = getCurrentTrace();
                currentTrace.scope = getCurrentScope();
            } catch (TracingInactiveException e) {
            }
        }
    }

    private static void renameActivityHistory(String oldName, String newName) {
        for (ActivitySighting activitySighting : activityHistory) {
            if (activitySighting.getName().equals(oldName)) {
                activitySighting.setName(newName);
            }
        }
    }

    public static String getCurrentScope() {
        String str = null;
        try {
            if (!isTracingInactive()) {
                if (traceMachineInterface == null || traceMachineInterface.isUIThread()) {
                    str = traceMachine.activityTrace.rootTrace.metricName;
                } else {
                    str = traceMachine.activityTrace.rootTrace.metricBackgroundName;
                }
            }
        } catch (Exception e) {
            log.error("Caught error while calling getCurrentScope()", e);
            AgentHealth.noticeException(e);
        }
        return str;
    }

    public static boolean isTracingActive() {
        return traceMachine != null;
    }

    public static boolean isTracingInactive() {
        return traceMachine == null;
    }

    public void storeCompletedTrace(Trace trace) {
        try {
            if (isTracingInactive()) {
                log.debug("Attempted to store a completed trace with no trace machine!");
            } else {
                this.activityTrace.addCompletedTrace(trace);
            }
        } catch (Exception e) {
            log.error("Caught error while calling storeCompletedTrace()", e);
            AgentHealth.noticeException(e);
        }
    }

    public static Trace getRootTrace() throws TracingInactiveException {
        try {
            return traceMachine.activityTrace.rootTrace;
        } catch (NullPointerException e) {
            throw new TracingInactiveException();
        }
    }

    public static ActivityTrace getActivityTrace() throws TracingInactiveException {
        try {
            return traceMachine.activityTrace;
        } catch (NullPointerException e) {
            throw new TracingInactiveException();
        }
    }

    public static ActivityHistory getActivityHistory() {
        return new ActivityHistory(activityHistory);
    }

    public static ActivitySighting getLastActivitySighting() {
        if (activityHistory.isEmpty()) {
            return null;
        }
        return activityHistory.get(activityHistory.size() - 1);
    }

    public static void endLastActivitySighting() {
        ActivitySighting activitySighting = getLastActivitySighting();
        if (activitySighting != null) {
            activitySighting.end(System.currentTimeMillis());
        }
    }

    public static void clearActivityHistory() {
        activityHistory.clear();
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestBefore() {
        if (isTracingActive()) {
            long currentTime = System.currentTimeMillis();
            long lastUpdatedAt = traceMachine.activityTrace.lastUpdatedAt;
            long inception = traceMachine.activityTrace.startedAt;
            if (500 + lastUpdatedAt < currentTime && !traceMachine.activityTrace.hasMissingChildren()) {
                log.debug("Completing activity trace after hitting healthy timeout (500ms)");
                completeActivityTrace();
                StatsEngine.get().inc("Supportability/AgentHealth/HealthyActivityTraces");
                return;
            } else {
                if (HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS + inception < currentTime) {
                    log.debug("Completing activity trace after hitting unhealthy timeout (60000ms)");
                    completeActivityTrace();
                    StatsEngine.get().inc("Supportability/AgentHealth/UnhealthyActivityTraces");
                    return;
                }
                return;
            }
        }
        log.debug("TraceMachine is inactive");
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestSendFailed() {
        try {
            traceMachine.activityTrace.incrementReportAttemptCount();
        } catch (NullPointerException e) {
        }
    }

    private static class TraceStack extends Stack<Trace> {
        private TraceStack() {
        }
    }
}

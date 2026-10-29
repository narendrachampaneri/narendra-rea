package com.newrelic.agent.android.unity;

import com.newrelic.agent.android.NewRelic;
import com.newrelic.agent.android.crashes.CrashReporter;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.util.NetworkFailure;

/* JADX INFO: loaded from: classes.dex */
public class NewRelicUnity {
    private static final String ROOT_TRACE_NAME = "Unity";
    private static final AgentLog log = AgentLogManager.getAgentLog();

    static void handleUnityCrash(UnityException ex) {
        Thread.UncaughtExceptionHandler currentExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (currentExceptionHandler != null && (currentExceptionHandler instanceof CrashReporter.UncaughtExceptionHandler)) {
            currentExceptionHandler.uncaughtException(Thread.currentThread(), ex);
        }
    }

    static boolean recordEvent(UnityEvent event) {
        return NewRelic.recordEvent(event.getName(), event.getAttributes());
    }

    static void noticeNetworkFailure(String url, String httpMethod, long startTime, long endTime, int failureCode, String message) {
        NetworkFailure networkFailure = NetworkFailure.fromErrorCode(failureCode);
        NewRelic.noticeNetworkFailure(url, httpMethod, startTime, endTime, networkFailure, message);
    }
}

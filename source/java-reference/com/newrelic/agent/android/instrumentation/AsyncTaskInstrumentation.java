package com.newrelic.agent.android.instrumentation;

import android.annotation.TargetApi;
import android.os.AsyncTask;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.newrelic.agent.android.tracing.TracingInactiveException;
import com.newrelic.agent.android.util.ExceptionHelper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class AsyncTaskInstrumentation {
    private static final AgentLog log = AgentLogManager.getAgentLog();

    protected AsyncTaskInstrumentation() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ReplaceCallSite
    public static final <Params, Progress, Result> AsyncTask execute(AsyncTask<Params, Progress, Result> asyncTask, Params... params) {
        try {
            TraceFieldInterface tfi = (TraceFieldInterface) asyncTask;
            tfi._nr_setTrace(TraceMachine.getCurrentTrace());
        } catch (TracingInactiveException e) {
        } catch (ClassCastException e2) {
            ExceptionHelper.recordSupportabilityMetric(e2, "TraceFieldInterface");
            log.error("Not a TraceFieldInterface: " + e2.getMessage());
        } catch (NoSuchFieldError e3) {
        }
        return asyncTask.execute(params);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ReplaceCallSite
    @TargetApi(11)
    public static final <Params, Progress, Result> AsyncTask executeOnExecutor(AsyncTask<Params, Progress, Result> asyncTask, Executor exec, Params... params) {
        try {
            TraceFieldInterface tfi = (TraceFieldInterface) asyncTask;
            tfi._nr_setTrace(TraceMachine.getCurrentTrace());
        } catch (TracingInactiveException e) {
        } catch (ClassCastException e2) {
            ExceptionHelper.recordSupportabilityMetric(e2, "TraceFieldInterface");
            log.error("Not a TraceFieldInterface: " + e2.getMessage());
        } catch (NoSuchFieldError e3) {
        }
        return asyncTask.executeOnExecutor(exec, params);
    }
}

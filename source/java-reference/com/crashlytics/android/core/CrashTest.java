package com.crashlytics.android.core;

import android.os.AsyncTask;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.instrumentation.AsyncTaskInstrumentation;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceMachine;
import io.fabric.sdk.android.Fabric;

/* JADX INFO: loaded from: classes2.dex */
public class CrashTest {
    public void throwRuntimeException(String message) {
        throw new RuntimeException(message);
    }

    public int stackOverflow() {
        return stackOverflow() + ((int) Math.random());
    }

    public void indexOutOfBounds() {
        int[] ints = new int[2];
        int intValue = ints[10];
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Out of bounds value: " + intValue);
    }

    /* JADX INFO: renamed from: com.crashlytics.android.core.CrashTest$1, reason: invalid class name */
    class AnonymousClass1 extends AsyncTask<Void, Void, Void> implements TraceFieldInterface {
        public Trace _nr_trace;
        final /* synthetic */ long val$delayMs;

        @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
        public void _nr_setTrace(Trace trace) {
            try {
                this._nr_trace = trace;
            } catch (Exception e) {
            }
        }

        AnonymousClass1(long j) {
            this.val$delayMs = j;
        }

        @Override // android.os.AsyncTask
        protected /* bridge */ /* synthetic */ Void doInBackground(Void[] voidArr) {
            try {
                TraceMachine.enterMethod(this._nr_trace, "CrashTest$1#doInBackground", null);
            } catch (NoSuchFieldError e) {
                TraceMachine.enterMethod(null, "CrashTest$1#doInBackground", null);
            }
            Void voidDoInBackground2 = doInBackground2(voidArr);
            TraceMachine.exitMethod();
            TraceMachine.unloadTraceContext(this);
            return voidDoInBackground2;
        }

        /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
        protected Void doInBackground2(Void... params) {
            try {
                Thread.sleep(this.val$delayMs);
            } catch (InterruptedException e) {
            }
            CrashTest.this.throwRuntimeException("Background thread crash");
            return null;
        }
    }

    public void crashAsyncTask(long delayMs) {
        AsyncTask<Void, Void, Void> bgTask = new AnonymousClass1(delayMs);
        Void[] voidArr = {(Void) null};
        if (bgTask instanceof AsyncTask) {
            AsyncTaskInstrumentation.execute(bgTask, voidArr);
        } else {
            bgTask.execute(voidArr);
        }
    }

    public void throwFiveChainedExceptions() {
        try {
            privateMethodThatThrowsException("1");
        } catch (Exception ex) {
            try {
                throw new RuntimeException("2", ex);
            } catch (Exception ex2) {
                try {
                    throw new RuntimeException("3", ex2);
                } catch (Exception ex3) {
                    try {
                        throw new RuntimeException("4", ex3);
                    } catch (Exception ex4) {
                        throw new RuntimeException("5", ex4);
                    }
                }
            }
        }
    }

    private void privateMethodThatThrowsException(String message) {
        throw new RuntimeException(message);
    }
}

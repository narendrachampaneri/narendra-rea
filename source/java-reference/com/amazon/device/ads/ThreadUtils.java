package com.amazon.device.ads;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class ThreadUtils {
    private static ThreadRunner threadRunner = new ThreadRunner();

    public enum ExecutionStyle {
        RUN_ASAP,
        SCHEDULE
    }

    public enum ExecutionThread {
        MAIN_THREAD,
        BACKGROUND_THREAD
    }

    ThreadUtils() {
    }

    public static ThreadRunner getThreadRunner() {
        return threadRunner;
    }

    static void setThreadRunner(ThreadRunner threadRunner2) {
        threadRunner = threadRunner2;
    }

    public static boolean isOnMainThread() {
        return ThreadVerify.getInstance().isOnMainThread();
    }

    public static final <T> void executeAsyncTask(MobileAdsAsyncTask<T, ?, ?> task, T... params) {
        threadRunner.executeAsyncTask(ExecutionStyle.RUN_ASAP, ExecutionThread.MAIN_THREAD, task, params);
    }

    public static final <T> void executeAsyncTask(ThreadRunner threadRunner2, ExecutionStyle executionStyle, ExecutionThread executionThread, MobileAdsAsyncTask<T, ?, ?> task, T... params) {
        threadRunner2.executeAsyncTask(executionStyle, executionThread, task, params);
    }

    public static void scheduleRunnable(Runnable proc) {
        scheduleRunnable(proc, threadRunner);
    }

    public static void scheduleRunnable(Runnable proc, ThreadRunner threadRunner2) {
        threadRunner2.execute(proc, ExecutionStyle.SCHEDULE, ExecutionThread.BACKGROUND_THREAD);
    }

    public static void executeRunnableWithThreadCheck(Runnable proc) {
        executeRunnableWithThreadCheck(proc, threadRunner);
    }

    public static void executeRunnableWithThreadCheck(Runnable proc, ThreadRunner threadRunner2) {
        threadRunner2.execute(proc, ExecutionStyle.RUN_ASAP, ExecutionThread.BACKGROUND_THREAD);
    }

    public static void scheduleOnMainThread(Runnable proc) {
        scheduleOnMainThread(proc, threadRunner);
    }

    public static void scheduleOnMainThread(Runnable proc, ThreadRunner threadRunner2) {
        threadRunner2.execute(proc, ExecutionStyle.SCHEDULE, ExecutionThread.MAIN_THREAD);
    }

    public static void executeOnMainThread(Runnable proc) {
        executeOnMainThread(proc, threadRunner);
    }

    public static void executeOnMainThread(Runnable proc, ThreadRunner threadRunner2) {
        threadRunner2.execute(proc, ExecutionStyle.RUN_ASAP, ExecutionThread.MAIN_THREAD);
    }

    public static class ThreadRunner {
        private static final String LOGTAG = ThreadRunner.class.getSimpleName();
        private final HashMap<ExecutionStyle, HashMap<ExecutionThread, RunnableExecutor>> executors;
        private final MobileAdsLogger logger;

        ThreadRunner() {
            this(new MobileAdsLoggerFactory());
            ThreadVerify threadVerify = new ThreadVerify();
            withExecutor(new ThreadPoolScheduler());
            withExecutor(new BackgroundThreadRunner(threadVerify));
            withExecutor(new MainThreadScheduler());
            withExecutor(new MainThreadRunner(threadVerify));
        }

        ThreadRunner(MobileAdsLoggerFactory loggerFactory) {
            this.executors = new HashMap<>();
            this.logger = loggerFactory.createMobileAdsLogger(LOGTAG);
        }

        public ThreadRunner withExecutor(RunnableExecutor executor) {
            HashMap<ExecutionThread, RunnableExecutor> executorsForStyle = this.executors.get(executor.getExecutionStyle());
            if (executorsForStyle == null) {
                executorsForStyle = new HashMap<>();
                this.executors.put(executor.getExecutionStyle(), executorsForStyle);
            }
            executorsForStyle.put(executor.getExecutionThread(), executor);
            return this;
        }

        public void execute(Runnable proc, ExecutionStyle executionStyle, ExecutionThread executionThread) {
            HashMap<ExecutionThread, RunnableExecutor> executorsForStyle = this.executors.get(executionStyle);
            if (executorsForStyle == null) {
                this.logger.e("No executor available for %s execution style.", executionStyle);
                return;
            }
            RunnableExecutor executor = executorsForStyle.get(executionThread);
            if (executor == null) {
                this.logger.e("No executor available for %s execution style on % execution thread.", executionStyle, executionThread);
            }
            executor.execute(proc);
        }

        public <T> void executeAsyncTask(MobileAdsAsyncTask<T, ?, ?> task, T... params) {
            executeAsyncTask(ExecutionStyle.RUN_ASAP, ExecutionThread.MAIN_THREAD, task, params);
        }

        public <T> void executeAsyncTask(ExecutionStyle executionStyle, ExecutionThread executionThread, final MobileAdsAsyncTask<T, ?, ?> task, final T... params) {
            ThreadUtils.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.ThreadUtils.ThreadRunner.1
                @Override // java.lang.Runnable
                public void run() {
                    AndroidTargetUtils.executeAsyncTask(task, params);
                }
            }, executionStyle, executionThread);
        }
    }

    public static abstract class RunnableExecutor {
        private final ExecutionStyle executionStyle;
        private final ExecutionThread executionThread;

        public abstract void execute(Runnable runnable);

        public RunnableExecutor(ExecutionStyle executionStyle, ExecutionThread executionThread) {
            this.executionStyle = executionStyle;
            this.executionThread = executionThread;
        }

        public ExecutionStyle getExecutionStyle() {
            return this.executionStyle;
        }

        public ExecutionThread getExecutionThread() {
            return this.executionThread;
        }
    }

    public static class MainThreadScheduler extends RunnableExecutor {
        public MainThreadScheduler() {
            super(ExecutionStyle.SCHEDULE, ExecutionThread.MAIN_THREAD);
        }

        @Override // com.amazon.device.ads.ThreadUtils.RunnableExecutor
        public void execute(Runnable proc) {
            Handler h = new Handler(Looper.getMainLooper());
            h.post(proc);
        }
    }

    public static class ThreadPoolScheduler extends RunnableExecutor {
        private static final int keepAliveTimeSeconds = 30;
        private static final int maxNumberThreads = 3;
        private static final int numberThreads = 1;
        private final ExecutorService executorService;

        public ThreadPoolScheduler() {
            super(ExecutionStyle.SCHEDULE, ExecutionThread.BACKGROUND_THREAD);
            this.executorService = new ThreadPoolExecutor(1, 3, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        }

        @Override // com.amazon.device.ads.ThreadUtils.RunnableExecutor
        public void execute(Runnable proc) {
            this.executorService.submit(proc);
        }
    }

    public static class SingleThreadScheduler extends RunnableExecutor {
        private ExecutorService executorService;

        public SingleThreadScheduler() {
            super(ExecutionStyle.SCHEDULE, ExecutionThread.BACKGROUND_THREAD);
            this.executorService = Executors.newSingleThreadExecutor();
        }

        @Override // com.amazon.device.ads.ThreadUtils.RunnableExecutor
        public void execute(Runnable proc) {
            this.executorService.submit(proc);
        }
    }

    public static class MainThreadRunner extends ThreadExecutor {
        public MainThreadRunner(ThreadVerify threadVerify) {
            super(threadVerify, new MainThreadScheduler());
        }
    }

    public static class BackgroundThreadRunner extends ThreadExecutor {
        public BackgroundThreadRunner(ThreadVerify threadVerify) {
            super(threadVerify, new ThreadPoolScheduler());
        }
    }

    public static class ThreadExecutor extends RunnableExecutor {
        private final RunnableExecutor threadScheduler;
        private final ThreadVerify threadVerify;

        public ThreadExecutor(ThreadVerify threadVerify, RunnableExecutor threadScheduler) {
            super(ExecutionStyle.RUN_ASAP, threadScheduler.executionThread);
            this.threadVerify = threadVerify;
            this.threadScheduler = threadScheduler;
        }

        @Override // com.amazon.device.ads.ThreadUtils.RunnableExecutor
        public void execute(Runnable proc) {
            boolean shouldSchedule;
            switch (this.threadScheduler.getExecutionThread()) {
                case MAIN_THREAD:
                    shouldSchedule = !this.threadVerify.isOnMainThread();
                    break;
                case BACKGROUND_THREAD:
                    shouldSchedule = this.threadVerify.isOnMainThread();
                    break;
                default:
                    shouldSchedule = false;
                    break;
            }
            if (shouldSchedule) {
                this.threadScheduler.execute(proc);
            } else {
                proc.run();
            }
        }
    }

    static class ThreadVerify {
        private static ThreadVerify instance = new ThreadVerify();

        ThreadVerify() {
        }

        static ThreadVerify getInstance() {
            return instance;
        }

        boolean isOnMainThread() {
            return Looper.getMainLooper().getThread() == Thread.currentThread();
        }
    }

    static abstract class MobileAdsAsyncTask<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> implements TraceFieldInterface {
        public Trace _nr_trace;

        @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
        public void _nr_setTrace(Trace trace) {
            try {
                this._nr_trace = trace;
            } catch (Exception e) {
            }
        }

        @Override // android.os.AsyncTask
        protected abstract Result doInBackground(Params... paramsArr);

        MobileAdsAsyncTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }

        @Override // android.os.AsyncTask
        protected void onPostExecute(Result result) {
            try {
                TraceMachine.enterMethod(this._nr_trace, "ThreadUtils$MobileAdsAsyncTask#onPostExecute", null);
            } catch (NoSuchFieldError e) {
                TraceMachine.enterMethod(null, "ThreadUtils$MobileAdsAsyncTask#onPostExecute", null);
            }
            super.onPostExecute(result);
            TraceMachine.exitMethod();
        }
    }
}

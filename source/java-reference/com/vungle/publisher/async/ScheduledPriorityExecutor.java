package com.vungle.publisher.async;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.vungle.log.Logger;
import com.vungle.publisher.db.model.LoggedException;
import dagger.Lazy;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class ScheduledPriorityExecutor {

    @Inject
    Lazy<LoggedException.Factory> a;
    private final a b;
    private final c c;
    private final c d;
    private final c e;
    private final BlockingQueue<Runnable> f = new PriorityBlockingQueue();

    /* JADX INFO: compiled from: vungle */
    public enum b {
        deviceId,
        databaseWrite,
        requestStreamingAd,
        reportAd,
        reportInstall,
        requestLocalAd,
        prepareLocalAd,
        prepareLocalViewable,
        downloadLocalAd,
        requestConfig,
        sessionEndTimer,
        sessionEnd,
        sessionStart,
        unfilledAd,
        deleteExpiredAds,
        otherTask,
        externalNetworkRequest,
        clientEvent,
        appFingerprint,
        reportExceptions
    }

    @Inject
    ScheduledPriorityExecutor() {
        HandlerThread handlerThread = new HandlerThread("VungleAsyncMasterThread");
        handlerThread.start();
        this.c = new c(new LinkedBlockingQueue(), "VungleAsyncClientEventThread-");
        this.c.allowCoreThreadTimeOut(true);
        this.d = new c(new LinkedBlockingQueue(), "VungleAsyncExternalNetworkRequestThread-");
        this.d.allowCoreThreadTimeOut(true);
        this.b = new a(handlerThread.getLooper());
        this.e = new c(this.f, "VungleAsyncMainThread-");
        this.e.allowCoreThreadTimeOut(true);
    }

    public final void a(Runnable runnable, b bVar) {
        this.b.sendMessage(b(runnable, bVar));
    }

    public final void a(Runnable runnable, long j) {
        a(runnable, b.otherTask, j);
    }

    public final void a(Runnable runnable, b bVar, long j) {
        Logger.d(Logger.ASYNC_TAG, "scheduling " + bVar + " delayed " + j + " ms");
        this.b.sendMessageDelayed(b(runnable, bVar), j);
    }

    private Message b(Runnable runnable, b bVar) {
        a aVar = this.b;
        int iOrdinal = bVar.ordinal();
        aVar.getClass();
        return aVar.obtainMessage(iOrdinal, new a.RunnableC0306a(aVar, runnable, bVar));
    }

    public final void a(b bVar) {
        this.b.removeMessages(bVar.ordinal());
    }

    /* JADX INFO: compiled from: vungle */
    class c extends ThreadPoolExecutor {
        /* JADX WARN: Multi-variable type inference failed */
        c(int i, final String str) {
            super(2, 2, 30L, TimeUnit.SECONDS, (BlockingQueue<Runnable>) i, new ThreadFactory() { // from class: com.vungle.publisher.async.ScheduledPriorityExecutor.c.1
                int a = 0;

                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    StringBuilder sbAppend = new StringBuilder().append(str);
                    int i2 = this.a;
                    this.a = i2 + 1;
                    String string = sbAppend.append(i2).toString();
                    Logger.v(Logger.ASYNC_TAG, "starting " + string);
                    return new Thread(runnable, string);
                }
            });
            allowCoreThreadTimeOut(true);
        }

        @Override // java.util.concurrent.ThreadPoolExecutor
        protected final void afterExecute(Runnable runnable, Throwable throwable) {
            super.afterExecute(runnable, throwable);
            if (throwable != null) {
                ScheduledPriorityExecutor.this.a.get().a(Logger.ASYNC_TAG, "error after executing runnable", throwable);
            }
        }
    }

    /* JADX INFO: compiled from: vungle */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Code duplicated, block: B:10:0x001c  */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            c cVar;
            Object obj = message.obj;
            if (obj == null || !(obj instanceof RunnableC0306a)) {
                Logger.w(Logger.ASYNC_TAG, "unhandled message " + message);
                return;
            }
            b bVar = ((RunnableC0306a) obj).d;
            if (bVar != null) {
                switch (bVar) {
                    case clientEvent:
                        cVar = ScheduledPriorityExecutor.this.c;
                        break;
                    default:
                        cVar = ScheduledPriorityExecutor.this.e;
                        break;
                }
            } else {
                cVar = ScheduledPriorityExecutor.this.e;
            }
            Logger.d(Logger.ASYNC_TAG, "processing " + obj);
            Logger.v(Logger.ASYNC_TAG, cVar + ", max pool size " + cVar.getMaximumPoolSize() + ", largest pool size " + cVar.getLargestPoolSize());
            cVar.execute((Runnable) obj);
        }

        /* JADX INFO: renamed from: com.vungle.publisher.async.ScheduledPriorityExecutor$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: vungle */
        class RunnableC0306a implements Comparable<RunnableC0306a>, Runnable {
            private final Runnable b;
            private final long c;
            private final b d;

            @Override // java.lang.Comparable
            public final /* bridge */ /* synthetic */ int compareTo(RunnableC0306a runnableC0306a) {
                return this.d.compareTo(runnableC0306a.d);
            }

            RunnableC0306a(a aVar, Runnable runnable, b bVar) {
                this(runnable, bVar, (byte) 0);
            }

            private RunnableC0306a(Runnable runnable, b bVar, byte b) {
                this.b = runnable;
                this.c = -1L;
                this.d = bVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    try {
                        this.b.run();
                        try {
                            if (this.c > 0) {
                                a.this.postDelayed(this, this.c);
                            }
                        } catch (Exception e) {
                            ScheduledPriorityExecutor.this.a.get().a(Logger.ASYNC_TAG, "error rescheduling " + this, e);
                        }
                    } catch (Exception e2) {
                        ScheduledPriorityExecutor.this.a.get().a(Logger.ASYNC_TAG, "error executing " + this, e2);
                        try {
                            if (this.c > 0) {
                                a.this.postDelayed(this, this.c);
                            }
                        } catch (Exception e3) {
                            ScheduledPriorityExecutor.this.a.get().a(Logger.ASYNC_TAG, "error rescheduling " + this, e3);
                        }
                    }
                } catch (Throwable th) {
                    try {
                        if (this.c > 0) {
                            a.this.postDelayed(this, this.c);
                            throw th;
                        }
                        throw th;
                    } catch (Exception e4) {
                        ScheduledPriorityExecutor.this.a.get().a(Logger.ASYNC_TAG, "error rescheduling " + this, e4);
                        throw th;
                    }
                }
            }

            public final boolean equals(Object object) {
                return object != null && (object instanceof RunnableC0306a) && this.b.equals(((RunnableC0306a) object).b);
            }

            public final int hashCode() {
                return this.b.hashCode();
            }

            public final String toString() {
                return "{PriorityRunnable:: taskType: " + this.d + ", repeatMillis: " + this.c + "}";
            }
        }
    }
}

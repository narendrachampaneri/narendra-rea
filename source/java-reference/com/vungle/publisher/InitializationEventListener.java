package com.vungle.publisher;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import com.vungle.log.Logger;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.db.model.Viewable;
import com.vungle.publisher.device.data.AppFingerprintManager;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.exception.ExceptionManager;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import com.vungle.publisher.reporting.AdReportManager;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class InitializationEventListener extends by {

    @Inject
    AdManager a;

    @Inject
    ScheduledPriorityExecutor b;

    @Inject
    ProtocolHttpGateway c;

    @Inject
    AdReportManager d;

    @Inject
    InitialConfigUpdatedEventListener e;

    @Inject
    GlobalEventListener f;

    @Inject
    SdkState g;
    private final dg i = new dg();

    public void onEvent(bw bwVar) {
        Logger.d(Logger.DEVICE_TAG, "device ID available");
        if (this.i.a(1) == 3) {
            a();
        }
    }

    public void onEvent(bh bhVar) {
        Logger.d(Logger.DATABASE_TAG, "on database ready");
        if (this.i.a(0) == 3) {
            a();
        }
    }

    private void a() {
        unregister();
        this.b.a(new Runnable() { // from class: com.vungle.publisher.InitializationEventListener.1
            @Override // java.lang.Runnable
            public final void run() {
                InitializationEventListener.this.e.register();
                InitializationEventListener.this.f.register();
                InitializationEventListener.this.g.a(true);
                AdReportManager adReportManager = InitializationEventListener.this.d;
                if (adReportManager.e.n.getBoolean("IsVgAppInstalled", false)) {
                    Logger.v(Logger.REPORT_TAG, "install already reported");
                } else {
                    Logger.d(Logger.REPORT_TAG, "reporting install");
                    adReportManager.d.c(new cw());
                }
                adReportManager.a();
                AdManager adManager = InitializationEventListener.this.a;
                Viewable.Factory factory = adManager.o;
                ContentValues contentValues = new ContentValues();
                contentValues.put("status", bj.a.aware.toString());
                SQLiteDatabase writableDatabase = factory.a.getWritableDatabase();
                String[] strArr = {bj.a.queued.toString(), bj.a.downloading.toString()};
                Logger.d(Logger.DATABASE_TAG, "updated " + (!(writableDatabase instanceof SQLiteDatabase) ? writableDatabase.updateWithOnConflict("viewable", contentValues, "status IN(?,?)", strArr, 3) : SQLiteInstrumentation.updateWithOnConflict(writableDatabase, "viewable", contentValues, "status IN(?,?)", strArr, 3)) + " " + bj.a.downloading + " viewables to status " + bj.a.aware);
                adManager.b(true);
                adManager.j.get().register();
                InitializationEventListener.this.c.a();
            }
        }, 2000L);
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class InitialConfigUpdatedEventListener extends by {

        @Inject
        ExceptionManager a;

        InitialConfigUpdatedEventListener() {
        }

        public void onEvent(cq cqVar) {
            unregister();
            ExceptionManager exceptionManager = this.a;
            try {
                if (exceptionManager.b.b()) {
                    Logger.v(Logger.DATA_TAG, "sdk configured to send logged exceptions");
                    final List listD = exceptionManager.c.d(10);
                    int size = listD.size();
                    if (size > 0) {
                        Logger.d(Logger.DATA_TAG, "sending " + size + " logged exceptions");
                        final cu cuVar = exceptionManager.a;
                        cuVar.e.a(new Runnable() { // from class: com.vungle.publisher.cu.1
                            final /* synthetic */ List a;

                            public AnonymousClass1() {
                                list = listD;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    cu.this.a.a(list).a();
                                } catch (Exception e) {
                                    Logger.w(Logger.DATA_TAG, "error sending logged exceptions", e);
                                }
                            }
                        }, ScheduledPriorityExecutor.b.reportExceptions);
                    }
                } else {
                    Logger.v(Logger.DATA_TAG, "sdk not configured to send logged exceptions");
                }
            } catch (Exception e) {
                Logger.e(Logger.DATA_TAG, "error sending exceptions. irony?", e);
            }
        }
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class GlobalEventListener extends by {

        @Inject
        AppFingerprintManager a;

        GlobalEventListener() {
        }

        public void onEvent(cq cqVar) {
            this.a.a();
        }

        public void onEvent(ag agVar) {
            this.a.a();
        }
    }
}

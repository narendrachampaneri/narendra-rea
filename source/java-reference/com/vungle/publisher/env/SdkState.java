package com.vungle.publisher.env;

import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import com.vungle.log.Logger;
import com.vungle.publisher.af;
import com.vungle.publisher.aj;
import com.vungle.publisher.ak;
import com.vungle.publisher.as;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.bb;
import com.vungle.publisher.bt;
import com.vungle.publisher.by;
import com.vungle.publisher.cz;
import com.vungle.publisher.db;
import com.vungle.publisher.db.DatabaseBroadcastReceiver;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.inject.annotations.EnvSharedPreferences;
import com.vungle.publisher.net.NetworkBroadcastReceiver;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import dagger.Lazy;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class SdkState {

    @Inject
    Context a;

    @Inject
    DatabaseBroadcastReceiver b;

    @Inject
    bt c;

    @Inject
    public EventBus d;

    @Inject
    ExternalStorageStateBroadcastReceiver e;

    @Inject
    NetworkBroadcastReceiver f;

    @Inject
    ScheduledPriorityExecutor g;

    @Inject
    AdThrottleEndRunnable h;

    @Inject
    ProtocolHttpGateway i;

    @Inject
    LoggedException.Factory j;

    @Inject
    public Lazy<EndAdEventListener> k;
    public long m;

    @Inject
    @EnvSharedPreferences
    public SharedPreferences n;
    private long o;
    public final AtomicBoolean l = new AtomicBoolean();
    private final AtomicInteger p = new AtomicInteger();

    static /* synthetic */ boolean a(SdkState sdkState, int i) {
        if (!sdkState.p.compareAndSet(i, 0)) {
            return false;
        }
        sdkState.o = 0L;
        return true;
    }

    public static boolean a() {
        boolean z = !TextUtils.isEmpty(cz.a("com.vungle.debug"));
        if (z) {
            Logger.d(Logger.AD_TAG, "in debug mode");
        } else {
            Logger.v(Logger.AD_TAG, "not in debug mode");
        }
        return z;
    }

    public final boolean b() {
        boolean z = true;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jC = c();
        int iElapsedRealtime = (int) ((SystemClock.elapsedRealtime() - c()) / 1000);
        if (iElapsedRealtime < 0) {
            Logger.d(Logger.AD_TAG, "negative adDelayElapsedSeconds " + iElapsedRealtime + ", currentTimestampMillis " + jElapsedRealtime + ", lastAdEndMillis " + jC);
        } else {
            int iE = e();
            z = iElapsedRealtime >= iE;
            if (z) {
                Logger.v(Logger.AD_TAG, iElapsedRealtime + " / " + iE + " ad delay seconds elapsed");
            } else {
                Logger.d(Logger.AD_TAG, iElapsedRealtime + " / " + iE + " ad delay seconds elapsed");
            }
        }
        return z;
    }

    public final long c() {
        long j = this.n.getLong("VgLastViewedTime", 0L);
        Logger.v(Logger.AD_TAG, "returning last ad end millis: " + j);
        return j;
    }

    public static long d() {
        return SystemClock.elapsedRealtime();
    }

    public final int e() {
        return this.n.getInt("VgAdDelayDuration", 0);
    }

    public final void a(boolean z) {
        boolean z2;
        ExternalStorageStateBroadcastReceiver externalStorageStateBroadcastReceiver = this.e;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addDataScheme("file");
        externalStorageStateBroadcastReceiver.a.registerReceiver(externalStorageStateBroadcastReceiver, intentFilter);
        NetworkBroadcastReceiver networkBroadcastReceiver = this.f;
        networkBroadcastReceiver.b.registerReceiver(networkBroadcastReceiver, NetworkBroadcastReceiver.a);
        DatabaseBroadcastReceiver databaseBroadcastReceiver = this.b;
        databaseBroadcastReceiver.a.registerReceiver(databaseBroadcastReceiver, new IntentFilter("com.vungle.publisher.db.DUMP_TABLES"));
        this.c.r();
        this.g.a(ScheduledPriorityExecutor.b.sessionEnd);
        if (db.a(this.p)) {
            this.o = System.currentTimeMillis();
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            final ProtocolHttpGateway protocolHttpGateway = this.i;
            final long j = this.o;
            protocolHttpGateway.e.a(new Runnable() { // from class: com.vungle.publisher.protocol.ProtocolHttpGateway.6
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        ProtocolHttpGateway.this.l.a(j).a();
                    } catch (Exception e) {
                        ProtocolHttpGateway.this.d.a(Logger.PROTOCOL_TAG, "error sending session start", e);
                    }
                }
            }, ScheduledPriorityExecutor.b.sessionStart);
        }
        if (z) {
            this.d.a(new af());
        }
    }

    public final void b(boolean z) {
        if (this.l.compareAndSet(true, false)) {
            Logger.d(Logger.AD_TAG, "ending playing ad onResume()");
            this.k.get().unregister();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            Logger.v(Logger.AD_TAG, "setting last ad end millis: " + jElapsedRealtime);
            this.n.edit().putLong("VgLastViewedTime", jElapsedRealtime).apply();
            this.m = 0L;
            int iE = e();
            if (iE > 0) {
                this.d.a(new aj());
                this.g.a(this.h, iE * 1000);
            }
            if (!z) {
                this.d.a(new bb(this.m));
            }
        }
    }

    public final long f() {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        final long j = this.o;
        final int i = this.p.get();
        ExternalStorageStateBroadcastReceiver externalStorageStateBroadcastReceiver = this.e;
        try {
            externalStorageStateBroadcastReceiver.a.unregisterReceiver(externalStorageStateBroadcastReceiver);
        } catch (IllegalArgumentException e) {
            Logger.w(Logger.DEVICE_TAG, "error unregistering external storage state broadcast receiver - not registered");
        }
        NetworkBroadcastReceiver networkBroadcastReceiver = this.f;
        try {
            networkBroadcastReceiver.b.unregisterReceiver(networkBroadcastReceiver);
        } catch (IllegalArgumentException e2) {
            Logger.w(Logger.NETWORK_TAG, "error unregistering network broadcast receiver - not registered");
        }
        DatabaseBroadcastReceiver databaseBroadcastReceiver = this.b;
        try {
            databaseBroadcastReceiver.a.unregisterReceiver(databaseBroadcastReceiver);
        } catch (IllegalArgumentException e3) {
            Logger.w(Logger.DATABASE_DUMP_TAG, "error unregistering database broadcast receiver - not registered");
        }
        this.g.a(new Runnable() { // from class: com.vungle.publisher.env.SdkState.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (SdkState.a(SdkState.this, i)) {
                        final ProtocolHttpGateway protocolHttpGateway = SdkState.this.i;
                        final long j2 = j;
                        final long j3 = jCurrentTimeMillis;
                        protocolHttpGateway.e.a(new Runnable() { // from class: com.vungle.publisher.protocol.ProtocolHttpGateway.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    ProtocolHttpGateway.this.k.a(j2, j3).a();
                                } catch (Exception e4) {
                                    ProtocolHttpGateway.this.d.a(Logger.PROTOCOL_TAG, "error sending session end", e4);
                                }
                            }
                        }, ScheduledPriorityExecutor.b.sessionEnd);
                    }
                } catch (Exception e4) {
                    SdkState.this.j.a(Logger.AD_TAG, "error sending session end", e4);
                }
            }
        }, ScheduledPriorityExecutor.b.sessionEndTimer, 10000L);
        return jCurrentTimeMillis;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class AdThrottleEndRunnable implements Runnable {

        @Inject
        EventBus a;

        AdThrottleEndRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(new ak());
        }
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class EndAdEventListener extends by {

        @Inject
        SdkState a;

        EndAdEventListener() {
        }

        public void onEvent(as asVar) {
            Logger.d(Logger.EVENT_TAG, "SdkState received end ad event");
            this.a.b(true);
        }
    }
}

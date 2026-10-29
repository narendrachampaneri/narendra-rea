package com.vungle.publisher.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.vungle.log.Logger;
import com.vungle.publisher.bo;
import com.vungle.publisher.bp;
import com.vungle.publisher.cp;
import com.vungle.publisher.event.EventBus;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class NetworkBroadcastReceiver extends BroadcastReceiver {
    public static final IntentFilter a = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");

    @Inject
    public Context b;

    @Inject
    cp c;

    @Inject
    EventBus d;
    private final AtomicBoolean e = new AtomicBoolean(false);

    NetworkBroadcastReceiver() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            if (intent.getBooleanExtra("noConnectivity", false)) {
                if (this.e.compareAndSet(true, false)) {
                    Logger.d(Logger.NETWORK_TAG, "lost connectivity");
                    this.d.a(new bp());
                    return;
                }
                return;
            }
            if (intent.getBooleanExtra("isFailover", false)) {
                Logger.d(Logger.NETWORK_TAG, "connectivity failover");
                return;
            }
            Logger.d(Logger.NETWORK_TAG, "connectivity established");
            synchronized (this) {
                notifyAll();
            }
            if (this.e.compareAndSet(false, true)) {
                this.d.a(new bo());
            }
        }
    }
}

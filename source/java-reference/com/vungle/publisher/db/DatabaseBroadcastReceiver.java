package com.vungle.publisher.db;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.vungle.log.Logger;
import com.vungle.publisher.bv;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class DatabaseBroadcastReceiver extends BroadcastReceiver {

    @Inject
    public Context a;

    @Inject
    DatabaseHelper b;

    @Inject
    bv c;

    DatabaseBroadcastReceiver() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if ("com.vungle.publisher.db.DUMP_TABLES".equals(intent.getAction())) {
                Logger.d(Logger.DATABASE_DUMP_TAG, this.c.b() + " received dump tables request");
                this.b.a(intent.getStringArrayExtra("tables"));
            }
        } catch (Exception e) {
            Logger.w(Logger.DATABASE_DUMP_TAG, "error dumping database", e);
        }
    }
}

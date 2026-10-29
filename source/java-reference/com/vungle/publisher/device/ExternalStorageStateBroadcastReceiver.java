package com.vungle.publisher.device;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.vungle.publisher.bm;
import com.vungle.publisher.bn;
import com.vungle.publisher.event.EventBus;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class ExternalStorageStateBroadcastReceiver extends BroadcastReceiver {

    @Inject
    public Context a;

    @Inject
    EventBus b;

    ExternalStorageStateBroadcastReceiver() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.MEDIA_MOUNTED".equals(action)) {
            this.b.a(new bm());
        } else if ("android.intent.action.MEDIA_UNMOUNTED".equals(action)) {
            this.b.a(new bn());
        }
    }
}

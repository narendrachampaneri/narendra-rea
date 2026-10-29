package com.amazon.ags.client.whispersync.event;

import android.util.Log;
import com.amazon.ags.client.whispersync.SynchronizationManager;
import com.amazon.ags.constants.JavascriptEventType;
import com.amazon.ags.html5.javascript.event.JavascriptEventListener;

/* JADX INFO: loaded from: classes2.dex */
public class WhispersyncJavascriptEventListener implements JavascriptEventListener {
    private static final String TAG = "GC_Whispersync";
    private final SynchronizationManager synchronizationManager;

    public WhispersyncJavascriptEventListener(SynchronizationManager synchronizationManager) {
        this.synchronizationManager = synchronizationManager;
    }

    @Override // com.amazon.ags.html5.javascript.event.JavascriptEventListener
    public void onJavascriptEvent(String eventType) {
        Log.d(TAG, "Received an event [" + eventType + "] from Javascript");
        if (eventType.equals(JavascriptEventType.SIGN_IN_EVENT)) {
            this.synchronizationManager.syncActively();
        }
    }
}

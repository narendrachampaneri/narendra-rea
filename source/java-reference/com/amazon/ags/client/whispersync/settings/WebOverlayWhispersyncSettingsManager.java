package com.amazon.ags.client.whispersync.settings;

import android.util.Log;
import com.amazon.ags.api.AGResponseCallback;
import com.amazon.ags.api.AGResponseHandle;
import com.amazon.ags.client.session.SessionClient;
import com.amazon.ags.client.session.WhispersyncEnabledResponse;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class WebOverlayWhispersyncSettingsManager implements WhispersyncUserSettingsManager {
    private static final String TAG = "GC_Whispersync";
    private static final long WEB_OVERLAY_CALL_TIMEOUT_SECONDS = 1;
    private WhispersyncUserSettingsManager.YesNoMaybe isWhispersyncEnabled = WhispersyncUserSettingsManager.YesNoMaybe.MAYBE;
    private final SessionClient sessionClient;

    public WebOverlayWhispersyncSettingsManager(SessionClient sessionClient) {
        this.sessionClient = sessionClient;
    }

    @Override // com.amazon.ags.client.whispersync.settings.WhispersyncUserSettingsManager
    public WhispersyncUserSettingsManager.YesNoMaybe isWhispersyncEnabled() {
        Log.d(TAG, "Checking whether Whispersync is enabled");
        AGResponseHandle<WhispersyncEnabledResponse> responseHandle = this.sessionClient.isWhispersyncEnabled();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        responseHandle.setCallback(new AGResponseCallback<WhispersyncEnabledResponse>() { // from class: com.amazon.ags.client.whispersync.settings.WebOverlayWhispersyncSettingsManager.1
            @Override // com.amazon.ags.api.AGResponseCallback
            public void onComplete(WhispersyncEnabledResponse result) {
                if (result != null) {
                    if (result.isWhispersyncEnabled()) {
                        WebOverlayWhispersyncSettingsManager.this.isWhispersyncEnabled = WhispersyncUserSettingsManager.YesNoMaybe.YES;
                        Log.d(WebOverlayWhispersyncSettingsManager.TAG, "Whispersync is ENABLED");
                    } else {
                        WebOverlayWhispersyncSettingsManager.this.isWhispersyncEnabled = WhispersyncUserSettingsManager.YesNoMaybe.NO;
                        Log.d(WebOverlayWhispersyncSettingsManager.TAG, "Whispersync is DISABLED");
                    }
                } else {
                    Log.d(WebOverlayWhispersyncSettingsManager.TAG, "Unable to determine whether Whispersync is enabled");
                }
                countDownLatch.countDown();
            }
        });
        try {
            boolean success = countDownLatch.await(1L, TimeUnit.SECONDS);
            if (!success) {
                Log.d(TAG, "Timed-out determining whether Whispersync is enabled");
            }
        } catch (InterruptedException e) {
            Log.w(TAG, "Thread interrupted when waiting for Whispersync enabled state [" + e.getLocalizedMessage() + "]");
            Thread.currentThread().interrupt();
        }
        return this.isWhispersyncEnabled;
    }
}

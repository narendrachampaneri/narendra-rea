package com.amazon.insights;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.amazon.insights.core.util.StringUtil;

/* JADX INFO: loaded from: classes2.dex */
public class InsightsProcessingService extends IntentService {
    public static final String ACTION_SUBMIT_MEASUREMENTS = "SubmitMeasurements";
    public static final String ACTION_SYNC_CONFIGURATION = "SyncConfiguration";
    private static final String AVAILABILITY_SERVICE_WORKER = "AvailabilityServiceWorker";

    public InsightsProcessingService() {
        super(AVAILABILITY_SERVICE_WORKER);
    }

    @Override // android.app.IntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        cancelPendingIntent(getApplicationContext(), ACTION_SUBMIT_MEASUREMENTS);
        cancelPendingIntent(getApplicationContext(), ACTION_SYNC_CONFIGURATION);
    }

    public static void cancelPendingIntent(Context appContext, String intentAction) {
        if (appContext != null) {
            PendingIntent pendingIntent = getPendingIntent(appContext, intentAction, null);
            AlarmManager alarmManager = (AlarmManager) appContext.getSystemService("alarm");
            if (alarmManager != null && pendingIntent != null) {
                alarmManager.cancel(pendingIntent);
            }
        }
    }

    private static PendingIntent getPendingIntent(Context context, String intentAction, Bundle extras) {
        if (context == null) {
            return null;
        }
        if (StringUtil.isNullOrEmpty(intentAction)) {
            throw new RuntimeException("'intentAction' cannot be null");
        }
        Intent intent = new Intent(intentAction);
        intent.setClass(context.getApplicationContext(), InsightsProcessingService.class);
        if (extras != null) {
            intent.putExtras(extras);
        }
        return PendingIntent.getService(context.getApplicationContext(), 0, intent, 0);
    }
}

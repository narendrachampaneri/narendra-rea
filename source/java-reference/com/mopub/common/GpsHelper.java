package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import android.support.annotation.Nullable;
import com.mopub.common.factories.MethodBuilderFactory;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Reflection;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class GpsHelper {
    public static final String ADVERTISING_ID_KEY = "advertisingId";
    public static final int GOOGLE_PLAY_SUCCESS_CODE = 0;
    public static final String IS_LIMIT_AD_TRACKING_ENABLED_KEY = "isLimitAdTrackingEnabled";
    private static String sPlayServicesUtilClassName = "com.google.android.gms.common.GooglePlayServicesUtil";
    private static String sAdvertisingIdClientClassName = "com.google.android.gms.ads.identifier.AdvertisingIdClient";

    public interface GpsHelperListener {
        void onFetchAdInfoCompleted();
    }

    public static class AdvertisingInfo {
        public final String advertisingId;
        public final boolean limitAdTracking;

        public AdvertisingInfo(String adId, boolean limitAdTrackingEnabled) {
            this.advertisingId = adId;
            this.limitAdTracking = limitAdTrackingEnabled;
        }
    }

    public static boolean isPlayServicesAvailable(Context context) {
        try {
            Reflection.MethodBuilder methodBuilder = MethodBuilderFactory.create(null, "isGooglePlayServicesAvailable").setStatic(Class.forName(sPlayServicesUtilClassName)).addParam(Context.class, context);
            Object result = methodBuilder.execute();
            return result != null && ((Integer) result).intValue() == 0;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isLimitAdTrackingEnabled(Context context) {
        if (isPlayServicesAvailable(context)) {
            return SharedPreferencesHelper.getSharedPreferences(context).getBoolean(IS_LIMIT_AD_TRACKING_ENABLED_KEY, false);
        }
        return false;
    }

    static boolean isClientMetadataPopulated(Context context) {
        return ClientMetadata.getInstance(context).isAdvertisingInfoSet();
    }

    public static void fetchAdvertisingInfoAsync(Context context, GpsHelperListener gpsHelperListener) {
        boolean playServicesIsAvailable = isPlayServicesAvailable(context);
        if (playServicesIsAvailable && !isClientMetadataPopulated(context)) {
            internalFetchAdvertisingInfoAsync(context, gpsHelperListener);
            return;
        }
        if (gpsHelperListener != null) {
            gpsHelperListener.onFetchAdInfoCompleted();
        }
        if (playServicesIsAvailable) {
            internalFetchAdvertisingInfoAsync(context, null);
        }
    }

    @Nullable
    public static AdvertisingInfo fetchAdvertisingInfoSync(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Reflection.MethodBuilder methodBuilder = MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(sAdvertisingIdClientClassName)).addParam(Context.class, context);
            Object adInfo = methodBuilder.execute();
            String advertisingId = reflectedGetAdvertisingId(adInfo, null);
            boolean isLimitAdTrackingEnabled = reflectedIsLimitAdTrackingEnabled(adInfo, false);
            return new AdvertisingInfo(advertisingId, isLimitAdTrackingEnabled);
        } catch (Exception e) {
            MoPubLog.d("Unable to obtain Google AdvertisingIdClient.Info via reflection.");
            return null;
        }
    }

    private static void internalFetchAdvertisingInfoAsync(Context context, GpsHelperListener gpsHelperListener) {
        if (!Reflection.classFound(sAdvertisingIdClientClassName)) {
            if (gpsHelperListener != null) {
                gpsHelperListener.onFetchAdInfoCompleted();
                return;
            }
            return;
        }
        try {
            AsyncTasks.safeExecuteOnExecutor(new FetchAdvertisingInfoTask(context, gpsHelperListener), new Void[0]);
        } catch (Exception exception) {
            MoPubLog.d("Error executing FetchAdvertisingInfoTask", exception);
            if (gpsHelperListener != null) {
                gpsHelperListener.onFetchAdInfoCompleted();
            }
        }
    }

    private static class FetchAdvertisingInfoTask extends AsyncTask<Void, Void, Void> implements TraceFieldInterface {
        public Trace _nr_trace;
        private WeakReference<Context> mContextWeakReference;
        private WeakReference<GpsHelperListener> mGpsHelperListenerWeakReference;

        @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
        public void _nr_setTrace(Trace trace) {
            try {
                this._nr_trace = trace;
            } catch (Exception e) {
            }
        }

        @Override // android.os.AsyncTask
        protected /* bridge */ /* synthetic */ Void doInBackground(Void[] voidArr) throws Throwable {
            try {
                TraceMachine.enterMethod(this._nr_trace, "GpsHelper$FetchAdvertisingInfoTask#doInBackground", null);
            } catch (NoSuchFieldError e) {
                TraceMachine.enterMethod(null, "GpsHelper$FetchAdvertisingInfoTask#doInBackground", null);
            }
            Void voidDoInBackground2 = doInBackground2(voidArr);
            TraceMachine.exitMethod();
            TraceMachine.unloadTraceContext(this);
            return voidDoInBackground2;
        }

        @Override // android.os.AsyncTask
        protected /* bridge */ /* synthetic */ void onPostExecute(Void r4) {
            try {
                TraceMachine.enterMethod(this._nr_trace, "GpsHelper$FetchAdvertisingInfoTask#onPostExecute", null);
            } catch (NoSuchFieldError e) {
                TraceMachine.enterMethod(null, "GpsHelper$FetchAdvertisingInfoTask#onPostExecute", null);
            }
            onPostExecute2(r4);
            TraceMachine.exitMethod();
        }

        public FetchAdvertisingInfoTask(Context context, GpsHelperListener gpsHelperListener) {
            this.mContextWeakReference = new WeakReference<>(context);
            this.mGpsHelperListenerWeakReference = new WeakReference<>(gpsHelperListener);
        }

        /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
        protected Void doInBackground2(Void... voids) throws Throwable {
            try {
                Context context = this.mContextWeakReference.get();
                if (context != null) {
                    Reflection.MethodBuilder methodBuilder = MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(GpsHelper.sAdvertisingIdClientClassName)).addParam(Context.class, context);
                    Object adInfo = methodBuilder.execute();
                    if (adInfo != null) {
                        GpsHelper.updateClientMetadata(context, adInfo);
                    }
                }
            } catch (Exception e) {
                MoPubLog.d("Unable to obtain Google AdvertisingIdClient.Info via reflection.");
            }
            return null;
        }

        /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
        protected void onPostExecute2(Void aVoid) {
            GpsHelperListener gpsHelperListener = this.mGpsHelperListenerWeakReference.get();
            if (gpsHelperListener != null) {
                gpsHelperListener.onFetchAdInfoCompleted();
            }
        }
    }

    static void updateClientMetadata(Context context, Object adInfo) throws Throwable {
        String advertisingId = reflectedGetAdvertisingId(adInfo, null);
        boolean isLimitAdTrackingEnabled = reflectedIsLimitAdTrackingEnabled(adInfo, false);
        ClientMetadata clientMetadata = ClientMetadata.getInstance(context);
        clientMetadata.setAdvertisingInfo(advertisingId, isLimitAdTrackingEnabled);
    }

    static String reflectedGetAdvertisingId(Object adInfo, String defaultValue) {
        try {
            return (String) MethodBuilderFactory.create(adInfo, "getId").execute();
        } catch (Exception e) {
            return defaultValue;
        }
    }

    static boolean reflectedIsLimitAdTrackingEnabled(Object adInfo, boolean defaultValue) {
        try {
            Boolean result = (Boolean) MethodBuilderFactory.create(adInfo, IS_LIMIT_AD_TRACKING_ENABLED_KEY).execute();
            return result != null ? result.booleanValue() : defaultValue;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    @Deprecated
    public static void setClassNamesForTesting() {
        sPlayServicesUtilClassName = "java.lang.Class";
        sAdvertisingIdClientClassName = "java.lang.Class";
    }
}

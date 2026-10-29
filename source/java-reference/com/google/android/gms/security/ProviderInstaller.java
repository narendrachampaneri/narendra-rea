package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.zzc;
import com.google.android.gms.common.zze;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.instrumentation.AsyncTaskInstrumentation;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class ProviderInstaller {
    public static final String PROVIDER_NAME = "GmsCore_OpenSSL";
    private static final zzc zzbgP = zzc.zzoK();
    private static final Object zzqy = new Object();
    private static Method zzbgQ = null;

    /* JADX INFO: renamed from: com.google.android.gms.security.ProviderInstaller$1, reason: invalid class name */
    static class AnonymousClass1 extends AsyncTask<Void, Void, Integer> implements TraceFieldInterface {
        public Trace _nr_trace;
        final /* synthetic */ ProviderInstallListener zzbgR;
        final /* synthetic */ Context zzxh;

        AnonymousClass1(Context context, ProviderInstallListener providerInstallListener) {
            this.zzxh = context;
            this.zzbgR = providerInstallListener;
        }

        @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
        public void _nr_setTrace(Trace trace) {
            try {
                this._nr_trace = trace;
            } catch (Exception e) {
            }
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ Integer doInBackground(Void[] voidArr) {
            try {
                TraceMachine.enterMethod(this._nr_trace, "ProviderInstaller$1#doInBackground", null);
            } catch (NoSuchFieldError e) {
                TraceMachine.enterMethod(null, "ProviderInstaller$1#doInBackground", null);
            }
            Integer numZzc = zzc(voidArr);
            TraceMachine.exitMethod();
            TraceMachine.unloadTraceContext(this);
            return numZzc;
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ void onPostExecute(Integer num) {
            try {
                TraceMachine.enterMethod(this._nr_trace, "ProviderInstaller$1#onPostExecute", null);
            } catch (NoSuchFieldError e) {
                TraceMachine.enterMethod(null, "ProviderInstaller$1#onPostExecute", null);
            }
            zze(num);
            TraceMachine.exitMethod();
        }

        protected Integer zzc(Void... voidArr) {
            try {
                ProviderInstaller.installIfNeeded(this.zzxh);
                return 0;
            } catch (GooglePlayServicesNotAvailableException e) {
                return Integer.valueOf(e.errorCode);
            } catch (GooglePlayServicesRepairableException e2) {
                return Integer.valueOf(e2.getConnectionStatusCode());
            }
        }

        protected void zze(Integer num) {
            if (num.intValue() == 0) {
                this.zzbgR.onProviderInstalled();
            } else {
                this.zzbgR.onProviderInstallFailed(num.intValue(), ProviderInstaller.zzbgP.zza(this.zzxh, num.intValue(), AnalyticsEvent.TYPE_TAG_TRANSACTION));
            }
        }
    }

    public interface ProviderInstallListener {
        void onProviderInstallFailed(int i, Intent intent);

        void onProviderInstalled();
    }

    public static void installIfNeeded(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        zzx.zzb(context, "Context must not be null");
        zzbgP.zzak(context);
        Context remoteContext = zze.getRemoteContext(context);
        if (remoteContext == null) {
            Log.e("ProviderInstaller", "Failed to get remote context");
            throw new GooglePlayServicesNotAvailableException(8);
        }
        synchronized (zzqy) {
            try {
                if (zzbgQ == null) {
                    zzaV(remoteContext);
                }
                zzbgQ.invoke(null, remoteContext);
            } catch (Exception e) {
                Log.e("ProviderInstaller", "Failed to install provider: " + e.getMessage());
                throw new GooglePlayServicesNotAvailableException(8);
            }
        }
    }

    public static void installIfNeededAsync(Context context, ProviderInstallListener listener) {
        zzx.zzb(context, "Context must not be null");
        zzx.zzb(listener, "Listener must not be null");
        zzx.zzcD("Must be called on the UI thread");
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(context, listener);
        Void[] voidArr = new Void[0];
        if (anonymousClass1 instanceof AsyncTask) {
            AsyncTaskInstrumentation.execute(anonymousClass1, voidArr);
        } else {
            anonymousClass1.execute(voidArr);
        }
    }

    private static void zzaV(Context context) throws NoSuchMethodException, ClassNotFoundException {
        zzbgQ = context.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", Context.class);
    }
}

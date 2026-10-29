package com.jirbo.adcolony;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.view.ViewGroup;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.instrumentation.AsyncTaskInstrumentation;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class AdColony {
    static boolean b = true;
    static boolean c;
    boolean a = false;

    public static void disable() {
        com.jirbo.adcolony.a.y = true;
    }

    public static void configure(Activity activity, String client_options, String app_id, String... zone_ids) {
        c = false;
        if (!b) {
            com.jirbo.adcolony.a.ao.clear();
            com.jirbo.adcolony.a.ap.clear();
            return;
        }
        b = false;
        if (Build.VERSION.SDK_INT >= 11) {
            a aVar = new a(activity);
            Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
            Void[] voidArr = new Void[0];
            if (aVar instanceof AsyncTask) {
                AsyncTaskInstrumentation.executeOnExecutor(aVar, executor, voidArr);
            } else {
                aVar.executeOnExecutor(executor, voidArr);
            }
        } else {
            a aVar2 = new a(activity);
            Void[] voidArr2 = new Void[0];
            if (aVar2 instanceof AsyncTask) {
                AsyncTaskInstrumentation.execute(aVar2, voidArr2);
            } else {
                aVar2.execute(voidArr2);
            }
        }
        com.jirbo.adcolony.a.aq.clear();
        Handler handler = new Handler();
        Runnable runnable = new Runnable() { // from class: com.jirbo.adcolony.AdColony.1
            @Override // java.lang.Runnable
            public void run() {
                com.jirbo.adcolony.a.H = false;
            }
        };
        if (!com.jirbo.adcolony.a.H || com.jirbo.adcolony.a.I) {
            if (!com.jirbo.adcolony.a.y) {
                if (app_id == null) {
                    com.jirbo.adcolony.a.a("Null App ID - disabling AdColony.");
                    return;
                }
                if (zone_ids == null) {
                    com.jirbo.adcolony.a.a("Null Zone IDs array - disabling AdColony.");
                    return;
                }
                if (zone_ids.length == 0) {
                    com.jirbo.adcolony.a.a("No Zone IDs provided - disabling AdColony.");
                    return;
                }
                com.jirbo.adcolony.a.b(activity);
                com.jirbo.adcolony.a.l.a(client_options, app_id, zone_ids);
                com.jirbo.adcolony.a.w = true;
                com.jirbo.adcolony.a.H = true;
                handler.postDelayed(runnable, 120000L);
            } else {
                return;
            }
        }
        if (com.jirbo.adcolony.a.U == null) {
            com.jirbo.adcolony.a.E = true;
        }
        com.jirbo.adcolony.a.ao.clear();
        com.jirbo.adcolony.a.ap.clear();
        com.jirbo.adcolony.a.ar = new HashMap();
        for (String str : zone_ids) {
            com.jirbo.adcolony.a.ar.put(str, false);
        }
    }

    public static void setCustomID(String new_custom_id) {
        if (!new_custom_id.equals(com.jirbo.adcolony.a.l.a.y) && com.jirbo.adcolony.a.l != null && com.jirbo.adcolony.a.l.b != null) {
            com.jirbo.adcolony.a.l.a.y = new_custom_id;
            if (com.jirbo.adcolony.a.x) {
                com.jirbo.adcolony.a.l.b.h();
            }
        }
    }

    public static String getCustomID() {
        return com.jirbo.adcolony.a.l.a.y;
    }

    public static boolean isConfigured() {
        return !b;
    }

    public static void setDeviceID(String new_device_id) {
        if (!new_device_id.equals(com.jirbo.adcolony.a.l.a.z)) {
            com.jirbo.adcolony.a.l.a.z = new_device_id;
            com.jirbo.adcolony.a.H = false;
            com.jirbo.adcolony.a.l.b.d = true;
            com.jirbo.adcolony.a.l.b.b = false;
            com.jirbo.adcolony.a.l.b.c = true;
        }
    }

    public static String getDeviceID() {
        return com.jirbo.adcolony.a.l.a.z;
    }

    public static boolean isTablet() {
        return g.i();
    }

    public static void resume(final Activity activity) {
        l.c.b((Object) "[ADC] AdColony resume called.");
        com.jirbo.adcolony.a.B = false;
        com.jirbo.adcolony.a.r = false;
        com.jirbo.adcolony.a.a(activity);
        com.jirbo.adcolony.a.A = false;
        com.jirbo.adcolony.a.h();
        if (activity == null) {
            l.d.b((Object) "Activity reference is null. Disabling AdColony.");
            disable();
            return;
        }
        if (com.jirbo.adcolony.a.v != null) {
            com.jirbo.adcolony.a.W.a(com.jirbo.adcolony.a.v);
            com.jirbo.adcolony.a.v = null;
        }
        new Thread(new Runnable() { // from class: com.jirbo.adcolony.AdColony.2
            @Override // java.lang.Runnable
            public void run() {
                activity.runOnUiThread(new Runnable() { // from class: com.jirbo.adcolony.AdColony.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i = 0; i < com.jirbo.adcolony.a.aq.size(); i++) {
                            AdColonyNativeAdView adColonyNativeAdView = com.jirbo.adcolony.a.aq.get(i);
                            if (adColonyNativeAdView != null && com.jirbo.adcolony.a.b() == adColonyNativeAdView.d && !adColonyNativeAdView.u) {
                                adColonyNativeAdView.A = false;
                                adColonyNativeAdView.invalidate();
                                if (adColonyNativeAdView.T != null) {
                                    adColonyNativeAdView.T.a = false;
                                    adColonyNativeAdView.T.invalidate();
                                }
                            }
                        }
                    }
                });
            }
        }).start();
        com.jirbo.adcolony.a.M = false;
    }

    public static void pause() {
        l.c.b((Object) "[ADC] AdColony pause called.");
        com.jirbo.adcolony.a.r = true;
        com.jirbo.adcolony.a.B = true;
        for (int i = 0; i < com.jirbo.adcolony.a.aq.size(); i++) {
            if (com.jirbo.adcolony.a.aq.get(i) != null) {
                AdColonyNativeAdView adColonyNativeAdView = com.jirbo.adcolony.a.aq.get(i);
                adColonyNativeAdView.A = true;
                if (adColonyNativeAdView.ag != null && !adColonyNativeAdView.u && adColonyNativeAdView.ag.isPlaying()) {
                    if (com.jirbo.adcolony.a.E) {
                        adColonyNativeAdView.T.setVisibility(0);
                    }
                    adColonyNativeAdView.c();
                }
            }
        }
    }

    public static void onBackPressed() {
        if (com.jirbo.adcolony.a.S != null) {
            if ((com.jirbo.adcolony.a.S instanceof ab) || (com.jirbo.adcolony.a.S instanceof ac)) {
                ((ViewGroup) com.jirbo.adcolony.a.S.getParent()).removeView(com.jirbo.adcolony.a.S);
                com.jirbo.adcolony.a.E = true;
                com.jirbo.adcolony.a.S.G.c(false);
                for (int i = 0; i < com.jirbo.adcolony.a.an.size(); i++) {
                    com.jirbo.adcolony.a.an.get(i).recycle();
                }
                com.jirbo.adcolony.a.an.clear();
                com.jirbo.adcolony.a.S = null;
            }
        }
    }

    public static Activity activity() {
        return com.jirbo.adcolony.a.b();
    }

    public static boolean isZoneV4VC(String zone_id) {
        if (com.jirbo.adcolony.a.l == null || com.jirbo.adcolony.a.l.b == null || com.jirbo.adcolony.a.l.b.i == null || com.jirbo.adcolony.a.l.b.i.n == null) {
            return false;
        }
        return com.jirbo.adcolony.a.l.b.a(zone_id, false);
    }

    public static boolean isZoneNative(String zone_id) {
        if (com.jirbo.adcolony.a.l == null || com.jirbo.adcolony.a.l.b == null || com.jirbo.adcolony.a.l.b.i == null || com.jirbo.adcolony.a.l.b.i.n == null || com.jirbo.adcolony.a.l.b.i.n.a(zone_id) == null || com.jirbo.adcolony.a.l.b.i.n.a(zone_id).m == null || com.jirbo.adcolony.a.l.b.i.n.a(zone_id).m.a == null) {
            return false;
        }
        for (int i = 0; i < com.jirbo.adcolony.a.l.b.i.n.a(zone_id).m.a.size(); i++) {
            if (com.jirbo.adcolony.a.l.b.i.n.a(zone_id).m.a(i).A.a) {
                return true;
            }
        }
        return false;
    }

    public static void addV4VCListener(AdColonyV4VCListener listener) {
        if (!com.jirbo.adcolony.a.ao.contains(listener)) {
            com.jirbo.adcolony.a.ao.add(listener);
        }
    }

    public static void removeV4VCListener(AdColonyV4VCListener listener) {
        com.jirbo.adcolony.a.ao.remove(listener);
    }

    public static void addAdAvailabilityListener(AdColonyAdAvailabilityListener listener) {
        if (!com.jirbo.adcolony.a.ap.contains(listener)) {
            com.jirbo.adcolony.a.ap.add(listener);
        }
    }

    public static void removeAdAvailabilityListener(AdColonyAdAvailabilityListener listener) {
        com.jirbo.adcolony.a.ap.remove(listener);
    }

    public static void notifyIAPComplete(String product_id, String trans_id) {
        notifyIAPComplete(product_id, trans_id, null, 0.0d);
    }

    public static void notifyIAPComplete(String product_id, String trans_id, String currency_code, double price) {
        l.c.b((Object) "notifyIAPComplete() called.");
        ADCData.g gVar = new ADCData.g();
        gVar.b("product_id", product_id);
        if (price != 0.0d) {
            gVar.b("price", price);
        }
        gVar.b("trans_id", trans_id);
        gVar.b(AnalyticAttribute.PURCHASE_EVENT_QUANTITY_ATTRIBUTE, 1);
        if (currency_code != null) {
            gVar.b("price_currency_code", currency_code);
        }
        if (com.jirbo.adcolony.a.O) {
            com.jirbo.adcolony.a.l.d.a("in_app_purchase", gVar);
        } else {
            com.jirbo.adcolony.a.aj.a(gVar);
        }
    }

    public static void cancelVideo() {
        if (com.jirbo.adcolony.a.U != null) {
            com.jirbo.adcolony.a.U.finish();
            com.jirbo.adcolony.a.ak = true;
            com.jirbo.adcolony.a.W.b(null);
        }
    }

    public static String statusForZone(String zone_id) {
        if (com.jirbo.adcolony.a.l == null || com.jirbo.adcolony.a.l.b == null || com.jirbo.adcolony.a.l.b.i == null || com.jirbo.adcolony.a.l.b.i.n == null || com.jirbo.adcolony.a.y) {
            return "unknown";
        }
        n.ad adVarA = com.jirbo.adcolony.a.l.b.i.n.a(zone_id);
        if (adVarA == null) {
            return !com.jirbo.adcolony.a.x ? "unknown" : "invalid";
        }
        if (adVarA.g) {
            return (adVarA.h && com.jirbo.adcolony.a.l.b.c(zone_id, true)) ? "active" : "loading";
        }
        return "off";
    }

    public static void get_images(String zone_id) {
        com.jirbo.adcolony.a.l.a.b(zone_id);
    }

    public static void disableDECOverride() {
        com.jirbo.adcolony.a.e = null;
    }

    public static void forceMobileCache() {
        if (!com.jirbo.adcolony.a.N) {
            com.jirbo.adcolony.a.N = true;
            com.jirbo.adcolony.a.H = false;
            com.jirbo.adcolony.a.l.b.d = true;
            com.jirbo.adcolony.a.l.b.b = false;
            com.jirbo.adcolony.a.l.b.c = true;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static class a extends AsyncTask<Void, Void, Void> implements TraceFieldInterface {
        public Trace _nr_trace;
        Activity a;
        String b = "";
        boolean c;

        @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
        public void _nr_setTrace(Trace trace) {
            try {
                this._nr_trace = trace;
            } catch (Exception e) {
            }
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ Void doInBackground(Void[] voidArr) {
            try {
                TraceMachine.enterMethod(this._nr_trace, "AdColony$a#doInBackground", null);
            } catch (NoSuchFieldError e) {
                TraceMachine.enterMethod(null, "AdColony$a#doInBackground", null);
            }
            Void voidA = a(voidArr);
            TraceMachine.exitMethod();
            TraceMachine.unloadTraceContext(this);
            return voidA;
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ void onPostExecute(Void r4) {
            try {
                TraceMachine.enterMethod(this._nr_trace, "AdColony$a#onPostExecute", null);
            } catch (NoSuchFieldError e) {
                TraceMachine.enterMethod(null, "AdColony$a#onPostExecute", null);
            }
            a(r4);
            TraceMachine.exitMethod();
        }

        a(Activity activity) {
            this.a = activity;
        }

        protected Void a(Void... voidArr) {
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.a);
                this.b = advertisingIdInfo.getId();
                this.c = advertisingIdInfo.isLimitAdTrackingEnabled();
            } catch (Exception e) {
                if (!Build.MANUFACTURER.equals("Amazon")) {
                    l.d.b((Object) "Advertising Id not available! Collecting Android Id instead of Advertising Id.");
                    e.printStackTrace();
                }
            } catch (NoClassDefFoundError e2) {
                l.d.b((Object) "Google Play Services SDK not installed! Collecting Android Id instead of Advertising Id.");
            } catch (NoSuchMethodError e3) {
                l.d.b((Object) "Google Play Services SDK is out of date! Collecting Android Id instead of Advertising Id.");
            }
            return null;
        }

        protected void a(Void r2) {
            g.a = this.b;
            g.b = this.c;
            AdColony.c = true;
        }
    }
}

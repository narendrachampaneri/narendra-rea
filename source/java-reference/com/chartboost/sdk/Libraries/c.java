package com.chartboost.sdk.Libraries;

import android.content.SharedPreferences;
import android.net.wifi.WifiManager;
import android.provider.Settings;
import com.chartboost.sdk.impl.ax;
import com.chartboost.sdk.impl.ba;
import com.chartboost.sdk.impl.cl;
import com.chartboost.sdk.impl.cm;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private static String a = null;
    private static String b = null;
    private static a c = a.PRELOAD;
    private static String d = null;

    private c() {
    }

    public enum a {
        PRELOAD(-1),
        LOADING(-1),
        UNKNOWN(-1),
        TRACKING_ENABLED(0),
        TRACKING_DISABLED(1);

        private int f;

        a(int i) {
            this.f = i;
        }

        public int a() {
            return this.f;
        }

        public boolean b() {
            return this.f != -1;
        }
    }

    public static void a() {
        synchronized (d.class) {
            if (c() == a.PRELOAD) {
                a(a.LOADING);
                Class<?> cls = null;
                try {
                    cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                } catch (ClassNotFoundException e) {
                }
                if (cls == null) {
                    g();
                } else {
                    ax.a().execute(new Runnable() { // from class: com.chartboost.sdk.Libraries.c.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                c.b(d.a());
                                ba.b();
                            } catch (VerifyError e2) {
                                c.g();
                            }
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g() {
        CBLogging.b("CBIdentity", "WARNING: It looks like you've forgotten to include the Google Play Services library in your project. Please review the SDK documentation for more details.");
        a(a.UNKNOWN);
        ba.b();
    }

    public static String b() {
        if (a == null) {
            a = b.b(h());
        }
        return a;
    }

    public static synchronized a c() {
        return c;
    }

    protected static synchronized void a(a aVar) {
        c = aVar;
    }

    public static synchronized String d() {
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void b(String str) {
        b = str;
    }

    private static byte[] h() {
        String strE = e();
        if (strE == null || "9774d56d682e549c".equals(strE)) {
            strE = i();
        }
        String strJ = j();
        String strD = d();
        cm cmVar = new cm();
        cmVar.put(AnalyticAttribute.UUID_ATTRIBUTE, strE);
        cmVar.put("macid", strJ);
        cmVar.put("gaid", strD);
        return new cl().a(cmVar);
    }

    public static String e() {
        return Settings.Secure.getString(com.chartboost.sdk.b.y().getContentResolver(), "android_id");
    }

    private static String i() {
        if (d == null) {
            SharedPreferences sharedPreferencesA = CBUtility.a();
            d = sharedPreferencesA.getString("cbUUID", null);
            if (d == null) {
                d = UUID.randomUUID().toString();
                SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
                editorEdit.putString("cbUUID", d);
                editorEdit.commit();
            }
        }
        return d;
    }

    private static String j() {
        return b.b(b.a(k()));
    }

    private static byte[] k() {
        try {
            String macAddress = ((WifiManager) com.chartboost.sdk.b.y().getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (macAddress == null || macAddress.equals("")) {
                return null;
            }
            String[] strArrSplit = macAddress.split(":");
            byte[] bArr = new byte[6];
            for (int i = 0; i < strArrSplit.length; i++) {
                bArr[i] = Integer.valueOf(Integer.parseInt(strArrSplit[i], 16)).byteValue();
            }
            return bArr;
        } catch (Exception e) {
            return null;
        }
    }
}

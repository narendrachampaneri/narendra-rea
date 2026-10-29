package com.chartboost.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.CBError;
import com.google.android.gms.drive.DriveFile;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public final class bb {
    private static bb c;
    private a a;
    private com.chartboost.sdk.Model.a b;

    public interface a {
        void a(com.chartboost.sdk.Model.a aVar, boolean z, String str, CBError.CBClickError cBClickError, com.chartboost.sdk.c.b bVar);
    }

    public static bb a(a aVar) {
        if (c == null) {
            c = new bb(aVar);
        }
        return c;
    }

    private bb(a aVar) {
        this.a = aVar;
    }

    public void a(com.chartboost.sdk.Model.a aVar, final String str, final Activity activity, final com.chartboost.sdk.c.b bVar) {
        this.b = aVar;
        try {
            String scheme = new URI(str).getScheme();
            if (scheme == null) {
                if (this.a != null) {
                    this.a.a(aVar, false, str, CBError.CBClickError.URI_INVALID, bVar);
                }
            } else if (!scheme.equals("http") && !scheme.equals("https")) {
                a(str, activity, bVar);
            } else {
                ax.a().execute(new Runnable() { // from class: com.chartboost.sdk.impl.bb.1
                    /* JADX WARN: Code duplicated, block: B:26:0x005e A[PHI: r1
                      0x005e: PHI (r1v1 java.lang.String) = (r1v0 java.lang.String), (r1v0 java.lang.String), (r1v3 java.lang.String) binds: [B:3:0x000a, B:16:0x0047, B:10:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
                    @Override // java.lang.Runnable
                    public void run() throws Throwable {
                        String str2;
                        String str3 = str;
                        if (ay.a().c()) {
                            HttpURLConnection httpURLConnection = null;
                            try {
                                try {
                                    HttpURLConnection httpURLConnection2 = (HttpURLConnection) HttpInstrumentation.openConnection(new URL(str).openConnection());
                                    try {
                                        httpURLConnection2.setInstanceFollowRedirects(false);
                                        httpURLConnection2.setConnectTimeout(30000);
                                        httpURLConnection2.setReadTimeout(30000);
                                        String headerField = httpURLConnection2.getHeaderField(HttpRequest.HEADER_LOCATION);
                                        if (headerField != null) {
                                            str3 = headerField;
                                        }
                                        if (httpURLConnection2 != null) {
                                            httpURLConnection2.disconnect();
                                            str2 = str3;
                                        } else {
                                            str2 = str3;
                                        }
                                    } catch (Exception e) {
                                        httpURLConnection = httpURLConnection2;
                                        e = e;
                                        CBLogging.b("CBURLOpener", "Exception raised while opening a HTTP Conection", e);
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                            str2 = str3;
                                        } else {
                                            str2 = str3;
                                        }
                                    } catch (Throwable th) {
                                        httpURLConnection = httpURLConnection2;
                                        th = th;
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                        }
                                        throw th;
                                    }
                                } catch (Exception e2) {
                                    e = e2;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } else {
                            str2 = str3;
                        }
                        a(str2);
                    }

                    public void a(final String str2) {
                        Runnable runnable = new Runnable() { // from class: com.chartboost.sdk.impl.bb.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                bb.this.a(str2, activity, bVar);
                            }
                        };
                        if (activity != null) {
                            activity.runOnUiThread(runnable);
                        } else {
                            CBUtility.e().post(runnable);
                        }
                    }
                });
            }
        } catch (URISyntaxException e) {
            if (this.a != null) {
                this.a.a(aVar, false, str, CBError.CBClickError.URI_INVALID, bVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, Context context, com.chartboost.sdk.c.b bVar) {
        String str2;
        if (this.b != null && this.b.a()) {
            this.b.b = com.chartboost.sdk.Model.a.b.NONE;
        }
        if (context == null) {
            context = com.chartboost.sdk.b.y();
        }
        if (context == null) {
            if (this.a != null) {
                this.a.a(this.b, false, str, CBError.CBClickError.NO_HOST_ACTIVITY, bVar);
                return;
            }
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            if (!(context instanceof Activity)) {
                intent.addFlags(DriveFile.MODE_READ_ONLY);
            }
            intent.setData(Uri.parse(str));
            context.startActivity(intent);
            str2 = str;
        } catch (Exception e) {
            if (str.startsWith("market://")) {
                try {
                    str = "http://market.android.com/" + str.substring(9);
                    Intent intent2 = new Intent("android.intent.action.VIEW");
                    if (!(context instanceof Activity)) {
                        intent2.addFlags(DriveFile.MODE_READ_ONLY);
                    }
                    intent2.setData(Uri.parse(str));
                    context.startActivity(intent2);
                    str2 = str;
                } catch (Exception e2) {
                    String str3 = str;
                    CBLogging.b("CBURLOpener", "Exception raised openeing an inavld playstore URL", e2);
                    if (this.a != null) {
                        this.a.a(this.b, false, str3, CBError.CBClickError.URI_UNRECOGNIZED, bVar);
                        return;
                    }
                    return;
                }
            } else {
                if (this.a != null) {
                    this.a.a(this.b, false, str, CBError.CBClickError.URI_UNRECOGNIZED, bVar);
                }
                str2 = str;
            }
        }
        if (this.a != null) {
            this.a.a(this.b, true, str2, null, bVar);
        }
    }

    public static boolean a(String str) {
        try {
            Context contextY = com.chartboost.sdk.b.y();
            Intent intent = new Intent("android.intent.action.VIEW");
            if (!(contextY instanceof Activity)) {
                intent.addFlags(DriveFile.MODE_READ_ONLY);
            }
            intent.setData(Uri.parse(str));
            return contextY.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
        } catch (Exception e) {
            CBLogging.b("CBURLOpener", "Cannot open URL", e);
            return false;
        }
    }
}

package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinLogger;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import io.fabric.sdk.android.services.network.UrlUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Locale;
import org.apache.http.HttpStatus;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class o {
    private final AppLovinSdkImpl a;
    private final AppLovinLogger b;

    o(AppLovinSdkImpl appLovinSdkImpl) {
        this.a = appLovinSdkImpl;
        this.b = appLovinSdkImpl.getLogger();
    }

    private int a(Throwable th) {
        if (th instanceof SocketTimeoutException) {
            return AppLovinErrorCodes.FETCH_AD_TIMEOUT;
        }
        if (!(th instanceof IOException)) {
            return th instanceof JSONException ? -104 : -1;
        }
        String message = th.getMessage();
        if (message == null || !message.toLowerCase(Locale.ENGLISH).contains("authentication challenge")) {
            return -100;
        }
        return HttpStatus.SC_UNAUTHORIZED;
    }

    private HttpURLConnection a(String str, String str2, int i) throws ProtocolException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) HttpInstrumentation.openConnection(new URL(str).openConnection());
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setConnectTimeout(i < 0 ? ((Integer) this.a.a(bw.t)).intValue() : i);
        if (i < 0) {
            i = ((Integer) this.a.a(bw.v)).intValue();
        }
        httpURLConnection.setReadTimeout(i);
        httpURLConnection.setDefaultUseCaches(false);
        httpURLConnection.setAllowUserInteraction(false);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }

    private static void a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception e) {
            }
        }
    }

    private void a(String str, int i, String str2, p pVar) throws JSONException {
        this.b.d("ConnectionManager", i + " received from from \"" + str2 + "\": " + str);
        if (i < 200 || i >= 300) {
            this.b.e("ConnectionManager", i + " error received from \"" + str2 + "\"");
            pVar.a(i);
            return;
        }
        JSONObject jSONObject = new JSONObject();
        if (i != 204 && str != null && str.length() > 2) {
            jSONObject = JSONObjectInstrumentation.init(str);
        }
        pVar.a(jSONObject, i);
    }

    private void a(String str, String str2, int i, long j) {
        this.b.i("ConnectionManager", "Successful " + str + " returned " + i + " in " + ((System.currentTimeMillis() - j) / 1000.0f) + " s over " + q.a(this.a) + " to \"" + str2 + "\"");
    }

    private void a(String str, String str2, int i, long j, Throwable th) {
        this.b.e("ConnectionManager", "Failed " + str + " returned " + i + " in " + ((System.currentTimeMillis() - j) / 1000.0f) + " s over " + q.a(this.a) + " to \"" + str2 + "\"", th);
    }

    private static void a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
            }
        }
    }

    void a(String str, int i, p pVar) throws Throwable {
        a(str, "GET", i, null, true, pVar);
    }

    void a(String str, int i, JSONObject jSONObject, boolean z, p pVar) throws Throwable {
        a(str, "POST", i, jSONObject, z, pVar);
    }

    void a(String str, int i, boolean z, p pVar) throws Throwable {
        a(str, "GET", i, null, z, pVar);
    }

    /* JADX WARN: Code duplicated, block: B:48:0x016c A[Catch: all -> 0x019d, TRY_ENTER, TryCatch #5 {all -> 0x019d, blocks: (B:23:0x00b9, B:25:0x00bf, B:26:0x00c3, B:34:0x013c, B:27:0x0116, B:29:0x011c, B:31:0x0123, B:48:0x016c, B:49:0x0170, B:36:0x0143, B:37:0x014f), top: B:72:0x0087 }] */
    void a(String str, String str2, int i, JSONObject jSONObject, boolean z, p pVar) throws Throwable {
        String strReplace;
        HttpURLConnection httpURLConnectionA;
        Throwable th;
        InputStream inputStream;
        if (str == null) {
            throw new IllegalArgumentException("No endpoint specified");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("No method specified");
        }
        if (pVar == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        if (!str.toLowerCase().startsWith("http")) {
            this.b.userError("ConnectionManager", "Requested postback submission to non HTTP endpoint " + str + "; skipping...");
            pVar.a(AppLovinErrorCodes.INVALID_URL);
            return;
        }
        if (!((Boolean) this.a.a(bw.bk)).booleanValue() || str.contains("https://")) {
            strReplace = str;
        } else {
            this.a.getLogger().w("ConnectionManager", "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting...");
            strReplace = str.replace("http://", "https://");
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        InputStream inputStream2 = null;
        int iA = -1;
        try {
            try {
                this.b.i("ConnectionManager", "Sending " + str2 + " request to \"" + strReplace + "\"...");
                httpURLConnectionA = a(strReplace, str2, i);
                if (jSONObject != null) {
                    try {
                        String string = !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
                        this.b.d("ConnectionManager", "Request to \"" + strReplace + "\" is " + string);
                        httpURLConnectionA.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                        httpURLConnectionA.setDoOutput(true);
                        httpURLConnectionA.setFixedLengthStreamingMode(string.getBytes(Charset.forName("UTF-8")).length);
                        PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(httpURLConnectionA.getOutputStream(), UrlUtils.UTF8));
                        printWriter.print(string);
                        printWriter.close();
                    } catch (Throwable th2) {
                        th = th2;
                        if (iA == 0) {
                            iA = a(th);
                        }
                        a(str2, strReplace, iA, jCurrentTimeMillis, th);
                        pVar.a(iA);
                        a(inputStream2);
                        a(httpURLConnectionA);
                        return;
                    }
                }
                try {
                    iA = httpURLConnectionA.getResponseCode();
                    if (iA > 0) {
                        a(str2, strReplace, iA, jCurrentTimeMillis);
                        if (z) {
                            inputStream = httpURLConnectionA.getInputStream();
                            try {
                                try {
                                    a(q.a(inputStream), httpURLConnectionA.getResponseCode(), strReplace, pVar);
                                } catch (MalformedURLException e) {
                                    if (z) {
                                        pVar.a(-901);
                                    } else {
                                        pVar.a(new JSONObject(), -901);
                                    }
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                inputStream2 = inputStream;
                                if (iA == 0) {
                                    iA = a(th);
                                }
                                a(str2, strReplace, iA, jCurrentTimeMillis, th);
                                pVar.a(iA);
                                a(inputStream2);
                                a(httpURLConnectionA);
                                return;
                            }
                        } else {
                            pVar.a(new JSONObject(), iA);
                            inputStream = null;
                        }
                    } else {
                        a(str2, strReplace, iA, jCurrentTimeMillis, (Throwable) null);
                        pVar.a(iA);
                        inputStream = null;
                    }
                } catch (MalformedURLException e2) {
                    inputStream = null;
                }
                a(inputStream);
                a(httpURLConnectionA);
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            httpURLConnectionA = null;
            th = th5;
        }
    }

    void a(String str, JSONObject jSONObject, p pVar) throws Throwable {
        a(str, "POST", -1, jSONObject, true, pVar);
    }
}

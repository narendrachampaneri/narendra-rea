package com.inmobi.monetization.internal.carb;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.http.Headers;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.data.DeviceInfo;
import com.inmobi.commons.internal.Base64;
import com.inmobi.commons.internal.EncryptionUtils;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.inmobi.commons.uid.UID;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.monetization.internal.configs.PkInitilaizer;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import com.newrelic.agent.android.instrumentation.JSONArrayInstrumentation;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class CARB {
    public static final String LOGGING_TAG = "[InMobi]-[CARB]-4.5.3";
    private static SharedPreferences j;
    private static Thread l;
    private static Thread n;
    byte[] a;
    byte[] b;
    private byte[] t;
    private byte[] u;
    private byte[] v;
    private byte[] w;
    private static CARB g = new CARB();
    private static AtomicBoolean k = new AtomicBoolean(false);
    private static AtomicBoolean m = new AtomicBoolean(false);
    private static String o = "";
    private static String p = "";
    private static String q = "";
    private String h = "carb_last_req_time";
    private String i = "carbpreference";
    private final int r = 8;
    private final int s = 16;
    String c = "";
    String d = "";
    String e = "";
    CarbCallback f = null;
    private ArrayList<CarbInfo> x = new ArrayList<>();

    public interface CarbCallback {
        void postFailed();

        void postSuccess();
    }

    public static CARB getInstance() {
        return g;
    }

    private CARB() {
        CarbInitializer.initialize();
        j = InternalSDKUtil.getContext().getSharedPreferences(this.i, 0);
    }

    public synchronized void startCarb() {
        if (!CarbInitializer.getConfigParams().isCarbEnabled()) {
            Log.internal(LOGGING_TAG, "CARB feature disabled.");
        } else if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
            long j2 = j.getLong(this.h, 0L);
            if (0 == j2) {
                if (k.get()) {
                    Log.internal(LOGGING_TAG, "First CARB request is in progress");
                } else {
                    Log.internal(LOGGING_TAG, "Requesting CARB first time");
                    b();
                }
            } else {
                if ((j2 + CarbInitializer.getConfigParams().getRetreiveFrequncy()) - System.currentTimeMillis() <= 0) {
                    if (k.get()) {
                        Log.internal(LOGGING_TAG, "CARB request is in progress");
                    } else {
                        Log.internal(LOGGING_TAG, "CARB request interval reached. Requesting again");
                        b();
                    }
                } else {
                    Log.internal(LOGGING_TAG, "CARB request interval not reached. NO request");
                }
            }
        }
    }

    private synchronized void b() {
        this.x.clear();
        if (k.compareAndSet(false, true)) {
            l = new Thread(new Runnable() { // from class: com.inmobi.monetization.internal.carb.CARB.1
                int a = 1;

                @Override // java.lang.Runnable
                public void run() {
                    a();
                }

                private void a() {
                    CARB.this.c();
                    CARB.this.t = EncryptionUtils.keag();
                    CARB.this.c = PkInitilaizer.getConfigParams().getExponent();
                    CARB.this.d = PkInitilaizer.getConfigParams().getModulus();
                    CARB.this.e = PkInitilaizer.getConfigParams().getVersion();
                    if (CARB.this.c.equals("") || CARB.this.d.equals("") || CARB.this.e.equals("")) {
                        Log.internal(CARB.LOGGING_TAG, "Exception retreiving Carb info due to key problem");
                        CARB.this.e();
                        return;
                    }
                    String strB = b();
                    Log.internal(CARB.LOGGING_TAG, "Unencrypted postbody :" + strB);
                    String strA = CARB.this.a(strB, CARB.this.t, CARB.this.u, CARB.this.a, CARB.this.d, CARB.this.c);
                    if (strA == null) {
                        CARB.this.e();
                        return;
                    }
                    if (a(strA) != 200) {
                        int retryCount = CarbInitializer.getConfigParams().getRetryCount();
                        long retryInterval = CarbInitializer.getConfigParams().getRetryInterval() * 1000;
                        if (this.a <= retryCount) {
                            try {
                                Thread.sleep(((long) this.a) * retryInterval);
                            } catch (InterruptedException e) {
                            }
                            Log.internal(CARB.LOGGING_TAG, "Get carb info Failed. Retrying count: " + this.a);
                            this.a++;
                            if (Looper.myLooper() == null) {
                                Looper.prepare();
                            }
                            new Handler().postDelayed(this, 0L);
                            Looper.loop();
                            Looper.myLooper().quit();
                            return;
                        }
                        this.a = 0;
                        SharedPreferences.Editor editorEdit = CARB.j.edit();
                        editorEdit.putLong(CARB.this.h, System.currentTimeMillis());
                        editorEdit.commit();
                        CARB.this.f();
                    }
                }

                private int a(String str) throws Throwable {
                    BufferedWriter bufferedWriter;
                    String str2 = null;
                    int i = 0;
                    if (!InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
                        return -1;
                    }
                    try {
                        try {
                            try {
                                URL url = new URL(CarbInitializer.getConfigParams().getCarbEndpoint());
                                HttpURLConnection httpURLConnection = (HttpURLConnection) HttpInstrumentation.openConnection(url.openConnection());
                                httpURLConnection.setRequestProperty("User-Agent", InternalSDKUtil.getUserAgent());
                                long timeoutInterval = CarbInitializer.getConfigParams().getTimeoutInterval() * 1000;
                                httpURLConnection.setConnectTimeout((int) timeoutInterval);
                                httpURLConnection.setReadTimeout((int) timeoutInterval);
                                httpURLConnection.setRequestProperty("user-agent", DeviceInfo.getPhoneDefaultUserAgent());
                                httpURLConnection.setUseCaches(false);
                                httpURLConnection.setDoOutput(true);
                                httpURLConnection.setDoInput(true);
                                httpURLConnection.setRequestMethod("POST");
                                httpURLConnection.setRequestProperty(Headers.CONTENT_TYPE, "application/x-www-form-urlencoded");
                                httpURLConnection.setRequestProperty("Content-Length", Integer.toString(str.length()));
                                try {
                                    InetAddress.getByName(url.getHost());
                                    try {
                                        BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(httpURLConnection.getOutputStream()));
                                        try {
                                            bufferedWriter2.write(str);
                                            if (bufferedWriter2 != null) {
                                                try {
                                                    bufferedWriter2.close();
                                                } catch (IOException e) {
                                                    Log.internal(Constants.LOG_TAG, "Exception closing resource: " + bufferedWriter2, e);
                                                }
                                            }
                                            Log.internal(CARB.LOGGING_TAG, "Get CARB list status: " + httpURLConnection.getResponseCode());
                                            if (httpURLConnection.getResponseCode() == 200) {
                                                SharedPreferences.Editor editorEdit = CARB.j.edit();
                                                editorEdit.putLong(CARB.this.h, System.currentTimeMillis());
                                                editorEdit.commit();
                                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"));
                                                StringBuilder sb = new StringBuilder();
                                                while (true) {
                                                    String line = bufferedReader.readLine();
                                                    if (line == null) {
                                                        break;
                                                    }
                                                    sb.append(line).append("\n");
                                                }
                                                String string = sb.toString();
                                                Log.internal(CARB.LOGGING_TAG, "RESPONSE: " + string);
                                                try {
                                                    str2 = new String(EncryptionUtils.DeAe(Base64.decode(string.getBytes(), 0), CARB.this.t, CARB.this.u));
                                                } catch (Exception e2) {
                                                    Log.internal(CARB.LOGGING_TAG, "Exception in carb ", e2);
                                                }
                                                if (str2 == null) {
                                                    Log.internal(CARB.LOGGING_TAG, "Unable to decrypt response or response not encrypted");
                                                    CARB.this.e();
                                                    return -1;
                                                }
                                                Log.internal(CARB.LOGGING_TAG, "Get list after decryption: " + str2);
                                                JSONObject jSONObjectInit = JSONObjectInstrumentation.init(str2);
                                                if (jSONObjectInit.getBoolean("success")) {
                                                    JSONObject jSONObject = jSONObjectInit.getJSONObject(IMBrowserActivity.EXPANDDATA);
                                                    String string2 = jSONObject.getString("req_id");
                                                    JSONArray jSONArray = jSONObject.getJSONArray("p_apps");
                                                    if (jSONArray.length() == 0) {
                                                        CARB.this.e();
                                                        return -1;
                                                    }
                                                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                                                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                                                        try {
                                                            String string3 = jSONObject2.getString("bid");
                                                            String string4 = jSONObject2.getString("inm_id");
                                                            if (string4 != null && !"".equals(string4)) {
                                                                CarbInfo carbInfo = new CarbInfo();
                                                                carbInfo.setBid(string3);
                                                                carbInfo.setInmId(string4);
                                                                if (!CARB.this.a(string3)) {
                                                                    CARB.this.x.add(carbInfo);
                                                                }
                                                            }
                                                        } catch (JSONException e3) {
                                                            Log.internal(CARB.LOGGING_TAG, "BID or INM missing");
                                                        }
                                                        i = i2;
                                                    }
                                                    CARB.this.a(CARB.this.x, string2, i + 1);
                                                }
                                                CARB.this.e();
                                                return 200;
                                            }
                                            return httpURLConnection.getResponseCode();
                                        } catch (Throwable th) {
                                            th = th;
                                            bufferedWriter = bufferedWriter2;
                                            if (bufferedWriter != null) {
                                                try {
                                                    bufferedWriter.close();
                                                } catch (IOException e4) {
                                                    Log.internal(Constants.LOG_TAG, "Exception closing resource: " + bufferedWriter, e4);
                                                }
                                            }
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        bufferedWriter = null;
                                    }
                                } catch (UnknownHostException e5) {
                                    throw new MalformedURLException("Malformed URL: " + url.toString());
                                }
                            } catch (IOException e6) {
                                return -1;
                            }
                        } catch (JSONException e7) {
                            Log.internal(CARB.LOGGING_TAG, "Invalid JSON response");
                            return -1;
                        }
                    } catch (MalformedURLException e8) {
                        Log.internal(CARB.LOGGING_TAG, "Malformed URL");
                        return -1;
                    }
                }

                private String b() {
                    StringBuffer stringBuffer = new StringBuffer();
                    CARB.fillCarbInfo();
                    stringBuffer.append("mk-siteid=");
                    stringBuffer.append(CARB.getURLEncoded(InMobi.getAppId()));
                    String str = "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(InternalSDKUtil.INMOBI_SDK_RELEASE_VERSION) + "-" + InternalSDKUtil.INMOBI_SDK_RELEASE_DATE;
                    stringBuffer.append("&mk-version=");
                    stringBuffer.append(CARB.getURLEncoded(str));
                    String json = UID.getInstance().getJSON(CarbInitializer.getConfigParams().getDeviceIdMaskMap());
                    stringBuffer.append("&u-id-map=");
                    stringBuffer.append(CARB.getURLEncoded(json));
                    stringBuffer.append("&u-appbid=");
                    stringBuffer.append(CARB.getURLEncoded(CARB.getAppBid()));
                    stringBuffer.append("&u-appver=");
                    stringBuffer.append(CARB.getURLEncoded(CARB.getAppVer()));
                    stringBuffer.append("&h-user-agent=");
                    stringBuffer.append(CARB.getURLEncoded(DeviceInfo.getPhoneDefaultUserAgent()));
                    stringBuffer.append("&d-localization=");
                    stringBuffer.append(CARB.getURLEncoded(DeviceInfo.getLocalization()));
                    stringBuffer.append("&d-nettype=");
                    stringBuffer.append(CARB.getURLEncoded(DeviceInfo.getNetworkType()));
                    WifiInfo connectedWifiInfo = null;
                    try {
                        connectedWifiInfo = IceDataCollector.getConnectedWifiInfo(InternalSDKUtil.getContext());
                    } catch (Exception e) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "No wifi permissions set, unable to send wifi data");
                    }
                    if (connectedWifiInfo != null) {
                        stringBuffer.append("&c-ap-bssid=");
                        stringBuffer.append(Long.toString(connectedWifiInfo.bssid));
                    }
                    return stringBuffer.toString();
                }
            });
            l.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, String str2, String str3) {
        String str4 = "sm=" + EncryptionUtils.SeMeGe(str, bArr, bArr2, bArr3, str2, str3) + "&sn=" + this.e;
        Log.internal(LOGGING_TAG, str4);
        return str4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            this.a = new byte[8];
            SecureRandom secureRandom = new SecureRandom();
            secureRandom.nextBytes(this.a);
            this.u = new byte[16];
            secureRandom.nextBytes(this.u);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(final ArrayList<CarbInfo> arrayList, final String str, final int i) {
        if (m.compareAndSet(false, true)) {
            m.set(true);
            n = new Thread(new Runnable() { // from class: com.inmobi.monetization.internal.carb.CARB.2
                int a = 1;

                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    CARB.this.d();
                    CARB.this.v = EncryptionUtils.keag();
                    CARB.this.c = PkInitilaizer.getConfigParams().getExponent();
                    CARB.this.d = PkInitilaizer.getConfigParams().getModulus();
                    CARB.this.e = PkInitilaizer.getConfigParams().getVersion();
                    if (CARB.this.c.equals("") || CARB.this.d.equals("") || CARB.this.e.equals("")) {
                        Log.internal(CARB.LOGGING_TAG, "Exception retreiving Carb info due to key problem");
                        CARB.this.f();
                        return;
                    }
                    String strA = a(arrayList, str, i);
                    Log.internal(CARB.LOGGING_TAG, "PostBody Before encryption: " + strA);
                    String strA2 = CARB.this.a(strA, CARB.this.v, CARB.this.w, CARB.this.b, CARB.this.d, CARB.this.c);
                    if (strA2 == null) {
                        Log.internal(CARB.LOGGING_TAG, "POST message cannot be encrypted");
                        CARB.this.e();
                        return;
                    }
                    int iA = a(strA2);
                    Log.internal(CARB.LOGGING_TAG, "Post Response to CARB server: " + iA);
                    if (200 == iA) {
                        if (CARB.this.f != null) {
                            CARB.this.f.postSuccess();
                        }
                        CARB.this.f();
                        return;
                    }
                    if (CARB.this.f != null) {
                        CARB.this.f.postFailed();
                    }
                    int retryCount = CarbInitializer.getConfigParams().getRetryCount();
                    long retryInterval = CarbInitializer.getConfigParams().getRetryInterval() * 1000;
                    if (this.a <= retryCount) {
                        try {
                            Thread.sleep(((long) this.a) * retryInterval);
                        } catch (InterruptedException e) {
                        }
                        Log.internal(CARB.LOGGING_TAG, "POSt to carb failed. Retrying count: " + this.a);
                        this.a++;
                        if (Looper.myLooper() == null) {
                            Looper.prepare();
                        }
                        new Handler().postDelayed(this, 0L);
                        Looper.loop();
                        Looper.myLooper().quit();
                        return;
                    }
                    this.a = 0;
                    CARB.this.f();
                }

                private int a(String str2) throws Throwable {
                    BufferedWriter bufferedWriter;
                    if (!InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
                        return -1;
                    }
                    try {
                        try {
                            URL url = new URL(CarbInitializer.getConfigParams().getCarbPostpoint());
                            HttpURLConnection httpURLConnection = (HttpURLConnection) HttpInstrumentation.openConnection(url.openConnection());
                            httpURLConnection.setRequestProperty("User-Agent", InternalSDKUtil.getUserAgent());
                            long timeoutInterval = CarbInitializer.getConfigParams().getTimeoutInterval() * 1000;
                            httpURLConnection.setConnectTimeout((int) timeoutInterval);
                            httpURLConnection.setReadTimeout((int) timeoutInterval);
                            httpURLConnection.setRequestProperty("user-agent", DeviceInfo.getPhoneDefaultUserAgent());
                            httpURLConnection.setUseCaches(false);
                            httpURLConnection.setDoOutput(true);
                            httpURLConnection.setDoInput(true);
                            httpURLConnection.setRequestMethod("POST");
                            httpURLConnection.setRequestProperty(Headers.CONTENT_TYPE, "application/x-www-form-urlencoded");
                            httpURLConnection.setRequestProperty("Content-Length", Integer.toString(str2.length()));
                            try {
                                InetAddress.getByName(url.getHost());
                                try {
                                    BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(httpURLConnection.getOutputStream()));
                                    try {
                                        bufferedWriter2.write(str2);
                                        if (bufferedWriter2 != null) {
                                            try {
                                                bufferedWriter2.close();
                                            } catch (IOException e) {
                                                Log.internal(Constants.LOG_TAG, "Exception closing resource: " + bufferedWriter2, e);
                                            }
                                        }
                                        if (httpURLConnection.getResponseCode() == 200) {
                                            return 200;
                                        }
                                        return httpURLConnection.getResponseCode();
                                    } catch (Throwable th) {
                                        th = th;
                                        bufferedWriter = bufferedWriter2;
                                        if (bufferedWriter != null) {
                                            try {
                                                bufferedWriter.close();
                                            } catch (IOException e2) {
                                                Log.internal(Constants.LOG_TAG, "Exception closing resource: " + bufferedWriter, e2);
                                            }
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    bufferedWriter = null;
                                }
                            } catch (UnknownHostException e3) {
                                throw new MalformedURLException("Malformed URL: " + url.toString());
                            }
                        } catch (IOException e4) {
                            return -1;
                        }
                    } catch (MalformedURLException e5) {
                        Log.internal(CARB.LOGGING_TAG, "Malformed URL");
                        return -1;
                    }
                }

                private String a(ArrayList<CarbInfo> arrayList2, String str2, int i2) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("req_id=");
                    stringBuffer.append(CARB.getURLEncoded(str2));
                    JSONArray jSONArray = new JSONArray();
                    int size = arrayList2.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        jSONArray.put(arrayList2.get(i3).getInmId());
                    }
                    stringBuffer.append("&p_a_apps=");
                    stringBuffer.append(CARB.getURLEncoded(!(jSONArray instanceof JSONArray) ? jSONArray.toString() : JSONArrayInstrumentation.toString(jSONArray)));
                    stringBuffer.append("&i_till=");
                    stringBuffer.append(i2);
                    String json = UID.getInstance().getJSON(CarbInitializer.getConfigParams().getDeviceIdMaskMap());
                    stringBuffer.append("&u-id-map=");
                    stringBuffer.append(CARB.getURLEncoded(json));
                    return stringBuffer.toString();
                }
            });
            n.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            this.b = new byte[8];
            SecureRandom secureRandom = new SecureRandom();
            secureRandom.nextBytes(this.b);
            this.w = new byte[16];
            secureRandom.nextBytes(this.w);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (k != null) {
            k.set(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (m != null) {
            m.set(false);
        }
    }

    public static String getURLEncoded(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Exception e) {
            return "";
        }
    }

    public static void fillCarbInfo() {
        try {
            Context context = InternalSDKUtil.getContext();
            PackageManager packageManager = context.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                setAppBId(applicationInfo.packageName);
                setAppDisplayName(applicationInfo.loadLabel(packageManager).toString());
            }
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 128);
            String str = null;
            if (packageInfo != null && ((str = packageInfo.versionName) == null || str.equals(""))) {
                str = packageInfo.versionCode + "";
            }
            if (str != null && !str.equals("")) {
                setAppVer(str);
            }
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to fill CarbInfo", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        try {
            InternalSDKUtil.getContext().getPackageManager().getPackageInfo(str, 256);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static void setAppBId(String str) {
        o = str;
    }

    public static String getAppBid() {
        return o;
    }

    public static void setAppVer(String str) {
        p = str;
    }

    public static String getAppVer() {
        return p;
    }

    public static void setAppDisplayName(String str) {
        q = str;
    }

    public static String getAppDisplayName() {
        return q;
    }

    public static Object getCountryISO(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        return telephonyManager.getNetworkCountryIso().equals("") ? context.getResources().getConfiguration().locale.getISO3Country() : telephonyManager.getNetworkCountryIso();
    }

    public void setCallBack(CarbCallback carbCallback) {
        this.f = carbCallback;
    }

    public static String getURLDecoded(String str, String str2) {
        try {
            return URLDecoder.decode(str, str2);
        } catch (Exception e) {
            return "";
        }
    }
}

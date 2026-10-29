package com.vungle.publisher;

import android.text.TextUtils;
import com.vungle.log.Logger;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.net.http.HttpResponse;
import com.vungle.publisher.net.http.HttpTransaction;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.inject.Inject;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class ct {
    private static final Pattern a = Pattern.compile("\\bcharset=([\\w\\-]+)\\b");

    @Inject
    public ScheduledPriorityExecutor f;

    @Inject
    public LoggedException.Factory g;

    public void c(HttpTransaction httpTransaction, HttpResponse httpResponse) {
        try {
            if (a(httpResponse.b)) {
                try {
                    try {
                        a(httpTransaction, httpResponse);
                        return;
                    } catch (IOException e) {
                        this.g.b(Logger.NETWORK_TAG, "IOException while handling response: " + httpResponse, e);
                        httpResponse.b = SettingsJsonConstants.ANALYTICS_FLUSH_INTERVAL_SECS_DEFAULT;
                    }
                } catch (SocketTimeoutException e2) {
                    Logger.d(Logger.NETWORK_TAG, e2);
                    httpResponse.b = 603;
                } catch (JSONException e3) {
                    this.g.b(Logger.NETWORK_TAG, "JSONException while handling response: " + httpResponse, e3);
                    httpResponse.b = 604;
                }
            }
            d(httpTransaction, httpResponse);
        } catch (Exception e4) {
            a(httpTransaction, httpResponse, e4);
        }
    }

    public void d(HttpTransaction httpTransaction, HttpResponse httpResponse) {
        b(httpTransaction, httpResponse);
    }

    public void a(HttpTransaction httpTransaction, HttpResponse httpResponse) throws JSONException, IOException {
    }

    public void a(HttpTransaction httpTransaction, HttpResponse httpResponse, Exception exc) {
        this.g.a(Logger.NETWORK_TAG, "error while handling response: " + httpResponse, exc);
        b(httpTransaction, httpResponse);
    }

    public void b(HttpTransaction httpTransaction, HttpResponse httpResponse) {
        Logger.w(Logger.NETWORK_TAG, httpTransaction.a + " failed permanently with response code " + httpResponse.b);
    }

    public static boolean a(int i) {
        return i == 200;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00cd  */
    public final String a(HttpURLConnection httpURLConnection) throws Throwable {
        String strGroup;
        InputStreamReader inputStreamReader = null;
        try {
            int responseCode = httpURLConnection.getResponseCode();
            String contentType = httpURLConnection.getContentType();
            if (contentType != null) {
                Matcher matcher = a.matcher(contentType);
                if (matcher.find()) {
                    strGroup = matcher.group(1);
                } else {
                    strGroup = null;
                }
            } else {
                strGroup = null;
            }
            Logger.v(Logger.NETWORK_TAG, "response character set: " + strGroup);
            InputStream inputStream = responseCode / 100 <= 3 ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream();
            if (TextUtils.isEmpty(strGroup)) {
                strGroup = "ISO-8859-1";
            }
            InputStreamReader inputStreamReader2 = new InputStreamReader(inputStream, strGroup);
            try {
                StringBuilder sb = new StringBuilder();
                char[] cArr = new char[8192];
                while (true) {
                    int i = inputStreamReader2.read(cArr);
                    if (i <= 0) {
                        break;
                    }
                    sb.append(cArr, 0, i);
                }
                String string = sb.toString();
                Logger.d(Logger.NETWORK_TAG, "response body: " + string);
                try {
                    inputStreamReader2.close();
                } catch (IOException e) {
                    this.g.b(Logger.NETWORK_TAG, "error closing input stream " + httpURLConnection.getURL(), e);
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return string;
            } catch (Throwable th) {
                th = th;
                inputStreamReader = inputStreamReader2;
                if (inputStreamReader != null) {
                    try {
                        inputStreamReader.close();
                    } catch (IOException e2) {
                        this.g.b(Logger.NETWORK_TAG, "error closing input stream " + httpURLConnection.getURL(), e2);
                    }
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}

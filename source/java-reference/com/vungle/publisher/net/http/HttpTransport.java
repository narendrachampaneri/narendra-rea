package com.vungle.publisher.net.http;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.vungle.log.Logger;
import com.vungle.publisher.dc;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.zip.GZIPOutputStream;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.apache.http.HttpVersion;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class HttpTransport {

    @Inject
    HttpURLConnectionFactory a;

    @Inject
    HttpResponse.Factory b;

    @Inject
    HttpRequestChainElement.Factory c;

    static {
        if (Build.VERSION.SDK_INT < 8) {
            System.setProperty("http.keepAlive", "false");
        }
    }

    @Inject
    HttpTransport() {
    }

    public final HttpResponse a(HttpRequest httpRequest) {
        IOException iOException;
        HttpURLConnection httpURLConnection;
        SocketTimeoutException socketTimeoutException;
        HttpURLConnection httpURLConnection2;
        MalformedURLException malformedURLException;
        HttpURLConnection httpURLConnection3;
        ConnectException connectException;
        HttpURLConnection httpURLConnection4;
        HttpURLConnection httpURLConnection5;
        int responseCode = -1;
        ArrayList arrayList = new ArrayList();
        try {
            HttpRequest.a aVarB = httpRequest.b();
            String str = httpRequest.b;
            int i = 0;
            HttpURLConnection httpURLConnection6 = null;
            while (true) {
                if (i >= 5) {
                    httpURLConnection5 = httpURLConnection6;
                    break;
                }
                try {
                    Logger.d(Logger.NETWORK_TAG, aVarB + " " + str);
                    HttpURLConnection httpURLConnectionA = HttpURLConnectionFactory.a(str);
                    try {
                        httpURLConnectionA.setConnectTimeout(10000);
                        httpURLConnectionA.setInstanceFollowRedirects(false);
                        httpURLConnectionA.setReadTimeout(10000);
                        httpURLConnectionA.setUseCaches(false);
                        if (aVarB != null) {
                            httpURLConnectionA.setRequestMethod(aVarB.toString());
                        }
                        a(httpURLConnectionA, httpRequest);
                        String str2 = httpRequest.d;
                        if (!TextUtils.isEmpty(str2)) {
                            Logger.d(Logger.NETWORK_TAG, "request body: " + str2);
                            byte[] bytes = str2.getBytes();
                            if (io.fabric.sdk.android.services.network.HttpRequest.ENCODING_GZIP.equals(httpRequest.c == null ? null : httpRequest.c.getString("Content-Encoding"))) {
                                int length = bytes.length;
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                                gZIPOutputStream.write(bytes);
                                gZIPOutputStream.close();
                                bytes = byteArrayOutputStream.toByteArray();
                                Logger.v(Logger.NETWORK_TAG, "gzipped request from " + length + " bytes down to " + bytes.length + " bytes");
                            }
                            httpURLConnectionA.setDoOutput(true);
                            httpURLConnectionA.setFixedLengthStreamingMode(bytes.length);
                            httpURLConnectionA.getOutputStream().write(bytes);
                        }
                        responseCode = httpURLConnectionA.getResponseCode();
                        if (!a(i, responseCode)) {
                            if (!(responseCode == 200)) {
                                Logger.i(Logger.NETWORK_TAG, a(aVarB, i, responseCode, httpURLConnectionA.getContentType(), httpRequest.b, str, null));
                                httpURLConnection5 = httpURLConnectionA;
                                break;
                            }
                            Logger.d(Logger.NETWORK_TAG, a(aVarB, i, responseCode, httpURLConnectionA.getContentType(), httpRequest.b, str, null));
                            httpURLConnection5 = httpURLConnectionA;
                            break;
                        }
                        String headerField = httpURLConnectionA.getHeaderField(io.fabric.sdk.android.services.network.HttpRequest.HEADER_LOCATION);
                        Logger.i(Logger.NETWORK_TAG, a(aVarB, i, responseCode, httpURLConnectionA.getContentType(), httpRequest.b, str, headerField));
                        Long lValueOf = httpURLConnectionA.getHeaderFieldDate("Date", -1L) == -1 ? null : Long.valueOf(httpURLConnectionA.getHeaderFieldDate("Date", -1L));
                        HttpRequestChainElement httpRequestChainElement = this.c.a.get();
                        httpRequestChainElement.a = str;
                        httpRequestChainElement.b = responseCode;
                        httpRequestChainElement.d = headerField;
                        httpRequestChainElement.c = lValueOf;
                        arrayList.add(httpRequestChainElement);
                        i++;
                        str = headerField;
                        httpURLConnection6 = httpURLConnectionA;
                    } catch (ConnectException e) {
                        connectException = e;
                        httpURLConnection4 = httpURLConnectionA;
                        Logger.d(Logger.NETWORK_TAG, dc.a(connectException));
                        responseCode = 602;
                        httpURLConnection5 = httpURLConnection4;
                    } catch (MalformedURLException e2) {
                        malformedURLException = e2;
                        httpURLConnection3 = httpURLConnectionA;
                        Logger.w(Logger.NETWORK_TAG, dc.a(malformedURLException));
                        responseCode = 601;
                        httpURLConnection5 = httpURLConnection3;
                    } catch (SocketTimeoutException e3) {
                        socketTimeoutException = e3;
                        httpURLConnection2 = httpURLConnectionA;
                        Logger.d(Logger.NETWORK_TAG, dc.a(socketTimeoutException));
                        responseCode = 603;
                        httpURLConnection5 = httpURLConnection2;
                    } catch (IOException e4) {
                        iOException = e4;
                        httpURLConnection = httpURLConnectionA;
                        Logger.w(Logger.NETWORK_TAG, dc.a(iOException));
                        responseCode = SettingsJsonConstants.ANALYTICS_FLUSH_INTERVAL_SECS_DEFAULT;
                        httpURLConnection5 = httpURLConnection;
                    }
                } catch (ConnectException e5) {
                    connectException = e5;
                    httpURLConnection4 = httpURLConnection6;
                } catch (MalformedURLException e6) {
                    malformedURLException = e6;
                    httpURLConnection3 = httpURLConnection6;
                } catch (SocketTimeoutException e7) {
                    socketTimeoutException = e7;
                    httpURLConnection2 = httpURLConnection6;
                } catch (IOException e8) {
                    iOException = e8;
                    httpURLConnection = httpURLConnection6;
                }
            }
        } catch (ConnectException e9) {
            connectException = e9;
            httpURLConnection4 = null;
        } catch (MalformedURLException e10) {
            malformedURLException = e10;
            httpURLConnection3 = null;
        } catch (SocketTimeoutException e11) {
            socketTimeoutException = e11;
            httpURLConnection2 = null;
        } catch (IOException e12) {
            iOException = e12;
            httpURLConnection = null;
        }
        HttpResponse httpResponse = this.b.a.get();
        httpResponse.a = httpURLConnection5;
        httpResponse.c = arrayList;
        httpResponse.b = responseCode;
        httpResponse.d = httpURLConnection5 == null ? null : String.valueOf(httpURLConnection5.getURL());
        return httpResponse;
    }

    private static void a(HttpURLConnection httpURLConnection, HttpRequest httpRequest) {
        Bundle bundle = httpRequest.c;
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                String string = bundle.getString(str);
                if (string == null) {
                    for (String str2 : bundle.getStringArray(str)) {
                        Logger.v(Logger.NETWORK_TAG, "request header: " + str + ": " + str2);
                        httpURLConnection.addRequestProperty(str, str2);
                    }
                } else {
                    Logger.v(Logger.NETWORK_TAG, "request header: " + str + ": " + string);
                    httpURLConnection.addRequestProperty(str, string);
                }
            }
        }
    }

    private static boolean a(int i, int i2) {
        if (i <= 0) {
            if (!(i2 == 301 || i2 == 302)) {
                return false;
            }
        }
        return true;
    }

    private static String a(HttpRequest.a aVar, int i, int i2, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder(HttpVersion.HTTP);
        boolean zA = a(i, i2);
        if (zA) {
            sb.append(" redirect count ").append(i).append(',');
        }
        sb.append(" response code ").append(i2).append(", content-type ").append(str).append(" for ").append(aVar).append(" to");
        if (i > 0) {
            sb.append(" original URL ").append(str2).append(',');
        }
        sb.append(" requested URL ").append(str3);
        if (zA) {
            sb.append(", next URL ").append(str4);
        }
        return sb.toString();
    }
}

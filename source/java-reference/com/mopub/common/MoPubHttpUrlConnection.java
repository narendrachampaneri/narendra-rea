package com.mopub.common;

import android.support.annotation.NonNull;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.Networking;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;

/* JADX INFO: loaded from: classes.dex */
public abstract class MoPubHttpUrlConnection extends HttpURLConnection {
    private static final int CONNECT_TIMEOUT = 10000;
    private static final int READ_TIMEOUT = 10000;

    private MoPubHttpUrlConnection(URL url) {
        super(url);
    }

    public static HttpURLConnection getHttpUrlConnection(@NonNull String url) throws IOException {
        String getUrl;
        Preconditions.checkNotNull(url);
        if (isUrlImproperlyEncoded(url)) {
            throw new IllegalArgumentException("URL is improperly encoded: " + url);
        }
        try {
            getUrl = urlEncode(url);
        } catch (Exception e) {
            getUrl = url;
        }
        HttpURLConnection urlConnection = (HttpURLConnection) HttpInstrumentation.openConnection(new URL(getUrl).openConnection());
        urlConnection.setRequestProperty("User-Agent", Networking.getCachedUserAgent());
        urlConnection.setConnectTimeout(10000);
        urlConnection.setReadTimeout(10000);
        return urlConnection;
    }

    @NonNull
    public static String urlEncode(@NonNull String url) throws Exception {
        URI uri;
        Preconditions.checkNotNull(url);
        if (isUrlImproperlyEncoded(url)) {
            throw new UnsupportedEncodingException("URL is improperly encoded: " + url);
        }
        if (isUrlUnencoded(url)) {
            uri = encodeUrl(url);
        } else {
            uri = new URI(url);
        }
        return uri.toURL().toString();
    }

    static boolean isUrlImproperlyEncoded(@NonNull String url) {
        try {
            URLDecoder.decode(url, "UTF-8");
            return false;
        } catch (UnsupportedEncodingException e) {
            MoPubLog.w("Url is improperly encoded: " + url);
            return true;
        }
    }

    static boolean isUrlUnencoded(@NonNull String url) {
        try {
            new URI(url);
            return false;
        } catch (URISyntaxException e) {
            return true;
        }
    }

    @NonNull
    static URI encodeUrl(@NonNull String urlString) throws Exception {
        try {
            URL url = new URL(urlString);
            URI uri = new URI(url.getProtocol(), url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef());
            return uri;
        } catch (Exception e) {
            MoPubLog.w("Failed to encode url: " + urlString);
            throw e;
        }
    }
}

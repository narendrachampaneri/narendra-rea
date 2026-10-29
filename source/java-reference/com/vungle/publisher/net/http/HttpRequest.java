package com.vungle.publisher.net.http;

import android.os.Bundle;
import android.text.TextUtils;
import com.vungle.publisher.bt;
import java.util.regex.Pattern;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class HttpRequest {
    public static final Pattern a = Pattern.compile("^https://");
    public String b;
    public Bundle c;
    public String d;

    /* JADX INFO: compiled from: vungle */
    public enum a {
        GET,
        HEAD,
        POST
    }

    /* JADX INFO: compiled from: vungle */
    public enum b {
        download,
        reportAd,
        requestConfig,
        requestLocalAd,
        requestStreamingAd,
        sessionEnd,
        sessionStart,
        trackEvent,
        trackInstall,
        unfilledAd,
        reportExceptions,
        appFingerprint
    }

    public abstract b a();

    public abstract a b();

    public final void a(String str, String str2) {
        this.c.putString(str, str2);
    }

    public String toString() {
        return "{" + a() + "}";
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class Factory<T extends HttpRequest> {

        @Inject
        protected bt b;

        public abstract T b();

        public T c() {
            T t = (T) b();
            Bundle bundle = new Bundle();
            String strS = this.b.s();
            if (!TextUtils.isEmpty(strS)) {
                bundle.putString("User-Agent", strS);
            }
            t.c = bundle;
            return t;
        }
    }
}

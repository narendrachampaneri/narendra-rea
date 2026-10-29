package com.vungle.publisher.net.http;

import com.vungle.publisher.device.data.AppFingerprint;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class AppFingerprintHttpRequest extends IngestHttpRequest {
    @Inject
    public AppFingerprintHttpRequest() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.b a() {
        return HttpRequest.b.appFingerprint;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends IngestHttpRequest.Factory<AppFingerprintHttpRequest> {

        @Inject
        Provider<AppFingerprintHttpRequest> a;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.net.http.HttpRequest.Factory
        public final /* synthetic */ HttpRequest b() {
            return this.a.get();
        }

        public final AppFingerprintHttpRequest a(AppFingerprint appFingerprint) throws JSONException {
            AppFingerprintHttpRequest appFingerprintHttpRequestD = c();
            appFingerprintHttpRequestD.d = appFingerprint.c();
            return appFingerprintHttpRequestD;
        }

        @Override // com.vungle.publisher.net.http.IngestHttpRequest.Factory
        protected final String a() {
            return "installedApps";
        }
    }
}

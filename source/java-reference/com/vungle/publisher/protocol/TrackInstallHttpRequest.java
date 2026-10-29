package com.vungle.publisher.protocol;

import android.net.Uri;
import com.amazon.identity.auth.device.endpoint.AbstractOauthTokenRequest;
import com.vungle.publisher.bt;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.protocol.message.RequestLocalAd;
import io.fabric.sdk.android.services.settings.AppSettingsData;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class TrackInstallHttpRequest extends ProtocolHttpRequest {
    protected TrackInstallHttpRequest() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.b a() {
        return HttpRequest.b.trackInstall;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.a b() {
        return HttpRequest.a.POST;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends ProtocolHttpRequest.a<TrackInstallHttpRequest> {

        @Inject
        bt g;

        @Inject
        RequestLocalAd.Factory h;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.net.http.HttpRequest.Factory
        public final /* synthetic */ HttpRequest b() {
            return new TrackInstallHttpRequest();
        }

        @Override // com.vungle.publisher.protocol.ProtocolHttpRequest.a, com.vungle.publisher.net.http.HttpRequest.Factory
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public final TrackInstallHttpRequest c() {
            TrackInstallHttpRequest trackInstallHttpRequest = (TrackInstallHttpRequest) super.c();
            Uri.Builder builderAppendQueryParameter = Uri.parse(this.d + AppSettingsData.STATUS_NEW).buildUpon().appendQueryParameter(AbstractOauthTokenRequest.APP_APP_ID_PARAM, this.c.b());
            String strA = this.g.a();
            if (strA != null) {
                builderAppendQueryParameter.appendQueryParameter("ifa", strA);
            }
            String strC = this.g.c();
            if (strC != null) {
                builderAppendQueryParameter.appendQueryParameter("isu", strC);
            }
            String strJ = this.g.j();
            if (strJ != null) {
                builderAppendQueryParameter.appendQueryParameter("mac", strJ);
            }
            trackInstallHttpRequest.b = builderAppendQueryParameter.toString();
            return trackInstallHttpRequest;
        }
    }
}

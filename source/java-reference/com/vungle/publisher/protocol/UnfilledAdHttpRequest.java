package com.vungle.publisher.protocol;

import android.net.Uri;
import com.amazon.identity.auth.device.endpoint.AbstractOauthTokenRequest;
import com.vungle.publisher.bt;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.protocol.message.RequestLocalAd;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class UnfilledAdHttpRequest extends ProtocolHttpRequest {
    protected UnfilledAdHttpRequest() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.b a() {
        return HttpRequest.b.unfilledAd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.net.http.HttpRequest
    public final HttpRequest.a b() {
        return HttpRequest.a.POST;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends ProtocolHttpRequest.a<UnfilledAdHttpRequest> {

        @Inject
        bt g;

        @Inject
        RequestLocalAd.Factory h;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.net.http.HttpRequest.Factory
        public final /* synthetic */ HttpRequest b() {
            return new UnfilledAdHttpRequest();
        }

        public final UnfilledAdHttpRequest a(long j) {
            UnfilledAdHttpRequest unfilledAdHttpRequest = (UnfilledAdHttpRequest) super.c();
            Uri.Builder builderAppendQueryParameter = Uri.parse(this.d + "unfilled").buildUpon().appendQueryParameter(AbstractOauthTokenRequest.APP_APP_ID_PARAM, this.c.b());
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
            builderAppendQueryParameter.appendQueryParameter("ut", String.valueOf(j));
            unfilledAdHttpRequest.b = builderAppendQueryParameter.toString();
            return unfilledAdHttpRequest;
        }
    }
}

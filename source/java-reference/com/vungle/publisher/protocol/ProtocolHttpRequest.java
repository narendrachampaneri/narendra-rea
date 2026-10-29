package com.vungle.publisher.protocol;

import android.os.Bundle;
import com.vungle.publisher.VunglePubBase;
import com.vungle.publisher.bv;
import com.vungle.publisher.cn;
import com.vungle.publisher.env.WrapperFramework;
import com.vungle.publisher.inject.annotations.VungleBaseUrl;
import com.vungle.publisher.inject.annotations.WrapperFrameworkVersion;
import com.vungle.publisher.net.http.HttpRequest;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class ProtocolHttpRequest extends HttpRequest {
    static /* synthetic */ boolean a(ProtocolHttpRequest protocolHttpRequest) {
        return protocolHttpRequest.b != null && HttpRequest.a.matcher(protocolHttpRequest.b).find();
    }

    protected ProtocolHttpRequest() {
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class a<T extends ProtocolHttpRequest> extends HttpRequest.Factory<T> {

        @Inject
        cn a;

        @Inject
        bv c;

        @Inject
        @VungleBaseUrl
        String d;

        @Inject
        protected WrapperFramework e;

        @WrapperFrameworkVersion
        @Inject
        protected String f;
        private String g;

        protected a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.net.http.HttpRequest.Factory
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public T c() {
            T t = (T) super.c();
            Bundle bundle = t.c;
            bundle.putString("X-VUNGLE-BUNDLE-ID", this.c.a());
            bundle.putString("X-VUNGLE-LANGUAGE", this.a.a());
            bundle.putString("X-VUNGLE-TIMEZONE", this.a.c());
            String string = this.g;
            if (string == null) {
                StringBuilder sb = new StringBuilder(VunglePubBase.VERSION);
                WrapperFramework wrapperFramework = this.e;
                String str = this.f;
                boolean z = wrapperFramework != null;
                boolean z2 = str != null;
                if (z || z2) {
                    sb.append(';');
                    if (z) {
                        sb.append(wrapperFramework);
                    }
                    if (z2) {
                        sb.append('/');
                        sb.append(str);
                    }
                }
                string = sb.toString();
                this.g = string;
            }
            bundle.putString("User-Agent", string);
            if (ProtocolHttpRequest.a(t)) {
                bundle.putLong("X-VUNG-DATE", System.currentTimeMillis());
            }
            return t;
        }
    }
}

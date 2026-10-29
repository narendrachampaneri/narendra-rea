package com.vungle.publisher;

import com.vungle.log.Logger;
import com.vungle.publisher.env.SdkConfig;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.net.http.HttpResponse;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler;
import com.vungle.publisher.protocol.RequestConfigAsync;
import com.vungle.publisher.protocol.message.RequestConfigResponse;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Provider;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class cy extends InfiniteRetryHttpResponseHandler {

    @Inject
    public RequestConfigResponse.Factory a;

    @Inject
    public SdkConfig b;

    @Inject
    public EventBus c;

    @Inject
    public Provider<RequestConfigAsync> d;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.ct
    public final void a(HttpTransaction httpTransaction, HttpResponse httpResponse) throws JSONException, IOException {
        RequestConfigResponse requestConfigResponseA = this.a.a(a(httpResponse.a));
        Integer num = requestConfigResponseA.b;
        if (num != null && num.intValue() > 0) {
            this.d.get().a(num.intValue() * 1000);
        }
        RequestConfigResponse.a aVar = requestConfigResponseA.d;
        if (aVar != null) {
            switch (aVar) {
                case all:
                    this.b.a(co.values());
                    break;
                case wifi:
                    this.b.a(co.wifi);
                    break;
                default:
                    Logger.w(Logger.NETWORK_TAG, "unhandled streaming connectivity type " + aVar);
                    break;
            }
        }
        SdkConfig sdkConfig = this.b;
        boolean zEquals = Boolean.TRUE.equals(requestConfigResponseA.a);
        Logger.d(Logger.CONFIG_TAG, (zEquals ? "enabling" : "disabling") + " ad streaming");
        sdkConfig.b = zEquals;
        SdkConfig sdkConfig2 = this.b;
        boolean zEquals2 = Boolean.TRUE.equals(requestConfigResponseA.e);
        Logger.d(Logger.CONFIG_TAG, "setting exception reporting enabled: " + zEquals2);
        sdkConfig2.j.edit().putBoolean(sdkConfig2.e, zEquals2).commit();
        Integer num2 = requestConfigResponseA.c;
        if (num2 == null) {
            Logger.w(Logger.NETWORK_TAG, "null request streaming ad timeout millis");
        } else {
            SdkConfig sdkConfig3 = this.b;
            int iIntValue = num2.intValue();
            Logger.d(Logger.CONFIG_TAG, "setting streaming response timeout " + iIntValue + " ms");
            sdkConfig3.d = iIntValue;
        }
        Long l = requestConfigResponseA.f;
        Long l2 = requestConfigResponseA.g;
        if (l2 != null) {
            SdkConfig sdkConfig4 = this.b;
            long jLongValue = l2.longValue();
            Logger.d(Logger.CONFIG_TAG, "setting app fingerprint frequency to " + jLongValue);
            sdkConfig4.g = jLongValue;
        }
        if (l != null) {
            this.b.a(l.longValue());
        }
        this.c.a(new cq());
    }
}

package com.vungle.publisher.protocol.message;

import android.net.http.Headers;
import android.support.v7.media.MediaRouteProviderProtocol;
import android.util.DisplayMetrics;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.vungle.log.Logger;
import com.vungle.publisher.AdConfig;
import com.vungle.publisher.bt;
import com.vungle.publisher.bv;
import com.vungle.publisher.ci;
import com.vungle.publisher.cn;
import com.vungle.publisher.co;
import com.vungle.publisher.cp;
import com.vungle.publisher.protocol.message.RequestAd;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class RequestAd<Q extends RequestAd<Q>> extends BaseJsonObject {
    protected String a;
    protected String b;
    protected Demographic c;
    protected DeviceInfo d;
    protected Boolean e;
    protected String f;

    @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
    /* JADX INFO: renamed from: a */
    public JSONObject b() throws JSONException {
        JSONObject jSONObjectB = super.b();
        jSONObjectB.putOpt("isu", this.b);
        jSONObjectB.putOpt("ifa", this.a);
        jSONObjectB.putOpt("demo", ci.a(this.c));
        jSONObjectB.putOpt("deviceInfo", ci.a(this.d));
        if (Boolean.FALSE.equals(this.e)) {
            jSONObjectB.putOpt("adTrackingEnabled", this.e);
        }
        jSONObjectB.putOpt("pubAppId", this.f);
        return jSONObjectB;
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class a<Q extends RequestAd<Q>> extends MessageFactory<Q> {

        @Inject
        protected Demographic.Factory a;

        @Inject
        bt b;

        @Inject
        protected DeviceInfo.Factory c;

        @Inject
        protected bv d;

        protected a() {
        }

        protected Q b() {
            Q qA = a();
            qA.a = this.b.a();
            qA.b = this.b.c();
            qA.c = this.a.b();
            qA.d = this.c.b();
            qA.e = Boolean.valueOf(this.b.i());
            qA.f = this.d.b();
            return qA;
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static class Demographic extends BaseJsonObject {
        protected Integer a;
        protected com.vungle.publisher.Demographic.Gender b;
        protected Location c;

        protected Demographic() {
        }

        @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
        /* JADX INFO: renamed from: a */
        public final JSONObject b() throws JSONException {
            JSONObject jSONObjectB = super.b();
            jSONObjectB.putOpt("age", this.a);
            jSONObjectB.putOpt("gender", this.b);
            jSONObjectB.putOpt("location", ci.a(this.c));
            return jSONObjectB;
        }

        /* JADX INFO: compiled from: vungle */
        @Singleton
        public static class Factory extends MessageFactory<Demographic> {

            @Inject
            protected com.vungle.publisher.Demographic a;

            @Inject
            protected Location.Factory b;

            @Override // com.vungle.publisher.protocol.message.MessageFactory
            protected final /* synthetic */ Demographic a() {
                return new Demographic();
            }

            @Override // com.vungle.publisher.protocol.message.MessageFactory
            protected final /* bridge */ /* synthetic */ Demographic[] a(int i) {
                return new Demographic[i];
            }

            protected Factory() {
            }

            protected final Demographic b() {
                com.vungle.publisher.Demographic demographic = this.a;
                Demographic demographic2 = new Demographic();
                demographic2.a = demographic.getAge();
                demographic2.b = demographic.getGender();
                demographic2.c = this.b.b();
                return demographic2;
            }
        }

        /* JADX INFO: compiled from: vungle */
        public static class Location extends BaseJsonObject {
            protected Float a;
            protected Double b;
            protected Double c;
            protected Float d;
            protected Long e;

            protected Location() {
            }

            @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
            /* JADX INFO: renamed from: a */
            public final JSONObject b() throws JSONException {
                JSONObject jSONObjectB = super.b();
                jSONObjectB.putOpt("accuracyMeters", this.a);
                jSONObjectB.putOpt("lat", this.b);
                jSONObjectB.putOpt("long", this.c);
                jSONObjectB.putOpt("speedMetersPerSecond", this.d);
                jSONObjectB.putOpt("timestampMillis", this.e);
                return jSONObjectB;
            }

            /* JADX INFO: compiled from: vungle */
            @Singleton
            public static class Factory extends MessageFactory<Location> {

                @Inject
                cn a;

                @Override // com.vungle.publisher.protocol.message.MessageFactory
                protected final /* synthetic */ Location a() {
                    return new Location();
                }

                @Override // com.vungle.publisher.protocol.message.MessageFactory
                protected final /* bridge */ /* synthetic */ Location[] a(int i) {
                    return new Location[i];
                }

                protected Factory() {
                }

                protected final Location b() {
                    android.location.Location locationB = this.a.b();
                    if (locationB == null) {
                        Logger.d(Logger.PROTOCOL_TAG, "detailed location not available");
                        return null;
                    }
                    Location location = new Location();
                    location.a = Float.valueOf(locationB.getAccuracy());
                    location.b = Double.valueOf(locationB.getLatitude());
                    location.c = Double.valueOf(locationB.getLongitude());
                    location.d = Float.valueOf(locationB.getSpeed());
                    location.e = Long.valueOf(locationB.getTime());
                    return location;
                }
            }
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static class DeviceInfo extends BaseJsonObject {
        protected co a;
        protected DisplayDimension b;
        protected Boolean c;
        protected Boolean d;
        protected String e;
        protected String f;
        protected String g;
        protected String h;
        protected a i;
        protected Float j;
        protected String k;

        /* JADX INFO: compiled from: vungle */
        public enum a {
            android
        }

        protected DeviceInfo() {
        }

        @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
        /* JADX INFO: renamed from: a */
        public final JSONObject b() throws JSONException {
            Integer numValueOf;
            JSONObject jSONObjectB = super.b();
            jSONObjectB.putOpt(Headers.CONN_DIRECTIVE, this.a);
            jSONObjectB.putOpt("dim", ci.a(this.b));
            Boolean bool = this.c;
            if (bool == null) {
                numValueOf = null;
            } else {
                numValueOf = Integer.valueOf(bool.booleanValue() ? 1 : 0);
            }
            jSONObjectB.putOpt("isSdCardAvailable", numValueOf);
            jSONObjectB.putOpt("soundEnabled", this.d);
            jSONObjectB.putOpt("mac", this.e);
            jSONObjectB.putOpt("model", this.f);
            jSONObjectB.putOpt("networkOperator", this.g);
            jSONObjectB.putOpt(AnalyticAttribute.OS_VERSION_ATTRIBUTE, this.h);
            jSONObjectB.putOpt("platform", this.i);
            jSONObjectB.putOpt(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, this.j);
            jSONObjectB.putOpt("userAgent", this.k);
            return jSONObjectB;
        }

        /* JADX INFO: compiled from: vungle */
        @Singleton
        public static class Factory extends MessageFactory<DeviceInfo> {

            @Inject
            protected AdConfig a;

            @Inject
            protected bt b;

            @Inject
            protected DisplayDimension.Factory c;

            @Inject
            protected cp d;

            @Inject
            protected bv e;

            @Override // com.vungle.publisher.protocol.message.MessageFactory
            protected final /* synthetic */ DeviceInfo a() {
                return new DeviceInfo();
            }

            @Override // com.vungle.publisher.protocol.message.MessageFactory
            protected final /* bridge */ /* synthetic */ DeviceInfo[] a(int i) {
                return new DeviceInfo[i];
            }

            protected Factory() {
            }

            protected final DeviceInfo b() {
                DeviceInfo deviceInfo = new DeviceInfo();
                deviceInfo.a = this.d.a();
                deviceInfo.b = this.c.b();
                deviceInfo.c = Boolean.valueOf(this.b.o());
                deviceInfo.d = Boolean.valueOf(this.a.isSoundEnabled());
                deviceInfo.e = this.b.j();
                deviceInfo.f = this.b.m();
                deviceInfo.g = this.d.b();
                deviceInfo.h = this.b.g();
                deviceInfo.i = a.android;
                deviceInfo.j = this.b.n();
                deviceInfo.k = this.b.s();
                return deviceInfo;
            }
        }

        /* JADX INFO: compiled from: vungle */
        public static class DisplayDimension extends BaseJsonObject {
            protected Integer a;
            protected Integer b;

            protected DisplayDimension() {
            }

            @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
            /* JADX INFO: renamed from: a */
            public final JSONObject b() throws JSONException {
                JSONObject jSONObjectB = super.b();
                jSONObjectB.putOpt("height", this.a);
                jSONObjectB.putOpt("width", this.b);
                return jSONObjectB;
            }

            /* JADX INFO: compiled from: vungle */
            @Singleton
            public static class Factory extends MessageFactory<DisplayDimension> {

                @Inject
                protected bt a;

                @Override // com.vungle.publisher.protocol.message.MessageFactory
                protected final /* synthetic */ DisplayDimension a() {
                    return new DisplayDimension();
                }

                @Override // com.vungle.publisher.protocol.message.MessageFactory
                protected final /* bridge */ /* synthetic */ DisplayDimension[] a(int i) {
                    return new DisplayDimension[i];
                }

                protected Factory() {
                }

                protected final DisplayDimension b() {
                    DisplayMetrics displayMetricsH = this.a.h();
                    if (displayMetricsH.heightPixels <= 0 && displayMetricsH.widthPixels <= 0) {
                        return null;
                    }
                    DisplayDimension displayDimension = new DisplayDimension();
                    displayDimension.a = Integer.valueOf(displayMetricsH.heightPixels);
                    displayDimension.b = Integer.valueOf(displayMetricsH.widthPixels);
                    return displayDimension;
                }
            }
        }
    }
}

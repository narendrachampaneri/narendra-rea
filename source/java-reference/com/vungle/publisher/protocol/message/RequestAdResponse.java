package com.vungle.publisher.protocol.message;

import android.support.v7.media.MediaRouteProviderProtocol;
import com.amazon.identity.auth.device.endpoint.AbstractOauthTokenRequest;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.vungle.publisher.ci;
import java.util.Comparator;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class RequestAdResponse {
    protected Integer a;
    protected Integer b;
    protected Integer c;
    protected String d;
    protected String e;
    protected CallToActionOverlay f;
    protected String g;
    protected String h;
    protected String i;
    protected String j;
    protected Integer k;
    protected Integer l;
    protected Integer m;
    protected ThirdPartyAdTracking n;
    protected Integer o;
    protected String p;
    protected Integer q;

    protected RequestAdResponse() {
    }

    public final Integer a() {
        return this.a;
    }

    public final String b() {
        return this.d;
    }

    public final String c() {
        return this.e;
    }

    public final CallToActionOverlay d() {
        return this.f;
    }

    public final String e() {
        return this.g;
    }

    public final String f() {
        return this.h;
    }

    public final String g() {
        return this.i;
    }

    public final Integer h() {
        return this.k;
    }

    public final Integer i() {
        return this.l;
    }

    public final Integer j() {
        return this.m;
    }

    public final ThirdPartyAdTracking k() {
        return this.n;
    }

    public final Integer l() {
        return this.o;
    }

    public final String m() {
        return this.p;
    }

    public final Integer n() {
        return this.q;
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class a<T extends RequestAdResponse> extends JsonDeserializationFactory<T> {

        @Inject
        protected CallToActionOverlay.Factory a;

        @Inject
        protected ThirdPartyAdTracking.Factory b;

        protected a() {
        }

        @Override // com.vungle.publisher.protocol.message.JsonDeserializationFactory
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public T a(JSONObject jSONObject) throws JSONException {
            if (jSONObject == null) {
                return null;
            }
            T tA = a();
            tA.a = ci.c(jSONObject, "delay");
            tA.c = ci.c(jSONObject, "asyncThreshold");
            tA.b = ci.c(jSONObject, "retryCount");
            tA.d = ci.e(jSONObject, AbstractOauthTokenRequest.APP_APP_ID_PARAM);
            tA.e = ci.e(jSONObject, "callToActionDest");
            tA.f = CallToActionOverlay.Factory.b(jSONObject.optJSONObject("cta_overlay"));
            tA.g = ci.e(jSONObject, "callToActionUrl");
            tA.h = ci.e(jSONObject, "campaign");
            a(jSONObject, "campaign", tA.h);
            tA.i = ci.e(jSONObject, AnalyticsEvent.EVENT_ID);
            tA.j = ci.e(jSONObject, "chk");
            tA.k = ci.c(jSONObject, "showCloseIncentivized");
            tA.l = ci.c(jSONObject, "showClose");
            tA.m = ci.c(jSONObject, "countdown");
            tA.n = this.b.a(jSONObject.optJSONObject("tpat"));
            tA.o = ci.c(jSONObject, "videoHeight");
            a(jSONObject, "videoHeight", tA.o);
            tA.p = ci.e(jSONObject, "url");
            a(jSONObject, "url", tA.p);
            tA.q = ci.c(jSONObject, "videoWidth");
            a(jSONObject, "videoWidth", tA.q);
            return tA;
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static class CallToActionOverlay extends BaseJsonObject {
        protected Float a;
        protected Integer b;
        protected Boolean c;
        protected Boolean d;
        protected Integer e;

        protected CallToActionOverlay() {
        }

        public final Float d() {
            return this.a;
        }

        public final Boolean e() {
            return this.c;
        }

        public final Boolean f() {
            return this.d;
        }

        public final Integer g() {
            return this.e;
        }

        public final Integer h() {
            return this.b;
        }

        @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
        /* JADX INFO: renamed from: a */
        public final JSONObject b() throws JSONException {
            JSONObject jSONObjectB = super.b();
            jSONObjectB.putOpt("click_area", this.a);
            jSONObjectB.putOpt("enabled", this.c);
            jSONObjectB.putOpt("show_onclick", this.d);
            jSONObjectB.putOpt("time_show", this.e);
            jSONObjectB.putOpt("time_enabled", this.b);
            return jSONObjectB;
        }

        /* JADX INFO: compiled from: vungle */
        @Singleton
        public static class Factory extends JsonDeserializationFactory<CallToActionOverlay> {
            @Override // com.vungle.publisher.protocol.message.MessageFactory
            protected final /* synthetic */ Object a() {
                return new CallToActionOverlay();
            }

            @Override // com.vungle.publisher.protocol.message.JsonDeserializationFactory
            protected final /* synthetic */ CallToActionOverlay a(JSONObject jSONObject) throws JSONException {
                return b(jSONObject);
            }

            @Override // com.vungle.publisher.protocol.message.MessageFactory
            protected final /* bridge */ /* synthetic */ Object[] a(int i) {
                return new CallToActionOverlay[i];
            }

            @Inject
            protected Factory() {
            }

            protected static CallToActionOverlay b(JSONObject jSONObject) throws JSONException {
                if (jSONObject == null) {
                    return null;
                }
                CallToActionOverlay callToActionOverlay = new CallToActionOverlay();
                callToActionOverlay.a = ci.b(jSONObject, "click_area");
                callToActionOverlay.c = ci.a(jSONObject, "enabled");
                callToActionOverlay.d = ci.a(jSONObject, "show_onclick");
                callToActionOverlay.e = ci.c(jSONObject, "time_show");
                callToActionOverlay.b = ci.c(jSONObject, "time_enabled");
                return callToActionOverlay;
            }
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static class ThirdPartyAdTracking extends BaseJsonObject {
        protected String[] a;
        protected String[] b;
        protected String[] c;
        protected String[] d;
        protected String[] e;
        protected String[] f;
        protected PlayCheckpoint[] g;
        protected String[] h;
        protected String[] i;
        protected String[] j;

        protected ThirdPartyAdTracking() {
        }

        public final String[] d() {
            return this.a;
        }

        public final String[] e() {
            return this.b;
        }

        public final String[] f() {
            return this.c;
        }

        public final String[] g() {
            return this.d;
        }

        public final String[] h() {
            return this.e;
        }

        public final String[] i() {
            return this.f;
        }

        public final PlayCheckpoint[] j() {
            return this.g;
        }

        public final String[] k() {
            return this.h;
        }

        public final String[] l() {
            return this.i;
        }

        public final String[] m() {
            return this.j;
        }

        @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
        /* JADX INFO: renamed from: a */
        public final JSONObject b() throws JSONException {
            JSONObject jSONObjectB = super.b();
            jSONObjectB.putOpt("postroll_click", this.a);
            jSONObjectB.putOpt("video_click", this.b);
            jSONObjectB.putOpt("video_close", this.c);
            jSONObjectB.putOpt(MediaRouteProviderProtocol.SERVICE_DATA_ERROR, this.d);
            jSONObjectB.putOpt("mute", this.e);
            jSONObjectB.putOpt("pause", this.f);
            jSONObjectB.putOpt("play_percentage", ci.a(this.g));
            jSONObjectB.putOpt("postroll_view", this.h);
            jSONObjectB.putOpt("resume", this.i);
            jSONObjectB.putOpt("unmute", this.j);
            return jSONObjectB;
        }

        /* JADX INFO: compiled from: vungle */
        @Singleton
        public static class Factory extends JsonDeserializationFactory<ThirdPartyAdTracking> {

            @Inject
            protected PlayCheckpoint.Factory a;

            @Override // com.vungle.publisher.protocol.message.MessageFactory
            protected final /* synthetic */ Object a() {
                return new ThirdPartyAdTracking();
            }

            @Override // com.vungle.publisher.protocol.message.MessageFactory
            protected final /* bridge */ /* synthetic */ Object[] a(int i) {
                return new ThirdPartyAdTracking[i];
            }

            protected Factory() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.vungle.publisher.protocol.message.JsonDeserializationFactory
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final ThirdPartyAdTracking a(JSONObject jSONObject) throws JSONException {
                if (jSONObject == null) {
                    return null;
                }
                ThirdPartyAdTracking thirdPartyAdTracking = new ThirdPartyAdTracking();
                thirdPartyAdTracking.a = ci.f(jSONObject, "postroll_click");
                thirdPartyAdTracking.b = ci.f(jSONObject, "video_click");
                thirdPartyAdTracking.c = ci.f(jSONObject, "video_close");
                thirdPartyAdTracking.d = ci.f(jSONObject, MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
                thirdPartyAdTracking.e = ci.f(jSONObject, "mute");
                thirdPartyAdTracking.f = ci.f(jSONObject, "pause");
                thirdPartyAdTracking.g = this.a.a(jSONObject.optJSONArray("play_percentage"));
                thirdPartyAdTracking.h = ci.f(jSONObject, "postroll_view");
                thirdPartyAdTracking.i = ci.f(jSONObject, "resume");
                thirdPartyAdTracking.j = ci.f(jSONObject, "unmute");
                return thirdPartyAdTracking;
            }
        }

        /* JADX INFO: compiled from: vungle */
        public static class PlayCheckpoint extends BaseJsonObject {
            public Float a;
            public String[] b;

            protected PlayCheckpoint() {
            }

            @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
            /* JADX INFO: renamed from: a */
            public final JSONObject b() throws JSONException {
                JSONObject jSONObjectB = super.b();
                jSONObjectB.putOpt("checkpoint", this.a);
                jSONObjectB.putOpt("urls", this.b);
                return jSONObjectB;
            }

            /* JADX INFO: compiled from: vungle */
            @Singleton
            public static class Factory extends JsonDeserializationFactory<PlayCheckpoint> {
                @Override // com.vungle.publisher.protocol.message.MessageFactory
                protected final /* synthetic */ Object a() {
                    return new PlayCheckpoint();
                }

                @Override // com.vungle.publisher.protocol.message.JsonDeserializationFactory
                protected final /* synthetic */ PlayCheckpoint a(JSONObject jSONObject) throws JSONException {
                    if (jSONObject == null) {
                        return null;
                    }
                    PlayCheckpoint playCheckpoint = new PlayCheckpoint();
                    playCheckpoint.a = ci.b(jSONObject, "checkpoint");
                    a(jSONObject, "checkpoint", playCheckpoint.a);
                    playCheckpoint.b = ci.f(jSONObject, "urls");
                    a(jSONObject, "urls", playCheckpoint.b);
                    return playCheckpoint;
                }

                @Override // com.vungle.publisher.protocol.message.MessageFactory
                protected final /* bridge */ /* synthetic */ Object[] a(int i) {
                    return new PlayCheckpoint[i];
                }

                @Inject
                protected Factory() {
                }
            }

            /* JADX INFO: compiled from: vungle */
            @Singleton
            public static class PlayPercentAscendingComparator implements Comparator<PlayCheckpoint> {
                @Override // java.util.Comparator
                public /* synthetic */ int compare(PlayCheckpoint playCheckpoint, PlayCheckpoint playCheckpoint2) {
                    Float f = playCheckpoint.a;
                    Float f2 = playCheckpoint2.a;
                    float fFloatValue = (f == null ? 2.0f : f.floatValue()) - (f2 != null ? f2.floatValue() : 2.0f);
                    if (fFloatValue < 0.0f) {
                        return -1;
                    }
                    return fFloatValue == 0.0f ? 0 : 1;
                }

                @Inject
                protected PlayPercentAscendingComparator() {
                }
            }
        }
    }
}

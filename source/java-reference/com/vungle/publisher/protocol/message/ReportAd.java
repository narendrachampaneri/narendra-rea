package com.vungle.publisher.protocol.message;

import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.identity.auth.device.endpoint.AbstractOauthTokenRequest;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.vungle.log.Logger;
import com.vungle.publisher.ci;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.AdPlay;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.AdReportEvent;
import com.vungle.publisher.db.model.Video;
import com.vungle.publisher.protocol.message.ReportAd;
import com.vungle.publisher.protocol.message.RequestAd;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class ReportAd<Q extends RequestAd<Q>, O extends ReportAd<Q, O>> extends BaseJsonObject {
    protected Integer a;
    protected Long b;
    protected String c;
    protected String d;
    protected Integer e;
    protected String f;
    protected Boolean g;
    protected String h;
    protected Play[] i;
    protected Q j;
    protected String k;
    protected String l;

    protected ReportAd() {
    }

    public final Q d() {
        return this.j;
    }

    private List<String> e() {
        ArrayList arrayList = new ArrayList();
        if (this.i != null && this.i.length > 0) {
            String string = AdReportEvent.a.volume.toString();
            for (Play play : this.i) {
                Play.UserAction[] userActionArr = play.d;
                if (userActionArr != null) {
                    for (Play.UserAction userAction : userActionArr) {
                        if (!string.equals(userAction.a)) {
                            arrayList.add(userAction.a);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
    /* JADX INFO: renamed from: a */
    public JSONObject b() throws JSONException {
        Integer numValueOf;
        JSONObject jSONObjectB = this.j == null ? super.b() : this.j.b();
        jSONObjectB.putOpt("ttDownload", this.a);
        jSONObjectB.putOpt("adStartTime", this.b);
        jSONObjectB.putOpt(AbstractOauthTokenRequest.APP_APP_ID_PARAM, this.c);
        jSONObjectB.putOpt("campaign", this.d);
        jSONObjectB.putOpt("adDuration", this.e);
        if (Boolean.TRUE.equals(this.g)) {
            jSONObjectB.putOpt(AnalyticAttribute.EVENT_NAME_ATTRIBUTE, this.f);
        }
        Boolean bool = this.g;
        if (bool != null) {
            numValueOf = Integer.valueOf(bool.booleanValue() ? 1 : 0);
        } else {
            numValueOf = null;
        }
        jSONObjectB.putOpt("incentivized", numValueOf);
        jSONObjectB.putOpt("placement", this.h);
        jSONObjectB.putOpt("plays", ci.a(this.i));
        jSONObjectB.putOpt(AnalyticsEvent.EVENT_ID, this.k);
        jSONObjectB.putOpt("clickedThrough", new JSONArray((Collection) e()));
        jSONObjectB.putOpt("url", this.l);
        return jSONObjectB;
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class Factory<Q extends RequestAd<Q>, R extends RequestAdResponse, O extends ReportAd<Q, O>, T extends AdReport<T, P, E, A, V, R>, P extends AdPlay<T, P, E, A, V, R>, E extends AdReportEvent<T, P, E, A, V, R>, A extends Ad<A, V, R>, V extends Video<A, V, R>> extends MessageFactory<O> {

        @Inject
        protected ExtraInfo.Factory a;

        protected abstract RequestAd.a<Q> b();

        protected Factory() {
        }

        public O a(T t) {
            Play[] playArr = null;
            int i = 0;
            if (t == null) {
                return null;
            }
            Ad adE = t.e();
            O o = (O) a();
            o.b = t.l();
            o.c = adE.e();
            o.d = adE.d();
            o.e = Integer.valueOf(t.k());
            o.f = t.h();
            o.g = Boolean.valueOf(t.g());
            o.h = t.i();
            AdPlay[] adPlayArrT = t.t();
            int length = adPlayArrT == null ? 0 : adPlayArrT.length;
            if (length > 0) {
                playArr = new Play[length];
                int length2 = adPlayArrT.length;
                int i2 = 0;
                while (i < length2) {
                    playArr[i2] = Play.Factory.a(adPlayArrT[i]);
                    i++;
                    i2++;
                }
            }
            o.i = playArr;
            o.j = (Q) b().b();
            return o;
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static class Play extends BaseJsonObject {
        protected Integer a;
        protected Integer b;
        protected Long c;
        protected UserAction[] d;

        Play() {
        }

        @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
        /* JADX INFO: renamed from: a */
        public final JSONObject b() throws JSONException {
            JSONObject jSONObjectB = super.b();
            jSONObjectB.putOpt("userActions", ci.a(this.d));
            jSONObjectB.putOpt("videoLength", this.a);
            jSONObjectB.putOpt("videoViewed", this.b);
            jSONObjectB.putOpt("startTime", this.c);
            return jSONObjectB;
        }

        /* JADX INFO: compiled from: vungle */
        public static abstract class Factory<R extends RequestAdResponse, T extends AdReport<T, P, E, A, V, R>, P extends AdPlay<T, P, E, A, V, R>, E extends AdReportEvent<T, P, E, A, V, R>, A extends Ad<A, V, R>, V extends Video<A, V, R>> extends MessageFactory<Play> {
            @Override // com.vungle.publisher.protocol.message.MessageFactory
            protected final /* synthetic */ Play a() {
                return new Play();
            }

            @Override // com.vungle.publisher.protocol.message.MessageFactory
            protected final /* bridge */ /* synthetic */ Play[] a(int i) {
                return new Play[i];
            }

            protected Factory() {
            }

            static Play a(P p) {
                Play play = null;
                if (p != null) {
                    play = new Play();
                    play.d = UserAction.Factory.a(p.d());
                    try {
                        play.a = p.a.j();
                    } catch (NullPointerException e) {
                        Logger.w(Logger.PROTOCOL_TAG, "null play report parent");
                    }
                    play.c = p.c;
                    play.b = p.b;
                }
                return play;
            }
        }

        /* JADX INFO: compiled from: vungle */
        public static class UserAction extends BaseJsonObject {
            protected String a;
            protected Long b;
            protected String c;

            protected UserAction() {
            }

            @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
            /* JADX INFO: renamed from: a */
            public final JSONObject b() throws JSONException {
                JSONObject jSONObjectB = super.b();
                jSONObjectB.putOpt("action", this.a);
                jSONObjectB.putOpt("timestamp_millis", this.b);
                jSONObjectB.putOpt(NativeCallKeys.VALUE, this.c);
                return jSONObjectB;
            }

            /* JADX INFO: compiled from: vungle */
            public static abstract class Factory<R extends RequestAdResponse, T extends AdReport<T, P, E, A, V, R>, P extends AdPlay<T, P, E, A, V, R>, E extends AdReportEvent<T, P, E, A, V, R>, A extends Ad<A, V, R>, V extends Video<A, V, R>> extends MessageFactory<UserAction> {
                @Override // com.vungle.publisher.protocol.message.MessageFactory
                protected final /* synthetic */ UserAction a() {
                    return new UserAction();
                }

                @Override // com.vungle.publisher.protocol.message.MessageFactory
                protected final /* bridge */ /* synthetic */ UserAction[] a(int i) {
                    return new UserAction[i];
                }

                protected Factory() {
                }

                protected static UserAction[] a(E[] eArr) {
                    UserAction userAction;
                    int length = eArr == null ? 0 : eArr.length;
                    if (length <= 0) {
                        return null;
                    }
                    UserAction[] userActionArr = new UserAction[length];
                    int length2 = eArr.length;
                    int i = 0;
                    int i2 = 0;
                    while (i < length2) {
                        E e = eArr[i];
                        int i3 = i2 + 1;
                        if (e != null) {
                            userAction = new UserAction();
                            userAction.a = String.valueOf(e.b);
                            userAction.b = Long.valueOf(e.c);
                            userAction.c = e.d;
                        } else {
                            userAction = null;
                        }
                        userActionArr[i2] = userAction;
                        i++;
                        i2 = i3;
                    }
                    return userActionArr;
                }
            }
        }
    }
}

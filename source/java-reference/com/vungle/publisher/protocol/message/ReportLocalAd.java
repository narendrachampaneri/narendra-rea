package com.vungle.publisher.protocol.message;

import com.vungle.publisher.ci;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.LocalAdPlay;
import com.vungle.publisher.db.model.LocalAdReport;
import com.vungle.publisher.db.model.LocalAdReportEvent;
import com.vungle.publisher.db.model.LocalVideo;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportLocalAd extends ReportAd<RequestLocalAd, ReportLocalAd> {
    ExtraInfo m;

    @Override // com.vungle.publisher.protocol.message.ReportAd, com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
    /* JADX INFO: renamed from: a */
    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectB = super.b();
        if (jSONObjectB != null) {
            jSONObjectB.putOpt("extraInfo", ci.a(this.m));
        }
        return jSONObjectB;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends ReportAd.Factory<RequestLocalAd, RequestLocalAdResponse, ReportLocalAd, LocalAdReport, LocalAdPlay, LocalAdReportEvent, LocalAd, LocalVideo> {

        @Inject
        PlayFactory b;

        @Inject
        RequestLocalAd.Factory c;

        @Override // com.vungle.publisher.protocol.message.ReportAd.Factory
        public final /* synthetic */ ReportAd a(AdReport adReport) {
            LocalAdReport localAdReport = (LocalAdReport) adReport;
            ReportLocalAd reportLocalAd = (ReportLocalAd) super.a(localAdReport);
            if (reportLocalAd != null) {
                reportLocalAd.a = Integer.valueOf(localAdReport.A());
                reportLocalAd.m = ExtraInfo.Factory.b(localAdReport.f());
                reportLocalAd.l = localAdReport.e().k().b.b;
            }
            return reportLocalAd;
        }

        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* synthetic */ Object a() {
            return new ReportLocalAd();
        }

        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* bridge */ /* synthetic */ Object[] a(int i) {
            return new ReportLocalAd[i];
        }

        @Override // com.vungle.publisher.protocol.message.ReportAd.Factory
        protected final /* bridge */ /* synthetic */ RequestAd.a b() {
            return this.c;
        }

        Factory() {
        }

        /* JADX INFO: compiled from: vungle */
        @Singleton
        static class PlayFactory extends ReportAd.Play.Factory<RequestLocalAdResponse, LocalAdReport, LocalAdPlay, LocalAdReportEvent, LocalAd, LocalVideo> {

            @Inject
            UserActionFactory a;

            PlayFactory() {
            }

            /* JADX INFO: compiled from: vungle */
            @Singleton
            static class UserActionFactory extends ReportAd.Play.UserAction.Factory<RequestLocalAdResponse, LocalAdReport, LocalAdPlay, LocalAdReportEvent, LocalAd, LocalVideo> {
                @Inject
                UserActionFactory() {
                }
            }
        }
    }
}

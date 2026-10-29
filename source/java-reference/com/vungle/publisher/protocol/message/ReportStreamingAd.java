package com.vungle.publisher.protocol.message;

import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.StreamingAd;
import com.vungle.publisher.db.model.StreamingAdPlay;
import com.vungle.publisher.db.model.StreamingAdReport;
import com.vungle.publisher.db.model.StreamingAdReportEvent;
import com.vungle.publisher.db.model.StreamingVideo;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportStreamingAd extends ReportAd<RequestStreamingAd, ReportStreamingAd> {

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends ReportAd.Factory<RequestStreamingAd, RequestStreamingAdResponse, ReportStreamingAd, StreamingAdReport, StreamingAdPlay, StreamingAdReportEvent, StreamingAd, StreamingVideo> {

        @Inject
        PlayFactory b;

        @Inject
        RequestStreamingAd.Factory c;

        @Override // com.vungle.publisher.protocol.message.ReportAd.Factory
        public final /* synthetic */ ReportAd a(AdReport adReport) {
            StreamingAdReport streamingAdReport = (StreamingAdReport) adReport;
            ReportStreamingAd reportStreamingAd = (ReportStreamingAd) super.a(streamingAdReport);
            if (reportStreamingAd != null) {
                reportStreamingAd.l = streamingAdReport.e().k().c;
            }
            return reportStreamingAd;
        }

        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* synthetic */ Object a() {
            return new ReportStreamingAd();
        }

        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* bridge */ /* synthetic */ Object[] a(int i) {
            return new ReportStreamingAd[i];
        }

        @Override // com.vungle.publisher.protocol.message.ReportAd.Factory
        protected final /* bridge */ /* synthetic */ RequestAd.a b() {
            return this.c;
        }

        Factory() {
        }

        /* JADX INFO: compiled from: vungle */
        @Singleton
        static class PlayFactory extends ReportAd.Play.Factory<RequestStreamingAdResponse, StreamingAdReport, StreamingAdPlay, StreamingAdReportEvent, StreamingAd, StreamingVideo> {

            @Inject
            UserActionFactory a;

            PlayFactory() {
            }

            /* JADX INFO: compiled from: vungle */
            @Singleton
            static class UserActionFactory extends ReportAd.Play.UserAction.Factory<RequestStreamingAdResponse, StreamingAdReport, StreamingAdPlay, StreamingAdReportEvent, StreamingAd, StreamingVideo> {
                @Inject
                UserActionFactory() {
                }
            }
        }
    }
}

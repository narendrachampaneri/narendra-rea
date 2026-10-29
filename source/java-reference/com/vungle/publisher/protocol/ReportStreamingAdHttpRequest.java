package com.vungle.publisher.protocol;

import com.vungle.publisher.db.model.StreamingAd;
import com.vungle.publisher.db.model.StreamingAdPlay;
import com.vungle.publisher.db.model.StreamingAdReport;
import com.vungle.publisher.db.model.StreamingAdReportEvent;
import com.vungle.publisher.db.model.StreamingVideo;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.protocol.message.ReportAd;
import com.vungle.publisher.protocol.message.ReportStreamingAd;
import com.vungle.publisher.protocol.message.RequestStreamingAd;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportStreamingAdHttpRequest extends ReportAdHttpRequest<RequestStreamingAd, ReportStreamingAd, StreamingAdReport> {

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class Factory extends ReportAdHttpRequest.Factory<RequestStreamingAd, RequestStreamingAdResponse, ReportStreamingAd, ReportStreamingAdHttpRequest, StreamingAdReport, StreamingAdPlay, StreamingAdReportEvent, StreamingAd, StreamingVideo> {

        @Inject
        ReportStreamingAd.Factory g;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.protocol.ReportAdHttpRequest.Factory, com.vungle.publisher.net.http.HttpRequest.Factory
        public final /* synthetic */ HttpRequest b() {
            return new ReportStreamingAdHttpRequest();
        }

        @Override // com.vungle.publisher.protocol.ReportAdHttpRequest.Factory
        protected final /* bridge */ /* synthetic */ ReportAd.Factory d() {
            return this.g;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.protocol.ReportAdHttpRequest.Factory
        /* JADX INFO: renamed from: e */
        public final /* synthetic */ ReportAdHttpRequest b() {
            return new ReportStreamingAdHttpRequest();
        }

        Factory() {
        }
    }
}

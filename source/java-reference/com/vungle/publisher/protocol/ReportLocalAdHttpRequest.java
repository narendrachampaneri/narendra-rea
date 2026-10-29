package com.vungle.publisher.protocol;

import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.LocalAdPlay;
import com.vungle.publisher.db.model.LocalAdReport;
import com.vungle.publisher.db.model.LocalAdReportEvent;
import com.vungle.publisher.db.model.LocalVideo;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.protocol.message.ReportAd;
import com.vungle.publisher.protocol.message.ReportLocalAd;
import com.vungle.publisher.protocol.message.RequestLocalAd;
import com.vungle.publisher.protocol.message.RequestLocalAdResponse;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ReportLocalAdHttpRequest extends ReportAdHttpRequest<RequestLocalAd, ReportLocalAd, LocalAdReport> {

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class Factory extends ReportAdHttpRequest.Factory<RequestLocalAd, RequestLocalAdResponse, ReportLocalAd, ReportLocalAdHttpRequest, LocalAdReport, LocalAdPlay, LocalAdReportEvent, LocalAd, LocalVideo> {

        @Inject
        ReportLocalAd.Factory g;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.protocol.ReportAdHttpRequest.Factory, com.vungle.publisher.net.http.HttpRequest.Factory
        public final /* synthetic */ HttpRequest b() {
            return new ReportLocalAdHttpRequest();
        }

        @Override // com.vungle.publisher.protocol.ReportAdHttpRequest.Factory
        protected final /* bridge */ /* synthetic */ ReportAd.Factory d() {
            return this.g;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.protocol.ReportAdHttpRequest.Factory
        /* JADX INFO: renamed from: e */
        public final /* synthetic */ ReportAdHttpRequest b() {
            return new ReportLocalAdHttpRequest();
        }

        Factory() {
        }
    }
}

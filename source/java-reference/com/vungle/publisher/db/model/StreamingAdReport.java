package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class StreamingAdReport extends AdReport<StreamingAdReport, StreamingAdPlay, StreamingAdReportEvent, StreamingAd, StreamingVideo, RequestStreamingAdResponse> {

    @Inject
    Factory p;

    @Inject
    StreamingAdPlay.Factory q;

    @Override // com.vungle.publisher.db.model.AdReport
    protected final /* bridge */ /* synthetic */ AdPlay.Factory a() {
        return this.q;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.p;
    }

    protected StreamingAdReport() {
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends AdReport.BaseFactory<StreamingAdReport, StreamingAdPlay, StreamingAdReportEvent, StreamingAd, StreamingVideo, RequestStreamingAdResponse> {

        @Inject
        StreamingAdPlay.Factory b;

        @Inject
        StreamingAd.Factory d;

        @Inject
        Provider<StreamingAdReport> e;

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ int a(List list) {
            return super.a(list);
        }

        @Override // com.vungle.publisher.db.model.AdReport.BaseFactory
        protected final /* bridge */ /* synthetic */ Ad.Factory a() {
            return this.d;
        }

        @Override // com.vungle.publisher.db.model.AdReport.BaseFactory
        protected final /* bridge */ /* synthetic */ AdPlay.Factory b() {
            return this.b;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new StreamingAdReport[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* synthetic */ bi c_() {
            return this.e.get();
        }

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ List d() {
            return super.d();
        }

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ List d(int i) {
            return super.d(i);
        }

        protected Factory() {
        }

        @Override // com.vungle.publisher.db.model.AdReport.BaseFactory
        protected final Ad.b c() {
            return Ad.b.streaming;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final String e_() {
            return "ad_report";
        }
    }
}

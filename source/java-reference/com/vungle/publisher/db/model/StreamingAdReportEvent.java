package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class StreamingAdReportEvent extends AdReportEvent<StreamingAdReport, StreamingAdPlay, StreamingAdReportEvent, StreamingAd, StreamingVideo, RequestStreamingAdResponse> {

    @Inject
    Factory e;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.e;
    }

    protected StreamingAdReportEvent() {
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class Factory extends AdReportEvent.Factory<StreamingAdReport, StreamingAdPlay, StreamingAdReportEvent, StreamingAd, StreamingVideo, RequestStreamingAdResponse> {

        @Inject
        Provider<StreamingAdReportEvent> a;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new StreamingAdReportEvent[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* synthetic */ bi c_() {
            return this.a.get();
        }

        protected Factory() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final String e_() {
            return "ad_report_event";
        }
    }
}

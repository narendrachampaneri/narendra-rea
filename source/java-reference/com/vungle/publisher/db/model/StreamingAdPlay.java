package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class StreamingAdPlay extends AdPlay<StreamingAdReport, StreamingAdPlay, StreamingAdReportEvent, StreamingAd, StreamingVideo, RequestStreamingAdResponse> {

    @Inject
    Factory e;

    @Inject
    StreamingAdReportEvent.Factory f;

    @Override // com.vungle.publisher.db.model.AdPlay
    protected final /* bridge */ /* synthetic */ AdReportEvent.Factory a() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.e;
    }

    protected StreamingAdPlay() {
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class Factory extends AdPlay.Factory<StreamingAdReport, StreamingAdPlay, StreamingAdReportEvent, StreamingAd, StreamingVideo, RequestStreamingAdResponse> {

        @Inject
        Provider<StreamingAdPlay> a;

        @Inject
        StreamingAdReportEvent.Factory b;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new StreamingAdPlay[i];
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
            return "ad_play";
        }
    }
}

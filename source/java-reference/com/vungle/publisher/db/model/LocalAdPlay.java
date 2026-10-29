package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import com.vungle.publisher.protocol.message.RequestLocalAdResponse;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class LocalAdPlay extends AdPlay<LocalAdReport, LocalAdPlay, LocalAdReportEvent, LocalAd, LocalVideo, RequestLocalAdResponse> {

    @Inject
    Factory e;

    @Inject
    LocalAdReportEvent.Factory f;

    @Override // com.vungle.publisher.db.model.AdPlay
    protected final /* bridge */ /* synthetic */ AdReportEvent.Factory a() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.e;
    }

    protected LocalAdPlay() {
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class Factory extends AdPlay.Factory<LocalAdReport, LocalAdPlay, LocalAdReportEvent, LocalAd, LocalVideo, RequestLocalAdResponse> {

        @Inject
        Provider<LocalAdPlay> a;

        @Inject
        LocalAdReportEvent.Factory b;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new LocalAdPlay[i];
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

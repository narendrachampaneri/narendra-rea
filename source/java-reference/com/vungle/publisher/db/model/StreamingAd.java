package com.vungle.publisher.db.model;

import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.vungle.publisher.bi;
import com.vungle.publisher.bj;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class StreamingAd extends Ad<StreamingAd, StreamingVideo, RequestStreamingAdResponse> {

    @Inject
    Factory v;

    @Override // com.vungle.publisher.db.model.Ad
    public final /* synthetic */ bj a(bj.b bVar) {
        switch (bVar) {
            case streamingVideo:
                return k();
            default:
                super.a(bVar);
                return null;
        }
    }

    @Override // com.vungle.publisher.db.model.Ad
    protected final /* bridge */ /* synthetic */ Ad.Factory a() {
        return this.v;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.v;
    }

    protected StreamingAd() {
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends Ad.Factory<StreamingAd, StreamingVideo, RequestStreamingAdResponse> {

        @Inject
        Provider<StreamingAd> d;

        @Inject
        StreamingVideo.Factory e;

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ int a(List list) {
            return super.a(list);
        }

        @Override // com.vungle.publisher.db.model.Ad.Factory
        public final /* bridge */ /* synthetic */ boolean a(Ad ad) {
            return super.a((Ad<?, ?, ?>) ad);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ String[] b(int i) {
            return new String[i];
        }

        @Override // com.vungle.publisher.db.model.Ad.Factory
        protected final /* bridge */ /* synthetic */ Video.Factory b_() {
            return this.e;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new StreamingAd[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* synthetic */ bi c_() {
            return this.d.get();
        }

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ List d() {
            return super.d();
        }

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ List d(int i) {
            return super.d(i);
        }

        @Override // com.vungle.publisher.db.model.Ad.Factory
        public final StreamingAd a(RequestStreamingAdResponse requestStreamingAdResponse) {
            StreamingAd streamingAd = (StreamingAd) super.a(requestStreamingAdResponse);
            streamingAd.a(Ad.a.ready);
            return streamingAd;
        }

        @Override // com.vungle.publisher.db.model.Ad.Factory
        protected final Ad.b b() {
            return Ad.b.streaming;
        }

        public final StreamingAd a(String str) {
            return (StreamingAd) super.a(Ad.b.streaming, str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final String e_() {
            return AdDatabaseHelper.TABLE_AD;
        }
    }
}

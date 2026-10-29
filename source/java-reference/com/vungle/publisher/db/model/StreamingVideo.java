package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import com.vungle.publisher.bj;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class StreamingVideo extends Video<StreamingAd, StreamingVideo, RequestStreamingAdResponse> {

    @Inject
    StreamingAd.Factory a;

    @Inject
    Factory b;
    public String c;

    @Override // com.vungle.publisher.db.model.Viewable
    protected final /* bridge */ /* synthetic */ Ad.Factory C() {
        return this.a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.b;
    }

    protected StreamingVideo() {
    }

    @Override // com.vungle.publisher.db.model.Video
    public final Uri i() {
        return Uri.parse(this.c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.db.model.Video, com.vungle.publisher.db.model.Viewable, com.vungle.publisher.bi
    public final ContentValues a(boolean z) {
        ContentValues contentValuesA = super.a(z);
        contentValuesA.put("url", this.c);
        return contentValuesA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.db.model.Video, com.vungle.publisher.db.model.Viewable, com.vungle.publisher.bi
    public final StringBuilder p() {
        StringBuilder sbP = super.p();
        bi.a(sbP, "url", this.c, false);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends Video.Factory<StreamingAd, StreamingVideo, RequestStreamingAdResponse> {
        private static final bj.b b = bj.b.streamingVideo;

        @Inject
        Provider<StreamingVideo> a;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.db.model.Video.Factory, com.vungle.publisher.db.model.Viewable.BaseFactory, com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi a(bi biVar, Cursor cursor) {
            return a((StreamingVideo) biVar, cursor, false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new StreamingVideo[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* synthetic */ bi c_() {
            return this.a.get();
        }

        protected Factory() {
        }

        @Override // com.vungle.publisher.db.model.Video.Factory
        protected final bj.b b() {
            return b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.vungle.publisher.db.model.Video.Factory, com.vungle.publisher.db.model.Viewable.BaseFactory
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StreamingVideo b(StreamingAd streamingAd, RequestStreamingAdResponse requestStreamingAdResponse) {
            StreamingVideo streamingVideo = (StreamingVideo) super.b(streamingAd, requestStreamingAdResponse);
            if (streamingVideo != null) {
                streamingVideo.c = requestStreamingAdResponse.m();
                streamingVideo.q = b;
            }
            return streamingVideo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.vungle.publisher.db.model.Video.Factory, com.vungle.publisher.db.model.Viewable.BaseFactory
        public StreamingVideo a(StreamingVideo streamingVideo, Cursor cursor, boolean z) {
            super.a(streamingVideo, cursor, z);
            streamingVideo.c = bg.f(cursor, "url");
            return streamingVideo;
        }
    }
}

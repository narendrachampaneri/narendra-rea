package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import com.vungle.publisher.bj;
import com.vungle.publisher.cw;
import com.vungle.publisher.protocol.message.RequestLocalAdResponse;
import java.io.File;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class LocalVideo extends Video<LocalAd, LocalVideo, RequestLocalAdResponse> implements LocalViewableDelegate.a {
    String a;
    public LocalViewableDelegate b;

    @Inject
    LocalAd.Factory c;

    @Inject
    Factory d;

    @Override // com.vungle.publisher.db.model.Viewable
    protected final /* bridge */ /* synthetic */ Ad.Factory C() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.d;
    }

    protected LocalVideo() {
    }

    @Override // com.vungle.publisher.bk
    public final String g() {
        return this.b.b;
    }

    @Override // com.vungle.publisher.bk
    public final void a(Integer num) {
        this.b.c = num;
    }

    @Override // com.vungle.publisher.bk
    public final String h() {
        return "mp4";
    }

    @Override // com.vungle.publisher.bk
    public final String k() {
        return this.b.c();
    }

    @Override // com.vungle.publisher.db.model.Video
    public final Uri i() {
        return Uri.fromFile(new File(this.b.c()));
    }

    @Override // com.vungle.publisher.bk
    public final void a(cw cwVar) {
        this.b.a(cwVar);
    }

    @Override // com.vungle.publisher.bk
    public final boolean l() {
        return this.b.e();
    }

    @Override // com.vungle.publisher.db.model.LocalViewableDelegate.a
    public final boolean q() {
        return this.b.f();
    }

    @Override // com.vungle.publisher.bk
    public final boolean t() {
        return this.b.f();
    }

    @Override // com.vungle.publisher.db.model.LocalViewableDelegate.a
    public final boolean u() {
        return this.b.g();
    }

    @Override // com.vungle.publisher.bi
    public final int n() {
        return this.b.d();
    }

    @Override // com.vungle.publisher.bk
    public final boolean A() {
        return this.b.h();
    }

    @Override // com.vungle.publisher.bk
    public final int B() {
        return super.n();
    }

    @Override // com.vungle.publisher.db.model.Video, com.vungle.publisher.db.model.Viewable, com.vungle.publisher.bi
    protected final ContentValues a(boolean z) {
        ContentValues contentValuesA = super.a(z);
        this.b.a(contentValuesA);
        contentValuesA.put("checksum", this.a);
        return contentValuesA;
    }

    @Override // com.vungle.publisher.db.model.Video, com.vungle.publisher.db.model.Viewable, com.vungle.publisher.bi
    protected final StringBuilder p() {
        StringBuilder sbP = super.p();
        this.b.a(sbP);
        bi.a(sbP, "checksum", this.a, false);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends Video.Factory<LocalAd, LocalVideo, RequestLocalAdResponse> {
        private static final bj.b d = bj.b.localVideo;

        @Inject
        Provider<LocalVideo> a;

        @Inject
        LocalViewableDelegate.Factory b;

        @Override // com.vungle.publisher.db.model.Video.Factory, com.vungle.publisher.db.model.Viewable.BaseFactory, com.vungle.publisher.bi.a
        protected final /* bridge */ /* synthetic */ bi a(bi biVar, Cursor cursor) {
            return a((LocalVideo) biVar, cursor, false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new LocalVideo[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* synthetic */ bi c_() {
            LocalVideo localVideo = this.a.get();
            localVideo.b = this.b.a(localVideo);
            return localVideo;
        }

        protected Factory() {
        }

        @Override // com.vungle.publisher.db.model.Video.Factory
        protected final bj.b b() {
            return d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.vungle.publisher.db.model.Video.Factory, com.vungle.publisher.db.model.Viewable.BaseFactory
        public LocalVideo b(LocalAd localAd, RequestLocalAdResponse requestLocalAdResponse) {
            LocalVideo localVideo = (LocalVideo) super.b(localAd, requestLocalAdResponse);
            if (localVideo != null) {
                localVideo.a = requestLocalAdResponse.w;
                localVideo.a(requestLocalAdResponse.v);
                localVideo.b.b = requestLocalAdResponse.m();
                localVideo.q = d;
            }
            return localVideo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.vungle.publisher.db.model.Video.Factory, com.vungle.publisher.db.model.Viewable.BaseFactory
        public LocalVideo a(LocalVideo localVideo, Cursor cursor, boolean z) {
            super.a(localVideo, cursor, z);
            localVideo.b.a(cursor);
            localVideo.a = bg.f(cursor, "checksum");
            return localVideo;
        }
    }
}

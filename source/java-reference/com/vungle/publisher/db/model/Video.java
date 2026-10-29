package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import com.vungle.publisher.bj;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.Video;
import com.vungle.publisher.protocol.message.RequestAdResponse;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class Video<A extends Ad<A, V, R>, V extends Video<A, V, R>, R extends RequestAdResponse> extends Viewable<A, V, R> {
    public Float e;
    public Integer f;
    public Integer g;
    public Boolean h;
    public Boolean i;
    public Integer j;
    public Integer k;
    public Integer l;
    Integer m;
    public Integer n;

    public abstract Uri i();

    protected Video() {
    }

    @Override // com.vungle.publisher.db.model.Viewable, com.vungle.publisher.bi
    protected ContentValues a(boolean z) {
        ContentValues contentValuesA = super.a(z);
        contentValuesA.put("cta_clickable_percent", this.e);
        contentValuesA.put("enable_cta_delay_seconds", this.f);
        contentValuesA.put("height", this.g);
        contentValuesA.put("is_cta_enabled", this.h);
        contentValuesA.put("is_cta_shown_on_touch", this.i);
        contentValuesA.put("show_cta_delay_seconds", this.j);
        contentValuesA.put("show_close_delay_incentivized_seconds", this.k);
        contentValuesA.put("show_close_delay_interstitial_seconds", this.l);
        contentValuesA.put("show_countdown_delay_seconds", this.m);
        contentValuesA.put("width", this.n);
        return contentValuesA;
    }

    @Override // com.vungle.publisher.db.model.Viewable, com.vungle.publisher.bi
    protected StringBuilder p() {
        StringBuilder sbP = super.p();
        bi.a(sbP, "cta_clickable_percent", this.e, false);
        bi.a(sbP, "enable_cta_delay_seconds", this.f, false);
        bi.a(sbP, "height", this.g, false);
        bi.a(sbP, "is_cta_enabled", this.h, false);
        bi.a(sbP, "is_cta_shown_on_touch", this.i, false);
        bi.a(sbP, "show_cta_delay_seconds", this.j, false);
        bi.a(sbP, "show_close_delay_incentivized_seconds", this.k, false);
        bi.a(sbP, "show_close_delay_interstitial_seconds", this.l, false);
        bi.a(sbP, "show_countdown_delay_seconds", this.m, false);
        bi.a(sbP, "width", this.n, false);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class Factory<A extends Ad<A, V, R>, V extends Video<A, V, R>, R extends RequestAdResponse> extends Viewable.BaseFactory<A, V, V, R> {
        protected abstract bj.b b();

        @Override // com.vungle.publisher.db.model.Viewable.BaseFactory, com.vungle.publisher.bi.a
        protected /* bridge */ /* synthetic */ bi a(bi biVar, Cursor cursor) {
            return a((Video) biVar, cursor, false);
        }

        protected Factory() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.db.model.Viewable.BaseFactory
        /* JADX INFO: renamed from: a */
        public V b(A a, R r) {
            V v = (V) super.b(a, r);
            if (v != null) {
                a(v, r);
            }
            return v;
        }

        static V a(V v, RequestAdResponse requestAdResponse) {
            v.g = requestAdResponse.l();
            v.k = requestAdResponse.h();
            v.l = requestAdResponse.i();
            v.m = requestAdResponse.j();
            v.n = requestAdResponse.n();
            RequestAdResponse.CallToActionOverlay callToActionOverlayD = requestAdResponse.d();
            if (callToActionOverlayD != null) {
                v.e = callToActionOverlayD.d();
                v.f = callToActionOverlayD.h();
                v.h = callToActionOverlayD.e();
                v.i = callToActionOverlayD.f();
                v.j = callToActionOverlayD.g();
            }
            return v;
        }

        protected final V a(String str, boolean z) throws SQLException {
            return (V) a(str, b(), z);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.db.model.Viewable.BaseFactory
        public V a(V v, Cursor cursor, boolean z) {
            super.a(v, cursor, z);
            v.e = bg.b(cursor, "cta_clickable_percent");
            v.f = bg.d(cursor, "enable_cta_delay_seconds");
            v.g = bg.d(cursor, "height");
            v.h = bg.a(cursor, "is_cta_enabled");
            v.i = bg.a(cursor, "is_cta_shown_on_touch");
            v.j = bg.d(cursor, "show_cta_delay_seconds");
            v.k = bg.d(cursor, "show_close_delay_incentivized_seconds");
            v.l = bg.d(cursor, "show_close_delay_interstitial_seconds");
            v.m = bg.d(cursor, "show_countdown_delay_seconds");
            v.n = bg.d(cursor, "width");
            return v;
        }
    }
}

package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.vungle.log.Logger;
import com.vungle.publisher.bg;
import com.vungle.publisher.bi;
import com.vungle.publisher.protocol.message.RequestLocalAdResponse;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class LocalAdReport extends AdReport<LocalAdReport, LocalAdPlay, LocalAdReportEvent, LocalAd, LocalVideo, RequestLocalAdResponse> {
    Long p;

    @Inject
    Factory q;

    @Inject
    LocalAdPlay.Factory r;

    @Override // com.vungle.publisher.db.model.AdReport
    protected final /* bridge */ /* synthetic */ AdPlay.Factory a() {
        return this.r;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.bi
    public final /* bridge */ /* synthetic */ bi.a a_() {
        return this.q;
    }

    protected LocalAdReport() {
    }

    public final int A() {
        if (this.p == null) {
            Logger.w(Logger.REPORT_TAG, "download end millis null for " + y());
            return -1;
        }
        if (this.p.longValue() < 0) {
            return 0;
        }
        if (this.d == null) {
            Logger.w(Logger.REPORT_TAG, "insert timestamp millis null for " + y());
            return -1;
        }
        return (int) (this.p.longValue() - this.d.longValue());
    }

    public final void d(Long l) {
        this.p = l;
        Logger.d(Logger.REPORT_TAG, "setting ad download end millis " + l + " (duration " + A() + " ms) for " + y());
        x();
    }

    @Override // com.vungle.publisher.db.model.AdReport, com.vungle.publisher.bi
    protected final ContentValues a(boolean z) {
        ContentValues contentValuesA = super.a(z);
        contentValuesA.put("download_end_millis", this.p);
        return contentValuesA;
    }

    @Override // com.vungle.publisher.db.model.AdReport, com.vungle.publisher.bi
    public final StringBuilder p() {
        StringBuilder sbP = super.p();
        bi.a(sbP, "download_end_millis", this.p, false);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory extends AdReport.BaseFactory<LocalAdReport, LocalAdPlay, LocalAdReportEvent, LocalAd, LocalVideo, RequestLocalAdResponse> {

        @Inject
        LocalAd.Factory b;

        @Inject
        LocalAdPlay.Factory d;

        @Inject
        Provider<LocalAdReport> e;

        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ int a(List list) {
            return super.a(list);
        }

        @Override // com.vungle.publisher.db.model.AdReport.BaseFactory, com.vungle.publisher.bi.a
        protected final /* bridge */ /* synthetic */ bi a(bi biVar, Cursor cursor) {
            return a((LocalAdReport) biVar, cursor, false);
        }

        @Override // com.vungle.publisher.db.model.AdReport.BaseFactory
        protected final /* bridge */ /* synthetic */ Ad.Factory a() {
            return this.b;
        }

        @Override // com.vungle.publisher.db.model.AdReport.BaseFactory
        protected final /* bridge */ /* synthetic */ AdPlay.Factory b() {
            return this.d;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final /* bridge */ /* synthetic */ bi[] c(int i) {
            return new LocalAdReport[i];
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
            return Ad.b.local;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.vungle.publisher.db.model.AdReport.BaseFactory
        public LocalAdReport a(LocalAdReport localAdReport, Cursor cursor, boolean z) {
            super.a(localAdReport, cursor, z);
            localAdReport.p = bg.e(cursor, "download_end_millis");
            return localAdReport;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.bi.a
        public final String e_() {
            return "ad_report";
        }
    }
}

package com.vungle.publisher.reporting;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.newrelic.agent.android.instrumentation.SQLiteInstrumentation;
import com.vungle.log.Logger;
import com.vungle.publisher.a;
import com.vungle.publisher.ad;
import com.vungle.publisher.ag;
import com.vungle.publisher.ah;
import com.vungle.publisher.al;
import com.vungle.publisher.an;
import com.vungle.publisher.ao;
import com.vungle.publisher.ap;
import com.vungle.publisher.aq;
import com.vungle.publisher.bb;
import com.vungle.publisher.bc;
import com.vungle.publisher.by;
import com.vungle.publisher.cr;
import com.vungle.publisher.d;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.AdPlay;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.AdReportEvent;
import com.vungle.publisher.db.model.EventTracking;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.db.model.StreamingAd;
import com.vungle.publisher.g;
import com.vungle.publisher.h;
import com.vungle.publisher.o;
import com.vungle.publisher.p;
import com.vungle.publisher.y;
import com.vungle.publisher.z;
import java.util.HashMap;
import java.util.HashSet;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AdReportEventListener extends by {
    private static final EventTracking.a[] f = {EventTracking.a.play_percentage_0, EventTracking.a.play_percentage_25, EventTracking.a.play_percentage_50, EventTracking.a.play_percentage_75, EventTracking.a.play_percentage_80, EventTracking.a.play_percentage_100};

    @Inject
    AdServiceReportingHandler a;

    @Inject
    AdReport.Factory b;

    @Inject
    AdReportManager c;

    @Inject
    LoggedException.Factory d;

    @Inject
    cr e;
    private Ad<?, ?, ?> g;
    private AdPlay<?, ?, ?, ?, ?, ?> i;
    private AdReport<?, ?, ?, ?, ?, ?> j;
    private int k;
    private final HashSet<EventTracking.a> l = new HashSet<>();

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        public AdReportEventListener a;
    }

    public final void a(Ad<?, ?, ?> ad) {
        AdReport<?, ?, ?, ?, ?, ?> adReportA;
        if (this.g == null || !this.g.a(ad)) {
            Logger.i(Logger.REPORT_TAG, "new ad " + ad.y());
            this.g = ad;
            AdReportManager adReportManager = this.c;
            if (ad instanceof LocalAd) {
                adReportA = adReportManager.c.a((LocalAd) ad);
            } else {
                if (!(ad instanceof StreamingAd)) {
                    throw new IllegalArgumentException("unknown ad type " + ad);
                }
                adReportA = adReportManager.f.a((StreamingAd) ad);
            }
            this.j = adReportA;
            this.i = this.j.q();
            a();
            return;
        }
        Logger.v(Logger.REPORT_TAG, "same ad " + ad.y());
    }

    private void a() {
        this.k = 0;
        this.l.clear();
    }

    public void onEvent(aq event) {
        float f2 = event.d;
        if (event.b > event.a) {
            a(AdReportEvent.a.volumeup, Float.valueOf(f2));
        } else {
            a(AdReportEvent.a.volumedown, Float.valueOf(f2));
        }
    }

    public void onEvent(ap event) {
        a(AdReportEvent.a.volume, Float.valueOf(event.a));
    }

    public void onEvent(ao event) {
        if (event.a) {
            a(AdReportEvent.a.muted, null);
            a(EventTracking.a.mute);
        } else {
            a(AdReportEvent.a.unmuted, null);
            a(EventTracking.a.unmute);
        }
    }

    public void onEvent(z zVar) {
        a(EventTracking.a.postroll_view);
    }

    public void onEvent(al alVar) {
        a(EventTracking.a.video_close);
        a(AdReportEvent.a.close, null);
    }

    public void onEvent(an anVar) {
        a(AdReportEvent.a.videoreset, null);
    }

    public void onEvent(d dVar) {
        a(AdReportEvent.a.back, null);
    }

    public void onEvent(h event) {
        Ad<?, ?, ?> adA = event.a();
        this.e.a(adA, event.a, null, adA.g());
    }

    public void onEvent(ag startPlayAdEvent) {
        try {
            Logger.d(Logger.REPORT_TAG, "received play ad start");
            AdReport.Factory factory = this.b;
            ContentValues contentValues = new ContentValues();
            contentValues.put("status", AdReport.a.reportable.toString());
            SQLiteDatabase writableDatabase = factory.a.getWritableDatabase();
            String[] strArr = {AdReport.a.playing.toString()};
            if (writableDatabase instanceof SQLiteDatabase) {
                SQLiteInstrumentation.update(writableDatabase, "ad_report", contentValues, "status = ?", strArr);
            } else {
                writableDatabase.update("ad_report", contentValues, "status = ?", strArr);
            }
            a aVar = startPlayAdEvent.a;
            AdReport<?, ?, ?, ?, ?, ?> adReport = this.j;
            adReport.a(AdReport.a.playing);
            adReport.a(aVar.getExtras());
            boolean zIsIncentivized = aVar.isIncentivized();
            adReport.b(zIsIncentivized);
            if (zIsIncentivized) {
                adReport.b(aVar.getIncentivizedUserId());
            }
            adReport.c(aVar.getPlacement());
            adReport.c(Long.valueOf(startPlayAdEvent.e));
            adReport.x();
        } catch (Exception e) {
            this.d.a(Logger.REPORT_TAG, "error processing ad start event", e);
        }
    }

    public void onEvent(bc endPlayAdEvent) {
        try {
            Logger.d(Logger.REPORT_TAG, "received play ad end");
            a(endPlayAdEvent.a());
            a(endPlayAdEvent.b());
        } catch (Exception e) {
            this.d.a(Logger.REPORT_TAG, "error processing ad end", e);
        }
    }

    public void onEvent(bb destroyedErrorEndPlayEvent) {
        try {
            Logger.d(Logger.REPORT_TAG, "received destroyed ad end");
            a(destroyedErrorEndPlayEvent.e);
        } catch (Exception e) {
            Logger.w(Logger.REPORT_TAG, "error processing destroyed ad end");
        }
    }

    public void onEvent(o playVideoDurationEvent) {
        try {
            this.j.a(Integer.valueOf(playVideoDurationEvent.a));
        } catch (Exception e) {
            this.d.a(Logger.REPORT_TAG, "error updating video duration millis", e);
        }
    }

    public void onEvent(ah playVideoStartEvent) {
        try {
            this.i.c = Long.valueOf(playVideoStartEvent.e);
            this.i.m();
        } catch (Exception e) {
            this.d.a(Logger.REPORT_TAG, "error updating play start millis", e);
        }
    }

    public void onEvent(ad playVideoProgressEvent) {
        boolean z = false;
        try {
            int i = playVideoProgressEvent.a;
            boolean z2 = this.k < f.length;
            boolean z3 = playVideoProgressEvent instanceof p;
            if (z2 || z3) {
                Integer numJ = this.j.j();
                if (numJ == null) {
                    Logger.d(Logger.REPORT_TAG, "null video duration millis for " + this.j.y());
                    return;
                }
                if (numJ.intValue() == 0) {
                    Logger.w(Logger.REPORT_TAG, "video duration millis 0 for " + this.j.y());
                    return;
                }
                if (z2) {
                    float fIntValue = i / numJ.intValue();
                    EventTracking.a aVar = f[this.k];
                    z = fIntValue >= aVar.p;
                    if (z) {
                        this.k++;
                        a(aVar);
                    }
                }
                if (z || z3) {
                    try {
                        AdPlay<?, ?, ?, ?, ?, ?> adPlay = this.i;
                        Integer numValueOf = Integer.valueOf(playVideoProgressEvent.a);
                        if (adPlay.b == null || (numValueOf != null && numValueOf.intValue() > adPlay.b.intValue())) {
                            Logger.d(Logger.AD_TAG, "setting watched millis " + numValueOf);
                            adPlay.b = numValueOf;
                        } else {
                            Logger.w(Logger.AD_TAG, "ignoring decreased watched millis " + numValueOf);
                        }
                        this.i.m();
                        this.j.b(Long.valueOf(playVideoProgressEvent.e));
                    } catch (Exception e) {
                        this.d.a(Logger.REPORT_TAG, "error updating video view progress", e);
                    }
                }
            }
        } catch (Exception e2) {
            this.d.a(Logger.REPORT_TAG, "error handling video view progress", e2);
        }
    }

    public void onEvent(g event) {
        EventTracking.a aVar = event.a;
        if (aVar == EventTracking.a.video_click) {
            a(AdReportEvent.a.cta, null);
        } else if (aVar == EventTracking.a.postroll_click) {
            a(EventTracking.a.postroll_click);
        }
        a(AdReportEvent.a.download, null);
    }

    public void onEvent(y yVar) {
        try {
            a(AdReportEvent.a.replay, null);
            this.i = this.j.q();
        } catch (Exception e) {
            this.d.a(Logger.REPORT_TAG, "error reporting replay", e);
        }
    }

    private void a(AdReportEvent.a aVar, Object obj) {
        try {
            this.i.a(aVar, obj);
        } catch (Exception e) {
            this.d.a(Logger.REPORT_TAG, "error reporting event", e);
        }
    }

    private void a(EventTracking.a aVar) {
        if (this.g == null) {
            Logger.w(Logger.REPORT_TAG, "null ad in AdReportingHandler - cannot track event " + aVar);
            return;
        }
        if (!this.l.contains(aVar)) {
            Logger.v(Logger.REPORT_TAG, "tpat event " + aVar.name());
            cr crVar = this.e;
            Ad<?, ?, ?> ad = this.g;
            String[] strArrA = this.g.a(aVar);
            HashMap map = new HashMap();
            map.put("%timestamp%", String.valueOf(System.currentTimeMillis()));
            crVar.a(ad, aVar, map, strArrA);
            this.l.add(aVar);
        }
    }

    private void a(long j) {
        unregister();
        AdReport<?, ?, ?, ?, ?, ?> adReport = this.j;
        if (adReport == null) {
            Logger.d(Logger.REPORT_TAG, "no current ad report");
        } else {
            adReport.a(AdReport.a.reportable);
            adReport.a(Long.valueOf(j));
            adReport.x();
        }
        this.c.a();
        this.g = null;
        this.j = null;
        this.i = null;
        a();
    }
}

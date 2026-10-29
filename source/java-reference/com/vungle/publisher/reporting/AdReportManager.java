package com.vungle.publisher.reporting;

import com.vungle.log.Logger;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.LocalAdReport;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.db.model.StreamingAdReport;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import com.vungle.publisher.q;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AdReportManager {

    @Inject
    EventBus a;

    @Inject
    AdReport.Factory b;

    @Inject
    public LocalAdReport.Factory c;

    @Inject
    public ProtocolHttpGateway d;

    @Inject
    public SdkState e;

    @Inject
    StreamingAdReport.Factory f;

    @Inject
    LoggedException.Factory g;

    public final LocalAdReport a(LocalAd localAd) {
        return this.c.a(localAd);
    }

    public final void a() {
        try {
            List<AdReport<?, ?, ?, ?, ?, ?>> listA = this.b.a();
            Logger.i(Logger.REPORT_TAG, "sending " + listA.size() + " ad reports");
            for (final AdReport<?, ?, ?, ?, ?, ?> adReport : listA) {
                String strY = adReport.y();
                try {
                    Logger.d(Logger.REPORT_TAG, "sending " + strY);
                    final ProtocolHttpGateway protocolHttpGateway = this.d;
                    protocolHttpGateway.e.a(new Runnable() { // from class: com.vungle.publisher.protocol.ProtocolHttpGateway.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            HttpTransaction httpTransactionA;
                            try {
                                ReportAdHttpTransactionFactory reportAdHttpTransactionFactory = ProtocolHttpGateway.this.f;
                                AdReport adReport2 = adReport;
                                if (adReport2 instanceof LocalAdReport) {
                                    httpTransactionA = reportAdHttpTransactionFactory.a((LocalAdReport) adReport2);
                                } else {
                                    if (!(adReport2 instanceof StreamingAdReport)) {
                                        throw new UnsupportedOperationException("unknown report type " + adReport2);
                                    }
                                    httpTransactionA = reportAdHttpTransactionFactory.a((StreamingAdReport) adReport2);
                                }
                                httpTransactionA.a();
                            } catch (Exception e) {
                                ProtocolHttpGateway.this.d.a(Logger.PROTOCOL_TAG, "error sending report ad", e);
                            }
                        }
                    }, ScheduledPriorityExecutor.b.reportAd);
                } catch (Exception e) {
                    this.g.a(Logger.REPORT_TAG, "error sending " + strY, e);
                    adReport.a(AdReport.a.failed);
                    adReport.m();
                }
            }
            this.a.a(new q());
        } catch (Throwable th) {
            this.a.a(new q());
            throw th;
        }
    }
}

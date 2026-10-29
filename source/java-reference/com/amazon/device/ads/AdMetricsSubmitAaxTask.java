package com.amazon.device.ads;

import android.os.AsyncTask;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: compiled from: AdMetricsTasks.java */
/* JADX INFO: loaded from: classes.dex */
class AdMetricsSubmitAaxTask extends AsyncTask<WebRequest, Void, Void> implements TraceFieldInterface {
    private static final String LOGTAG = AdMetricsSubmitAaxTask.class.getSimpleName();
    public Trace _nr_trace;
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);

    @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
    public void _nr_setTrace(Trace trace) {
        try {
            this._nr_trace = trace;
        } catch (Exception e) {
        }
    }

    AdMetricsSubmitAaxTask() {
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ Void doInBackground(WebRequest[] webRequestArr) {
        try {
            TraceMachine.enterMethod(this._nr_trace, "AdMetricsSubmitAaxTask#doInBackground", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "AdMetricsSubmitAaxTask#doInBackground", null);
        }
        Void voidDoInBackground2 = doInBackground2(webRequestArr);
        TraceMachine.exitMethod();
        TraceMachine.unloadTraceContext(this);
        return voidDoInBackground2;
    }

    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    public Void doInBackground2(WebRequest... webRequests) {
        for (WebRequest webRequest : webRequests) {
            try {
                webRequest.makeCall();
            } catch (WebRequest.WebRequestException e) {
                switch (e.getStatus()) {
                    case INVALID_CLIENT_PROTOCOL:
                        this.logger.e("Unable to submit metrics for ad due to an Invalid Client Protocol, msg: %s", e.getMessage());
                        continue;
                    case NETWORK_FAILURE:
                        this.logger.e("Unable to submit metrics for ad due to Network Failure, msg: %s", e.getMessage());
                        continue;
                    case MALFORMED_URL:
                        this.logger.e("Unable to submit metrics for ad due to a Malformed Pixel URL, msg: %s", e.getMessage());
                        break;
                    case UNSUPPORTED_ENCODING:
                        break;
                    default:
                        continue;
                }
                this.logger.e("Unable to submit metrics for ad because of unsupported character encoding, msg: %s", e.getMessage());
            }
        }
        return null;
    }
}

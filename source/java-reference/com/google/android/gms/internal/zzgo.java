package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.amazon.device.ads.WebRequest;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.instrumentation.AsyncTaskInstrumentation;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: loaded from: classes.dex */
@zzhb
public class zzgo implements Runnable {
    private final Handler zzGj;
    private final long zzGk;
    private long zzGl;
    private zzjq.zza zzGm;
    protected boolean zzGn;
    protected boolean zzGo;
    private final int zzoG;
    private final int zzoH;
    protected final zzjp zzpD;

    protected final class zza extends AsyncTask<Void, Void, Boolean> implements TraceFieldInterface {
        public Trace _nr_trace;
        private final WebView zzGp;
        private Bitmap zzGq;

        public zza(WebView webView) {
            this.zzGp = webView;
        }

        @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
        public void _nr_setTrace(Trace trace) {
            try {
                this._nr_trace = trace;
            } catch (Exception e) {
            }
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            try {
                TraceMachine.enterMethod(this._nr_trace, "zzgo$zza#doInBackground", null);
            } catch (NoSuchFieldError e) {
                TraceMachine.enterMethod(null, "zzgo$zza#doInBackground", null);
            }
            Boolean boolZza = zza(voidArr);
            TraceMachine.exitMethod();
            TraceMachine.unloadTraceContext(this);
            return boolZza;
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ void onPostExecute(Boolean bool) {
            try {
                TraceMachine.enterMethod(this._nr_trace, "zzgo$zza#onPostExecute", null);
            } catch (NoSuchFieldError e) {
                TraceMachine.enterMethod(null, "zzgo$zza#onPostExecute", null);
            }
            zza(bool);
            TraceMachine.exitMethod();
        }

        @Override // android.os.AsyncTask
        protected synchronized void onPreExecute() {
            this.zzGq = Bitmap.createBitmap(zzgo.this.zzoG, zzgo.this.zzoH, Bitmap.Config.ARGB_8888);
            this.zzGp.setVisibility(0);
            this.zzGp.measure(View.MeasureSpec.makeMeasureSpec(zzgo.this.zzoG, 0), View.MeasureSpec.makeMeasureSpec(zzgo.this.zzoH, 0));
            this.zzGp.layout(0, 0, zzgo.this.zzoG, zzgo.this.zzoH);
            this.zzGp.draw(new Canvas(this.zzGq));
            this.zzGp.invalidate();
        }

        protected synchronized Boolean zza(Void... voidArr) {
            boolean zValueOf;
            int width = this.zzGq.getWidth();
            int height = this.zzGq.getHeight();
            if (width == 0 || height == 0) {
                zValueOf = false;
            } else {
                int i = 0;
                for (int i2 = 0; i2 < width; i2 += 10) {
                    for (int i3 = 0; i3 < height; i3 += 10) {
                        if (this.zzGq.getPixel(i2, i3) != 0) {
                            i++;
                        }
                    }
                }
                zValueOf = Boolean.valueOf(((double) i) / (((double) (width * height)) / 100.0d) > 0.1d);
            }
            return zValueOf;
        }

        protected void zza(Boolean bool) {
            zzgo.zzc(zzgo.this);
            if (bool.booleanValue() || zzgo.this.zzgg() || zzgo.this.zzGl <= 0) {
                zzgo.this.zzGo = bool.booleanValue();
                zzgo.this.zzGm.zza(zzgo.this.zzpD, true);
            } else if (zzgo.this.zzGl > 0) {
                if (zzin.zzQ(2)) {
                    zzin.zzaI("Ad not detected, scheduling another run.");
                }
                zzgo.this.zzGj.postDelayed(zzgo.this, zzgo.this.zzGk);
            }
        }
    }

    public zzgo(zzjq.zza zzaVar, zzjp zzjpVar, int i, int i2) {
        this(zzaVar, zzjpVar, i, i2, 200L, 50L);
    }

    public zzgo(zzjq.zza zzaVar, zzjp zzjpVar, int i, int i2, long j, long j2) {
        this.zzGk = j;
        this.zzGl = j2;
        this.zzGj = new Handler(Looper.getMainLooper());
        this.zzpD = zzjpVar;
        this.zzGm = zzaVar;
        this.zzGn = false;
        this.zzGo = false;
        this.zzoH = i2;
        this.zzoG = i;
    }

    static /* synthetic */ long zzc(zzgo zzgoVar) {
        long j = zzgoVar.zzGl - 1;
        zzgoVar.zzGl = j;
        return j;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.zzpD == null || zzgg()) {
            this.zzGm.zza(this.zzpD, true);
            return;
        }
        zza zzaVar = new zza(this.zzpD.getWebView());
        Void[] voidArr = new Void[0];
        if (zzaVar instanceof AsyncTask) {
            AsyncTaskInstrumentation.execute(zzaVar, voidArr);
        } else {
            zzaVar.execute(voidArr);
        }
    }

    public void zza(AdResponseParcel adResponseParcel) {
        zza(adResponseParcel, new zzjy(this, this.zzpD, adResponseParcel.zzIa));
    }

    public void zza(AdResponseParcel adResponseParcel, zzjy zzjyVar) {
        this.zzpD.setWebViewClient(zzjyVar);
        this.zzpD.loadDataWithBaseURL(TextUtils.isEmpty(adResponseParcel.zzEF) ? null : com.google.android.gms.ads.internal.zzr.zzbC().zzaC(adResponseParcel.zzEF), adResponseParcel.body, WebRequest.CONTENT_TYPE_HTML, "UTF-8", null);
    }

    public void zzge() {
        this.zzGj.postDelayed(this, this.zzGk);
    }

    public synchronized void zzgf() {
        this.zzGn = true;
    }

    public synchronized boolean zzgg() {
        return this.zzGn;
    }

    public boolean zzgh() {
        return this.zzGo;
    }
}

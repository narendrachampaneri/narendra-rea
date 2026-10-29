package com.chartboost.sdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.impl.ai;
import com.chartboost.sdk.impl.az;
import com.chartboost.sdk.impl.bb;
import com.chartboost.sdk.impl.bp;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private static final String c = c.class.getSimpleName();
    private static c d;
    public com.chartboost.sdk.Model.a.InterfaceC0019a a = new com.chartboost.sdk.Model.a.InterfaceC0019a() { // from class: com.chartboost.sdk.c.2
        @Override // com.chartboost.sdk.Model.a.InterfaceC0019a
        public void a(com.chartboost.sdk.Model.a aVar) {
            boolean z;
            synchronized (c.this) {
                z = aVar.f;
            }
            if (aVar.b == com.chartboost.sdk.Model.a.b.LOADING) {
                aVar.b = com.chartboost.sdk.Model.a.b.LOADED;
                if (z) {
                    aVar.u().a(aVar);
                } else {
                    aVar.u().q(aVar);
                }
            }
            if (!z || aVar.b == com.chartboost.sdk.Model.a.b.DISPLAYED) {
                aVar.u().g(aVar);
            }
            aVar.u().o(aVar);
        }

        @Override // com.chartboost.sdk.Model.a.InterfaceC0019a
        public void b(com.chartboost.sdk.Model.a aVar) {
            e eVarH;
            if (aVar.b == com.chartboost.sdk.Model.a.b.DISPLAYED && (eVarH = Chartboost.h()) != null) {
                eVarH.b(aVar);
            }
            com.chartboost.sdk.Tracking.a.c(aVar.u().e(), aVar.d, aVar.t());
        }

        @Override // com.chartboost.sdk.Model.a.InterfaceC0019a
        public void a(com.chartboost.sdk.Model.a aVar, String str, com.chartboost.sdk.Libraries.e.a aVar2) {
            e eVarH;
            aVar.u().b().a(aVar);
            if (aVar.a() && aVar.b == com.chartboost.sdk.Model.a.b.DISPLAYED && (eVarH = Chartboost.h()) != null) {
                eVarH.b(aVar);
            }
            if (!TextUtils.isEmpty(str)) {
                com.chartboost.sdk.Libraries.e.a aVarA = aVar.A();
                az azVarD = c.this.d();
                azVarD.a("ad_id", aVarA);
                azVarD.a("to", aVarA);
                azVarD.a("cgn", aVarA);
                azVarD.a("creative", aVarA);
                azVarD.a("cgn", aVar2);
                azVarD.a("creative", aVar2);
                azVarD.a("type", aVar2);
                azVarD.a("more_type", aVar2);
                azVarD.a("location", (Object) aVar.d);
                if (aVar.e()) {
                    azVarD.a("retarget_reinstall", Boolean.valueOf(aVar.f()));
                }
                aVar.n = azVarD;
                c.this.b(aVar, str, null);
            } else {
                c.this.b.a(aVar, false, str, CBError.CBClickError.URI_INVALID, null);
            }
            com.chartboost.sdk.Tracking.a.b(aVar.u().e(), aVar.d, aVar.t());
        }

        @Override // com.chartboost.sdk.Model.a.InterfaceC0019a
        public void a(com.chartboost.sdk.Model.a aVar, CBError.CBImpressionError cBImpressionError) {
            aVar.u().a(aVar, cBImpressionError);
        }

        @Override // com.chartboost.sdk.Model.a.InterfaceC0019a
        public void c(com.chartboost.sdk.Model.a aVar) {
            aVar.l = true;
            if (aVar.c == com.chartboost.sdk.Model.a.c.REWARDED_VIDEO && com.chartboost.sdk.b.g() != null) {
                com.chartboost.sdk.b.g().didCompleteRewardedVideo(aVar.d, aVar.A().f("reward"));
            }
            c.b(aVar);
        }

        @Override // com.chartboost.sdk.Model.a.InterfaceC0019a
        public void d(com.chartboost.sdk.Model.a aVar) {
            aVar.m = true;
        }
    };
    public bb.a b = new bb.a() { // from class: com.chartboost.sdk.c.3
        @Override // com.chartboost.sdk.impl.bb.a
        public void a(com.chartboost.sdk.Model.a aVar, boolean z, String str, CBError.CBClickError cBClickError, b bVar) {
            if (aVar != null) {
                aVar.o = false;
                if (aVar.a()) {
                    aVar.b = com.chartboost.sdk.Model.a.b.DISMISSING;
                }
            }
            if (!z) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didFailToRecordClick(str, cBClickError);
                }
            } else if (aVar != null && aVar.n != null) {
                aVar.n.a(true);
                aVar.n.s();
            } else if (bVar != null) {
                bVar.a();
            }
        }
    };
    private bb e = bb.a(this.b);

    public interface a {
        void a(boolean z);
    }

    public interface b {
        void a();
    }

    private c() {
    }

    public static c a() {
        if (d == null) {
            d = new c();
        }
        return d;
    }

    public final void a(com.chartboost.sdk.Model.a aVar, String str, b bVar) {
        this.e.a(aVar, str, Chartboost.getHostActivity(), bVar);
    }

    public final void b(final com.chartboost.sdk.Model.a aVar, final String str, final b bVar) {
        com.chartboost.sdk.b.a = new a() { // from class: com.chartboost.sdk.c.1
            @Override // com.chartboost.sdk.c.a
            public void a(final boolean z) {
                Chartboost.a(new Runnable() { // from class: com.chartboost.sdk.c.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (aVar != null) {
                            if (aVar.b()) {
                                aVar.p();
                            }
                            aVar.x();
                        }
                        if (z) {
                            c.this.a(aVar, str, bVar);
                        } else {
                            c.this.b.a(aVar, false, str, CBError.CBClickError.AGE_GATE_FAILURE, bVar);
                        }
                    }
                });
            }
        };
        if (!com.chartboost.sdk.b.u()) {
            a(aVar, str, bVar);
            return;
        }
        if (com.chartboost.sdk.b.g() != null) {
            if (aVar != null) {
                if (aVar.b()) {
                    aVar.q();
                }
                aVar.z();
                aVar.o = false;
            }
            com.chartboost.sdk.b.g().didPauseClickForConfirmation();
        }
    }

    protected final boolean b() {
        com.chartboost.sdk.Model.a aVarC = c();
        if (aVarC == null) {
            return false;
        }
        aVarC.p = true;
        this.a.b(aVarC);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void b(com.chartboost.sdk.Model.a aVar) {
        ai aiVar = aVar.m() != null ? (ai) aVar.B() : null;
        az azVar = new az("/api/video-complete");
        azVar.a("location", (Object) aVar.d);
        azVar.a("reward", (Object) aVar.A().e("reward"));
        azVar.a("currency-name", (Object) aVar.A().e("currency-name"));
        azVar.a("ad_id", (Object) aVar.t());
        azVar.a("force_close", (Object) false);
        if (aiVar != null) {
            float fV = aiVar.v();
            float fU = aiVar.u();
            CBLogging.a(aVar.u().getClass().getSimpleName(), String.format("TotalDuration: %f PlaybackTime: %f", Float.valueOf(fU), Float.valueOf(fV)));
            azVar.a("total_time", Float.valueOf(fU / 1000.0f));
            if (fV < 0.0f) {
                azVar.a("playback_time", Float.valueOf(fU / 1000.0f));
            } else {
                azVar.a("playback_time", Float.valueOf(fV / 1000.0f));
            }
        }
        azVar.a(true);
        azVar.s();
    }

    protected final com.chartboost.sdk.Model.a c() {
        e eVarH = Chartboost.h();
        bp bpVarD = eVarH == null ? null : eVarH.d();
        if (bpVarD == null) {
            return null;
        }
        return bpVarD.h();
    }

    public az d() {
        az azVar = new az("/api/click");
        Context contextF = Chartboost.f();
        if (contextF == null) {
            contextF = Chartboost.getValidContext();
        }
        azVar.b(contextF);
        return azVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final boolean a(Activity activity, com.chartboost.sdk.Model.a aVar) {
        if (aVar != null) {
            switch (aVar.b) {
                case LOADING:
                    if (aVar.i) {
                        Chartboost.a(aVar);
                    }
                    break;
                case CACHED:
                case LOADED:
                    Chartboost.a(aVar);
                    break;
                case DISPLAYED:
                    if (!aVar.i()) {
                        if (com.chartboost.sdk.b.a() != null && com.chartboost.sdk.b.a().doesWrapperUseCustomBackgroundingBehavior() && !(activity instanceof CBImpressionActivity)) {
                            return false;
                        }
                        e eVarH = Chartboost.h();
                        if (eVarH != null) {
                            CBLogging.b(c, "Error onActivityStart " + aVar.b.name());
                            eVarH.d(aVar);
                        }
                    }
                    break;
            }
        }
        return true;
    }
}

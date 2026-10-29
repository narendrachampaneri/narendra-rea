package com.chartboost.sdk;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.impl.bh;
import com.chartboost.sdk.impl.bp;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    private static e c;
    private bp a = null;
    private com.chartboost.sdk.Model.a b;

    private e() {
    }

    public static e a() {
        if (c == null) {
            c = new e();
        }
        return c;
    }

    protected void a(com.chartboost.sdk.Model.a aVar) {
        switch (aVar.b) {
            case LOADING:
                if (aVar.i && b.w()) {
                    f(aVar);
                    break;
                }
                break;
            default:
                e(aVar);
                break;
        }
    }

    private void e(com.chartboost.sdk.Model.a aVar) {
        if (this.a != null && this.a.h() != aVar) {
            CBLogging.b("CBViewController", "Impression already visible");
            aVar.a(CBError.CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
            return;
        }
        boolean z = aVar.b != com.chartboost.sdk.Model.a.b.DISPLAYED;
        aVar.b = com.chartboost.sdk.Model.a.b.DISPLAYED;
        Activity activityF = Chartboost.f();
        CBError.CBImpressionError cBImpressionErrorL = activityF == null ? CBError.CBImpressionError.NO_HOST_ACTIVITY : null;
        if (cBImpressionErrorL == null) {
            cBImpressionErrorL = aVar.l();
        }
        if (cBImpressionErrorL != null) {
            CBLogging.b("CBViewController", "Cannot able to create the view while trying th display the impression");
            aVar.a(cBImpressionErrorL);
            return;
        }
        if (this.a == null) {
            this.a = new bp(activityF, aVar);
            activityF.addContentView(this.a, new FrameLayout.LayoutParams(-1, -1));
        }
        this.a.a();
        CBLogging.b("CBViewController", "Displaying the impression");
        aVar.h = this.a;
        if (z) {
            this.a.e().a();
            bh.b bVar = bh.b.CBAnimationTypePerspectiveRotate;
            if (aVar.c == com.chartboost.sdk.Model.a.c.MORE_APPS) {
                bVar = bh.b.CBAnimationTypePerspectiveZoom;
            }
            bh.b bVarA = bh.b.a(aVar.A().f("animation"));
            if (bVarA != null) {
                bVar = bVarA;
            }
            if (b.i()) {
                bVar = bh.b.CBAnimationTypeNone;
            }
            aVar.r();
            bh.a(bVar, aVar, new bh.a() { // from class: com.chartboost.sdk.e.1
                @Override // com.chartboost.sdk.impl.bh.a
                public void a(com.chartboost.sdk.Model.a aVar2) {
                    aVar2.s();
                }
            });
            if (b.g() != null && (aVar.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_VIDEO || aVar.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO)) {
                b.g().willDisplayVideo(aVar.d);
            }
            if (aVar.u().b() != null) {
                aVar.u().b().e(aVar);
            }
        }
    }

    /* JADX INFO: renamed from: com.chartboost.sdk.e$2, reason: invalid class name */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ com.chartboost.sdk.Model.a a;

        AnonymousClass2(com.chartboost.sdk.Model.a aVar) {
            this.a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.b = com.chartboost.sdk.Model.a.b.DISMISSING;
            bh.b bVar = bh.b.CBAnimationTypePerspectiveRotate;
            if (this.a.c == com.chartboost.sdk.Model.a.c.MORE_APPS) {
                bVar = bh.b.CBAnimationTypePerspectiveZoom;
            }
            bh.b bVarA = bh.b.a(this.a.A().f("animation"));
            if (bVarA != null) {
                bVar = bVarA;
            }
            if (b.i()) {
                bVar = bh.b.CBAnimationTypeNone;
            }
            bh.b(bVar, this.a, new bh.a() { // from class: com.chartboost.sdk.e.2.1
                @Override // com.chartboost.sdk.impl.bh.a
                public void a(final com.chartboost.sdk.Model.a aVar) {
                    CBUtility.e().post(new Runnable() { // from class: com.chartboost.sdk.e.2.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            e.this.d(aVar);
                        }
                    });
                    aVar.o();
                }
            });
        }
    }

    public void b(com.chartboost.sdk.Model.a aVar) {
        CBLogging.b("CBViewController", "Dismissing impression");
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(aVar);
        if (aVar.k) {
            aVar.a(anonymousClass2);
        } else {
            anonymousClass2.run();
        }
    }

    private void f(com.chartboost.sdk.Model.a aVar) {
        Activity activityF = Chartboost.f();
        if (activityF == null) {
            CBLogging.d(this, "No host activity to display loading view");
            return;
        }
        if (this.a == null) {
            this.a = new bp(activityF, aVar);
            activityF.addContentView(this.a, new FrameLayout.LayoutParams(-1, -1));
        }
        this.a.b();
        this.b = aVar;
    }

    public void a(com.chartboost.sdk.Model.a aVar, boolean z) {
        if (aVar != null) {
            if (aVar == this.b || aVar == c.a().c()) {
                this.b = null;
                CBLogging.b("CBViewController", "Dismissing loading view");
                if (b()) {
                    this.a.c();
                    if (z && this.a != null && this.a.h() != null) {
                        d(this.a.h());
                    }
                }
            }
        }
    }

    public void c(com.chartboost.sdk.Model.a aVar) {
        CBLogging.b("CBViewController", "Removing impression silently");
        if (b()) {
            a(aVar, false);
        }
        aVar.k();
        try {
            ((ViewGroup) this.a.getParent()).removeView(this.a);
        } catch (Exception e) {
            CBLogging.b("CBViewController", "Exception removing impression silently", e);
        }
        this.a = null;
    }

    public void d(com.chartboost.sdk.Model.a aVar) {
        CBLogging.b("CBViewController", "Removing impression");
        aVar.b = com.chartboost.sdk.Model.a.b.NONE;
        if (this.a == null) {
            if (b.h()) {
                e();
                return;
            }
            return;
        }
        try {
            ((ViewGroup) this.a.getParent()).removeView(this.a);
        } catch (Exception e) {
            CBLogging.b("CBViewController", "Exception removing impression ", e);
        }
        aVar.j();
        this.a = null;
        if (b.h()) {
            e();
        }
        aVar.u().b().c(aVar);
        if (aVar.C()) {
            aVar.u().b().b(aVar);
        }
    }

    private void e() {
        CBLogging.b("CBViewController", " Closing impression activity");
        Activity activityF = Chartboost.f();
        if (activityF != null && (activityF instanceof CBImpressionActivity)) {
            CBLogging.b("CBViewController", " Closing impression activity #######");
            Chartboost.g();
            activityF.finish();
        }
    }

    public boolean b() {
        return this.a != null && this.a.g();
    }

    public boolean c() {
        return this.a != null;
    }

    public bp d() {
        return this.a;
    }
}

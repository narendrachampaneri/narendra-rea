package com.chartboost.sdk.impl;

import com.chartboost.sdk.Model.CBError;

/* JADX INFO: loaded from: classes.dex */
public class av extends com.chartboost.sdk.d {
    private static final String c = av.class.getSimpleName();
    private static av d;
    protected int b;
    private com.chartboost.sdk.Model.a e = null;
    private boolean f;
    private boolean g;

    private av() {
    }

    public static av f() {
        if (d == null) {
            synchronized (av.class) {
                if (d == null) {
                    d = new av();
                }
            }
        }
        return d;
    }

    @Override // com.chartboost.sdk.d
    public void a(String str) {
        this.b = 0;
        g();
        super.a(str);
    }

    @Override // com.chartboost.sdk.d
    protected void a(com.chartboost.sdk.Model.a aVar, com.chartboost.sdk.Libraries.e.a aVar2) {
        if (!this.f && this.g) {
            this.g = false;
            this.b = aVar2.a("cells").o();
        }
        super.a(aVar, aVar2);
    }

    @Override // com.chartboost.sdk.d
    protected com.chartboost.sdk.Model.a a(String str, boolean z) {
        return new com.chartboost.sdk.Model.a(com.chartboost.sdk.Model.a.c.MORE_APPS, z, str, false);
    }

    @Override // com.chartboost.sdk.d
    protected az e(com.chartboost.sdk.Model.a aVar) {
        az azVar = new az("/more/get");
        azVar.a(l.a.HIGH);
        azVar.a(com.chartboost.sdk.Model.b.c);
        return azVar;
    }

    @Override // com.chartboost.sdk.d
    protected az l(com.chartboost.sdk.Model.a aVar) {
        az azVar = new az("/more/show");
        if (aVar.d != null) {
            azVar.a("location", (Object) aVar.d);
        }
        if (aVar.A().c("cells")) {
            azVar.a("cells", (Object) aVar.A().a("cells"));
        }
        return azVar;
    }

    @Override // com.chartboost.sdk.d
    public void a() {
        this.e = null;
    }

    @Override // com.chartboost.sdk.d
    protected com.chartboost.sdk.Model.a d(String str) {
        return this.e;
    }

    @Override // com.chartboost.sdk.d
    protected void e(String str) {
        this.e = null;
    }

    @Override // com.chartboost.sdk.d
    protected void q(com.chartboost.sdk.Model.a aVar) {
        this.e = aVar;
    }

    @Override // com.chartboost.sdk.d
    protected com.chartboost.sdk.d.a c() {
        return new com.chartboost.sdk.d.a() { // from class: com.chartboost.sdk.impl.av.1
            @Override // com.chartboost.sdk.d.a
            public void a(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didClickMoreApps(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void b(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didCloseMoreApps(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void c(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didDismissMoreApps(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void d(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didCacheMoreApps(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void a(com.chartboost.sdk.Model.a aVar, CBError.CBImpressionError cBImpressionError) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didFailToLoadMoreApps(aVar.d, cBImpressionError);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void e(com.chartboost.sdk.Model.a aVar) {
                av.this.b = 0;
                av.this.g();
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didDisplayMoreApps(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public boolean f(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    return com.chartboost.sdk.b.g().shouldDisplayMoreApps(aVar.d);
                }
                return true;
            }

            @Override // com.chartboost.sdk.d.a
            public boolean g(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    return com.chartboost.sdk.b.g().shouldRequestMoreApps(aVar.d);
                }
                return true;
            }

            @Override // com.chartboost.sdk.d.a
            public boolean h(com.chartboost.sdk.Model.a aVar) {
                return true;
            }
        };
    }

    protected void g() {
    }

    @Override // com.chartboost.sdk.d
    public String e() {
        return "more-apps";
    }
}

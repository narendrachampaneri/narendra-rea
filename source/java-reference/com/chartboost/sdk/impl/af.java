package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.CBError;
import com.google.android.exoplayer.util.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
public class af extends ae {
    private static af b;
    private static String c = "CBRewardedVideo";

    private af() {
    }

    public static af h() {
        if (b == null) {
            b = new af();
        }
        return b;
    }

    @Override // com.chartboost.sdk.impl.ae
    protected boolean b(com.chartboost.sdk.Model.a aVar, com.chartboost.sdk.Libraries.e.a aVar2) {
        return true;
    }

    @Override // com.chartboost.sdk.impl.ae, com.chartboost.sdk.d
    protected com.chartboost.sdk.Model.a a(String str, boolean z) {
        return new com.chartboost.sdk.Model.a(com.chartboost.sdk.Model.a.c.REWARDED_VIDEO, z, str, false);
    }

    @Override // com.chartboost.sdk.impl.ae, com.chartboost.sdk.d
    protected az e(com.chartboost.sdk.Model.a aVar) {
        az azVar = new az("/reward/get");
        azVar.a(l.a.HIGH);
        azVar.a(com.chartboost.sdk.Model.b.b);
        azVar.a("local-videos", h().g());
        return azVar;
    }

    @Override // com.chartboost.sdk.impl.ae, com.chartboost.sdk.d
    public az l(com.chartboost.sdk.Model.a aVar) {
        az azVarL = super.l(aVar);
        azVarL.a("/reward/show");
        return azVarL;
    }

    @Override // com.chartboost.sdk.impl.ae, com.chartboost.sdk.d
    protected void i(com.chartboost.sdk.Model.a aVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chartboost.sdk.d
    public void h(final com.chartboost.sdk.Model.a aVar) {
        final com.chartboost.sdk.Libraries.e.a aVarA = aVar.A().a("ux").a("pre-popup");
        if (aVarA.c() && aVarA.a("title").d() && aVarA.a(MimeTypes.BASE_TYPE_TEXT).d() && aVarA.a("confirm").d() && aVarA.a("cancel").d() && d() != null) {
            a.post(new Runnable() { // from class: com.chartboost.sdk.impl.af.1
                @Override // java.lang.Runnable
                public void run() {
                    bl.a aVar2 = new bl.a();
                    aVar2.a(aVarA.e("title")).b(aVarA.e(MimeTypes.BASE_TYPE_TEXT)).d(aVarA.e("confirm")).c(aVarA.e("cancel"));
                    aVar2.a(af.this.d(), new bl.b() { // from class: com.chartboost.sdk.impl.af.1.1
                        @Override // com.chartboost.sdk.impl.bl.b
                        public void a(bl blVar) {
                            af.this.a(aVar, CBError.CBImpressionError.USER_CANCELLATION);
                        }

                        @Override // com.chartboost.sdk.impl.bl.b
                        public void a(bl blVar, int i) {
                            if (i == 1) {
                                af.super.h(aVar);
                            } else {
                                af.this.a(aVar, CBError.CBImpressionError.USER_CANCELLATION);
                            }
                        }
                    });
                }
            });
        } else {
            super.h(aVar);
        }
    }

    protected void r(com.chartboost.sdk.Model.a aVar) {
        final com.chartboost.sdk.Libraries.e.a aVarA = aVar.A().a("ux").a("post-popup");
        if (aVarA.c() && aVarA.a("title").d() && aVarA.a(MimeTypes.BASE_TYPE_TEXT).d() && aVarA.a("confirm").d() && d() != null && aVar.l) {
            a.post(new Runnable() { // from class: com.chartboost.sdk.impl.af.2
                @Override // java.lang.Runnable
                public void run() {
                    bl.a aVar2 = new bl.a();
                    aVar2.a(aVarA.e("title")).b(aVarA.e(MimeTypes.BASE_TYPE_TEXT)).c(aVarA.e("confirm"));
                    aVar2.a(af.this.d(), new bl.b() { // from class: com.chartboost.sdk.impl.af.2.1
                        @Override // com.chartboost.sdk.impl.bl.b
                        public void a(bl blVar, int i) {
                            CBLogging.c(af.c, "post-popup dismissed");
                        }
                    });
                }
            });
        }
    }

    @Override // com.chartboost.sdk.impl.ae, com.chartboost.sdk.d
    public com.chartboost.sdk.d.a c() {
        return new com.chartboost.sdk.d.a() { // from class: com.chartboost.sdk.impl.af.3
            @Override // com.chartboost.sdk.d.a
            public void a(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didClickRewardedVideo(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void b(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didCloseRewardedVideo(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void c(com.chartboost.sdk.Model.a aVar) {
                af.this.r(aVar);
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didDismissRewardedVideo(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void d(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didCacheRewardedVideo(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void a(com.chartboost.sdk.Model.a aVar, CBError.CBImpressionError cBImpressionError) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didFailToLoadRewardedVideo(aVar.d, cBImpressionError);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void e(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didDisplayRewardedVideo(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public boolean f(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    return com.chartboost.sdk.b.g().shouldDisplayRewardedVideo(aVar.d);
                }
                return true;
            }

            @Override // com.chartboost.sdk.d.a
            public boolean g(com.chartboost.sdk.Model.a aVar) {
                return true;
            }

            @Override // com.chartboost.sdk.d.a
            public boolean h(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    return com.chartboost.sdk.b.v();
                }
                return true;
            }
        };
    }

    @Override // com.chartboost.sdk.impl.ae, com.chartboost.sdk.d
    public String e() {
        return "rewarded-video";
    }
}

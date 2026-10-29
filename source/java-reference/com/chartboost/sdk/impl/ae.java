package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.CBError;
import com.google.android.exoplayer.util.MimeTypes;
import com.mopub.common.AdType;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class ae extends com.chartboost.sdk.d {
    private static final String b = ae.class.getSimpleName();
    private static ae c;

    protected ae() {
    }

    public static ae f() {
        if (c == null) {
            c = new ae();
        }
        return c;
    }

    protected boolean b(com.chartboost.sdk.Model.a aVar, com.chartboost.sdk.Libraries.e.a aVar2) {
        return aVar2.a("media-type").equals(MimeTypes.BASE_TYPE_VIDEO);
    }

    @Override // com.chartboost.sdk.d
    protected void g(com.chartboost.sdk.Model.a aVar) {
        if (b(aVar, aVar.A()) && !bd.c(aVar.A())) {
            CBLogging.b(b, "doShow() status: Video not available in the cache for the impression");
            a(aVar, CBError.CBImpressionError.VIDEO_UNAVAILABLE);
            e(aVar.d);
            b(aVar.d);
            return;
        }
        super.g(aVar);
    }

    @Override // com.chartboost.sdk.d
    public boolean c(String str) {
        com.chartboost.sdk.Model.a aVarD = d(str);
        if (aVarD == null || aVarD.A() == null) {
            return false;
        }
        if (b(aVarD, aVarD.A())) {
            if (!bd.c(aVarD.A())) {
                CBLogging.b(b, "hasCached check status: Video not available in the cache for impression");
                o(aVarD);
                e(str);
                b(str);
                return false;
            }
            return true;
        }
        return super.c(str);
    }

    @Override // com.chartboost.sdk.d
    protected void a(com.chartboost.sdk.Model.a aVar, com.chartboost.sdk.Libraries.e.a aVar2) {
        boolean z = true;
        if (b(aVar, aVar2) && !bd.c(aVar2)) {
            z = false;
            CBLogging.b(b, "Video is unavailable for the cached impression");
            a(aVar, CBError.CBImpressionError.VIDEO_UNAVAILABLE);
        }
        bd.a(aVar2.a("videos"));
        if (z) {
            super.a(aVar, aVar2);
        }
    }

    @Override // com.chartboost.sdk.d
    protected com.chartboost.sdk.Model.a a(String str, boolean z) {
        return new com.chartboost.sdk.Model.a(com.chartboost.sdk.Model.a.c.INTERSTITIAL, z, str, false);
    }

    @Override // com.chartboost.sdk.d
    protected az e(com.chartboost.sdk.Model.a aVar) {
        az azVar = new az("/interstitial/get");
        azVar.a(l.a.HIGH);
        azVar.a(com.chartboost.sdk.Model.b.b);
        azVar.a("local-videos", g());
        return azVar;
    }

    @Override // com.chartboost.sdk.d
    protected void i(com.chartboost.sdk.Model.a aVar) {
        if (aVar.e != com.chartboost.sdk.Model.a.d.INTERSTITIAL_VIDEO) {
            super.i(aVar);
        }
    }

    @Override // com.chartboost.sdk.d
    protected com.chartboost.sdk.d.a c() {
        return new com.chartboost.sdk.d.a() { // from class: com.chartboost.sdk.impl.ae.1
            @Override // com.chartboost.sdk.d.a
            public void a(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didClickInterstitial(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void b(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didCloseInterstitial(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void c(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didDismissInterstitial(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void d(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didCacheInterstitial(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void a(com.chartboost.sdk.Model.a aVar, CBError.CBImpressionError cBImpressionError) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didFailToLoadInterstitial(aVar.d, cBImpressionError);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public void e(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    com.chartboost.sdk.b.g().didDisplayInterstitial(aVar.d);
                }
            }

            @Override // com.chartboost.sdk.d.a
            public boolean f(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    return com.chartboost.sdk.b.g().shouldDisplayInterstitial(aVar.d);
                }
                return true;
            }

            @Override // com.chartboost.sdk.d.a
            public boolean g(com.chartboost.sdk.Model.a aVar) {
                if (com.chartboost.sdk.b.g() != null) {
                    return com.chartboost.sdk.b.g().shouldRequestInterstitial(aVar.d);
                }
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

    @Override // com.chartboost.sdk.d
    protected az l(com.chartboost.sdk.Model.a aVar) {
        return new az("/interstitial/show");
    }

    public JSONArray g() {
        JSONArray jSONArray = new JSONArray();
        String[] strArrC = bd.c();
        if (strArrC != null) {
            for (String str : strArrC) {
                jSONArray.put(str);
            }
        }
        return jSONArray;
    }

    @Override // com.chartboost.sdk.d
    public String e() {
        return AdType.INTERSTITIAL;
    }
}

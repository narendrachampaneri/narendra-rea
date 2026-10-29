package com.chartboost.sdk.Libraries;

/* JADX INFO: loaded from: classes.dex */
public interface a {
    public static final g.a a = g.a(g.b(), new g.e() { // from class: com.chartboost.sdk.Libraries.a.1
        @Override // com.chartboost.sdk.Libraries.g.a
        public boolean a(Object obj) {
            int iIntValue = ((Number) obj).intValue();
            return iIntValue >= 200 && iIntValue < 300;
        }

        @Override // com.chartboost.sdk.Libraries.g.a
        public String a() {
            return "Must be a valid status code (>=200 && <300)";
        }
    });
}

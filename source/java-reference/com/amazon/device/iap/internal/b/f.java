package com.amazon.device.iap.internal.b;

import com.amazon.android.framework.util.KiwiLogger;

/* JADX INFO: compiled from: KiwiLogHandler.java */
/* JADX INFO: loaded from: classes.dex */
public class f implements com.amazon.device.iap.internal.a {
    private static KiwiLogger a = new KiwiLogger("In App Purchasing SDK - Production Mode");

    @Override // com.amazon.device.iap.internal.a
    public boolean a() {
        return KiwiLogger.TRACE_ON;
    }

    @Override // com.amazon.device.iap.internal.a
    public boolean b() {
        return KiwiLogger.ERROR_ON;
    }

    @Override // com.amazon.device.iap.internal.a
    public void a(String str, String str2) {
        a.trace(c(str, str2));
    }

    @Override // com.amazon.device.iap.internal.a
    public void b(String str, String str2) {
        a.error(c(str, str2));
    }

    private static String c(String str, String str2) {
        return str + ": " + str2;
    }
}

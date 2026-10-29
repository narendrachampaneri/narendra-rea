package com.jirbo.adcolony;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import io.fabric.sdk.android.services.common.IdManager;

/* JADX INFO: loaded from: classes2.dex */
abstract class ae {
    boolean h = true;
    int i = 0;

    abstract void a(char c);

    ae() {
    }

    void c() {
        if (this.h) {
            this.h = false;
            int i = this.i;
            while (true) {
                i--;
                if (i < 0) {
                    return;
                } else {
                    a(SafeJsonPrimitive.NULL_CHAR);
                }
            }
        }
    }

    void b(char c) {
        if (this.h) {
            c();
        }
        a(c);
        if (c == '\n') {
            this.h = true;
        }
    }

    void a(Object obj) {
        if (this.h) {
            c();
        }
        if (obj != null) {
            a(obj.toString());
        } else {
            a(SafeJsonPrimitive.NULL_STRING);
        }
    }

    void a(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            b(str.charAt(i));
        }
    }

    void a(double d) {
        if (this.h) {
            c();
        }
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            a(IdManager.DEFAULT_VERSION_NAME);
            return;
        }
        if (d < 0.0d) {
            d = -d;
            a('-');
        }
        long jPow = (long) Math.pow(10.0d, 4);
        long jRound = Math.round(jPow * d);
        a(jRound / jPow);
        a('.');
        long j = jRound % jPow;
        if (j == 0) {
            for (int i = 0; i < 4; i++) {
                a('0');
            }
            return;
        }
        for (long j2 = j * 10; j2 < jPow; j2 *= 10) {
            a('0');
        }
        a(j);
    }

    void a(long j) {
        if (this.h) {
            c();
        }
        if (j == 0) {
            a('0');
            return;
        }
        if (j == (-j)) {
            a("-9223372036854775808");
        } else if (j < 0) {
            a('-');
            a(-j);
        } else {
            b(j);
        }
    }

    void b(long j) {
        if (j != 0) {
            b(j / 10);
            a((char) (48 + (j % 10)));
        }
    }

    void a(boolean z) {
        if (!z) {
            a("false");
        } else {
            a("true");
        }
    }

    void c(char c) {
        b(c);
        b('\n');
    }

    void b(Object obj) {
        a(obj);
        b('\n');
    }

    void b(String str) {
        a(str);
        b('\n');
    }

    void b(double d) {
        a(d);
        b('\n');
    }

    void c(long j) {
        a(j);
        b('\n');
    }

    void b(boolean z) {
        a(z);
        b('\n');
    }

    void d() {
        b('\n');
    }

    public static void b(String[] strArr) {
        System.out.println("Test...");
    }
}

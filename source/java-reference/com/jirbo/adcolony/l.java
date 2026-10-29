package com.jirbo.adcolony;

import com.newrelic.agent.android.util.SafeJsonPrimitive;

/* JADX INFO: loaded from: classes.dex */
class l {
    static l a = new l(0, false);
    static l b = new l(1, false);
    static l c = new l(2, true);
    static l d = new l(3, true);
    int e;
    boolean f;
    StringBuilder g = new StringBuilder();

    l(int i, boolean z) {
        this.e = i;
        this.f = z;
    }

    synchronized l a(char c2) {
        if (this.f) {
            this.g.append(c2);
            if (c2 == '\n') {
                a.a(this.e, this.g.toString());
                this.g.setLength(0);
            }
        }
        return this;
    }

    synchronized l a(String str) {
        if (this.f) {
            if (str == null) {
                this.g.append(SafeJsonPrimitive.NULL_STRING);
            } else {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    a(str.charAt(i));
                }
            }
        }
        return this;
    }

    synchronized l a(Object obj) {
        if (this.f) {
            if (obj == null) {
                a(SafeJsonPrimitive.NULL_STRING);
            } else {
                a(obj.toString());
            }
        }
        return this;
    }

    synchronized l a(double d2) {
        if (this.f) {
            aa.a(d2, 2, this.g);
        }
        return this;
    }

    synchronized l a(int i) {
        if (this.f) {
            this.g.append(i);
        }
        return this;
    }

    synchronized l a(boolean z) {
        if (this.f) {
            this.g.append(z);
        }
        return this;
    }

    synchronized l b(Object obj) {
        a(obj);
        return a('\n');
    }

    synchronized l b(double d2) {
        a(d2);
        return a('\n');
    }

    synchronized l b(int i) {
        a(i);
        return a('\n');
    }

    synchronized l b(boolean z) {
        a(z);
        return a('\n');
    }

    synchronized l a() {
        return a('\n');
    }

    boolean b(String str) {
        a(str + '\n');
        return false;
    }

    int c(String str) {
        a(str + '\n');
        return 0;
    }
}

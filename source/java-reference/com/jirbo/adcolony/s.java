package com.jirbo.adcolony;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
class s {
    char[] a;
    int b;
    int c;

    s(String str) {
        this.c = str.length();
        StringBuilder sb = new StringBuilder(this.c);
        int i = 0;
        while (i < this.c) {
            char cCharAt = str.charAt(i);
            if ((cCharAt >= ' ' && cCharAt <= '~') || cCharAt == '\n') {
                sb.append(cCharAt);
            } else if ((cCharAt & 128) != 0) {
                if ((cCharAt & 224) == 192 && i + 1 < this.c) {
                    sb.append((char) (((cCharAt & 31) << 6) | (str.charAt(i + 1) & '?')));
                    i++;
                } else if (i + 2 < this.c) {
                    sb.append((char) (((cCharAt & 15) << 12) | ((str.charAt(i + 1) & '?') << 6) | (str.charAt(i + 2) & '?')));
                    i += 2;
                } else {
                    sb.append('?');
                }
            } else {
                sb.append(SafeJsonPrimitive.NULL_CHAR);
            }
            i++;
        }
        this.c = sb.length();
        this.a = new char[this.c];
        sb.getChars(0, this.c, this.a, 0);
    }

    s(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder(inputStream.available());
        int i = inputStream.read();
        while (i != -1) {
            if ((i >= 32 && i <= 126) || i == 10) {
                sb.append((char) i);
            } else if ((i & 128) != 0) {
                if ((i & 224) == 192) {
                    sb.append((char) (((i & 31) << 6) | (inputStream.read() & 63)));
                } else {
                    sb.append((char) (((i & 15) << 12) | ((inputStream.read() & 63) << 6) | (inputStream.read() & 63)));
                }
            } else {
                sb.append(SafeJsonPrimitive.NULL_CHAR);
            }
            i = inputStream.read();
        }
        inputStream.close();
        this.c = sb.length();
        this.a = new char[this.c];
        sb.getChars(0, this.c, this.a, 0);
    }

    boolean a() {
        return this.b < this.c;
    }

    char b() {
        if (this.b == this.c) {
            return (char) 0;
        }
        return this.a[this.b];
    }

    char c() {
        char[] cArr = this.a;
        int i = this.b;
        this.b = i + 1;
        return cArr[i];
    }

    boolean a(char c) {
        if (this.b == this.c || this.a[this.b] != c) {
            return false;
        }
        this.b++;
        return true;
    }

    void b(char c) {
        if (!a(c)) {
            throw new AdColonyException("'" + c + "' expected.");
        }
    }

    boolean a(String str) {
        int length = str.length();
        if (this.b + length > this.c) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) != this.a[this.b + i]) {
                return false;
            }
        }
        this.b += length;
        return true;
    }

    void b(String str) {
        if (!a(str)) {
            throw new AdColonyException("\"" + str + "\" expected.");
        }
    }

    void d() {
        while (this.b != this.c) {
            char c = this.a[this.b];
            if (c != ' ' && c != '\n') {
                return;
            } else {
                this.b++;
            }
        }
    }

    public static void a(String[] strArr) {
    }
}

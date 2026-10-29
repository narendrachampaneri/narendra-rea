package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.net.NetworkInterface;
import java.nio.ByteBuffer;
import java.util.Enumeration;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public class cy implements Serializable, Comparable<cy> {
    static final Logger a = Logger.getLogger("org.bson.ObjectId");
    private static AtomicInteger f = new AtomicInteger(new Random().nextInt());
    private static final int g;
    final int b;
    final int c;
    final int d;
    boolean e;

    static {
        int iNextInt;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                while (networkInterfaces.hasMoreElements()) {
                    sb.append(networkInterfaces.nextElement().toString());
                }
                iNextInt = sb.toString().hashCode() << 16;
            } catch (Throwable th) {
                a.log(Level.WARNING, th.getMessage(), th);
                iNextInt = new Random().nextInt() << 16;
            }
            a.fine("machine piece post: " + Integer.toHexString(iNextInt));
            int iNextInt2 = new Random().nextInt();
            ClassLoader classLoader = cy.class.getClassLoader();
            int iHashCode = (Integer.toHexString(iNextInt2) + Integer.toHexString(classLoader != null ? System.identityHashCode(classLoader) : 0)).hashCode() & 65535;
            a.fine(new StringBuilder().append("process piece: ").append(Integer.toHexString(iHashCode)).toString());
            g = iHashCode | iNextInt;
            a.fine(new StringBuilder().append("machine : ").append(Integer.toHexString(g)).toString());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static boolean a(String str) {
        int length;
        if (str == null || (length = str.length()) != 24) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'a' || cCharAt > 'f') && (cCharAt < 'A' || cCharAt > 'F'))) {
                return false;
            }
        }
        return true;
    }

    public static cy a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof cy) {
            return (cy) obj;
        }
        if (obj instanceof String) {
            String string = obj.toString();
            if (a(string)) {
                return new cy(string);
            }
        }
        return null;
    }

    public cy(String str) {
        this(str, false);
    }

    public cy(String str, boolean z) {
        if (!a(str)) {
            throw new IllegalArgumentException("invalid ObjectId [" + str + "]");
        }
        str = z ? b(str) : str;
        byte[] bArr = new byte[12];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) Integer.parseInt(str.substring(i * 2, (i * 2) + 2), 16);
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        this.b = byteBufferWrap.getInt();
        this.c = byteBufferWrap.getInt();
        this.d = byteBufferWrap.getInt();
        this.e = false;
    }

    public cy(int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = false;
    }

    public cy() {
        this.b = (int) (System.currentTimeMillis() / 1000);
        this.c = g;
        this.d = f.getAndIncrement();
        this.e = true;
    }

    public int hashCode() {
        return this.b + (this.c * 111) + (this.d * 17);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        cy cyVarA = a(o);
        if (cyVarA == null) {
            return false;
        }
        return this.b == cyVarA.b && this.c == cyVarA.c && this.d == cyVarA.d;
    }

    public String a() {
        byte[] bArrB = b();
        StringBuilder sb = new StringBuilder(24);
        for (byte b : bArrB) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                sb.append("0");
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public byte[] b() {
        byte[] bArr = new byte[12];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.putInt(this.b);
        byteBufferWrap.putInt(this.c);
        byteBufferWrap.putInt(this.d);
        return bArr;
    }

    static String a(String str, int i) {
        return str.substring(i * 2, (i * 2) + 2);
    }

    public static String b(String str) {
        if (!a(str)) {
            throw new IllegalArgumentException("invalid object id: " + str);
        }
        StringBuilder sb = new StringBuilder(24);
        for (int i = 7; i >= 0; i--) {
            sb.append(a(str, i));
        }
        for (int i2 = 11; i2 >= 8; i2--) {
            sb.append(a(str, i2));
        }
        return sb.toString();
    }

    public String toString() {
        return a();
    }

    int a(int i, int i2) {
        long j = (((long) i) & 4294967295L) - (((long) i2) & 4294967295L);
        if (j < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(cy cyVar) {
        if (cyVar == null) {
            return -1;
        }
        int iA = a(this.b, cyVar.b);
        if (iA == 0) {
            int iA2 = a(this.c, cyVar.c);
            return iA2 == 0 ? a(this.d, cyVar.d) : iA2;
        }
        return iA;
    }

    public int c() {
        return this.b;
    }

    public int d() {
        return this.c;
    }

    public int e() {
        return this.d;
    }
}

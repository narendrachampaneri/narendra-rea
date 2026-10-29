package com.chartboost.sdk.impl;

import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import java.lang.reflect.Array;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class cl implements ci {
    protected cp a;

    public byte[] a(cj cjVar) {
        co coVar = new co();
        a(coVar);
        b(cjVar);
        a();
        return coVar.c();
    }

    public void a(cp cpVar) {
        if (this.a != null) {
            throw new IllegalStateException("in the middle of something");
        }
        this.a = cpVar;
    }

    public void a() {
        this.a = null;
    }

    protected boolean a(String str, cj cjVar) {
        return false;
    }

    protected boolean a(String str, Object obj) {
        return false;
    }

    public int b(cj cjVar) {
        return b((String) null, cjVar);
    }

    protected int b(String str, cj cjVar) {
        if (cjVar == null) {
            throw new NullPointerException("can't save a null object");
        }
        int iA = this.a.a();
        byte b = cjVar instanceof List ? (byte) 4 : (byte) 3;
        if (a(str, cjVar)) {
            return this.a.a() - iA;
        }
        if (str != null) {
            a(b, str);
        }
        int iA2 = this.a.a();
        this.a.c(0);
        List list = null;
        boolean z = b == 3 && str == null;
        if (b == 3) {
            if (z && cjVar.b(AnalyticsSQLiteHelper.GENERAL_ID)) {
                b(AnalyticsSQLiteHelper.GENERAL_ID, cjVar.a(AnalyticsSQLiteHelper.GENERAL_ID));
            }
            Object objA = cjVar.a("_transientFields");
            if (objA instanceof List) {
                list = (List) objA;
            }
        }
        if (cjVar instanceof Map) {
            for (Map.Entry entry : ((Map) cjVar).entrySet()) {
                if (!z || !((String) entry.getKey()).equals(AnalyticsSQLiteHelper.GENERAL_ID)) {
                    if (list == null || !list.contains(entry.getKey())) {
                        b((String) entry.getKey(), entry.getValue());
                    }
                }
            }
        } else {
            for (String str2 : cjVar.keySet()) {
                if (!z || !str2.equals(AnalyticsSQLiteHelper.GENERAL_ID)) {
                    if (list == null || !list.contains(str2)) {
                        b(str2, cjVar.a(str2));
                    }
                }
            }
        }
        this.a.write(0);
        this.a.a(iA2, this.a.a() - iA2);
        return this.a.a() - iA;
    }

    protected void b(String str, Object obj) {
        if (!str.equals("_transientFields")) {
            if (str.equals("$where") && (obj instanceof String)) {
                a((byte) 13, str);
                b(obj.toString());
                return;
            }
            Object objA = cg.a(obj);
            if (objA == null) {
                a(str);
                return;
            }
            if (objA instanceof Date) {
                a(str, (Date) objA);
                return;
            }
            if (objA instanceof Number) {
                a(str, (Number) objA);
                return;
            }
            if (objA instanceof Character) {
                a(str, objA.toString());
                return;
            }
            if (objA instanceof String) {
                a(str, objA.toString());
                return;
            }
            if (objA instanceof cy) {
                a(str, (cy) objA);
                return;
            }
            if (objA instanceof cj) {
                b(str, (cj) objA);
                return;
            }
            if (objA instanceof Boolean) {
                a(str, (Boolean) objA);
                return;
            }
            if (objA instanceof Pattern) {
                a(str, (Pattern) objA);
                return;
            }
            if (objA instanceof Map) {
                a(str, (Map) objA);
                return;
            }
            if (objA instanceof Iterable) {
                a(str, (Iterable) objA);
                return;
            }
            if (objA instanceof byte[]) {
                a(str, (byte[]) objA);
                return;
            }
            if (objA instanceof ct) {
                a(str, (ct) objA);
                return;
            }
            if (objA instanceof UUID) {
                a(str, (UUID) objA);
                return;
            }
            if (objA.getClass().isArray()) {
                c(str, objA);
                return;
            }
            if (objA instanceof cz) {
                a(str, (cz) objA);
                return;
            }
            if (objA instanceof cs) {
                a(str, (cs) objA);
                return;
            }
            if (objA instanceof cv) {
                a(str, (cv) objA);
                return;
            }
            if (objA instanceof cu) {
                a(str, (cu) objA);
                return;
            }
            if (objA instanceof bv) {
                cm cmVar = new cm();
                cmVar.put("$ref", ((bv) objA).b());
                cmVar.put("$id", ((bv) objA).a());
                b(str, (cj) cmVar);
                return;
            }
            if (objA instanceof cx) {
                d(str);
            } else if (objA instanceof cw) {
                e(str);
            } else if (!a(str, objA)) {
                throw new IllegalArgumentException("can't serialize " + objA.getClass());
            }
        }
    }

    private void c(String str, Object obj) {
        a((byte) 4, str);
        int iA = this.a.a();
        this.a.c(0);
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            b(String.valueOf(i), Array.get(obj, i));
        }
        this.a.write(0);
        this.a.a(iA, this.a.a() - iA);
    }

    private void a(String str, Iterable iterable) {
        a((byte) 4, str);
        int iA = this.a.a();
        this.a.c(0);
        Iterator it = iterable.iterator();
        int i = 0;
        while (it.hasNext()) {
            b(String.valueOf(i), it.next());
            i++;
        }
        this.a.write(0);
        this.a.a(iA, this.a.a() - iA);
    }

    private void a(String str, Map map) {
        a((byte) 3, str);
        int iA = this.a.a();
        this.a.c(0);
        for (Map.Entry entry : map.entrySet()) {
            b(entry.getKey().toString(), entry.getValue());
        }
        this.a.write(0);
        this.a.a(iA, this.a.a() - iA);
    }

    protected void a(String str) {
        a((byte) 10, str);
    }

    protected void a(String str, cs csVar) {
        a(ClosedCaptionCtrl.MID_ROW_CHAN_1, str);
        this.a.c(csVar.b());
        this.a.c(csVar.a());
    }

    protected void a(String str, cv cvVar) {
        a((byte) 15, str);
        int iA = this.a.a();
        this.a.c(0);
        b(cvVar.a());
        b(cvVar.b());
        this.a.a(iA, this.a.a() - iA);
    }

    protected void a(String str, cu cuVar) {
        a((byte) 13, str);
        this.a.a();
        b(cuVar.a());
    }

    protected void a(String str, Boolean bool) {
        a((byte) 8, str);
        this.a.write(bool.booleanValue() ? 1 : 0);
    }

    protected void a(String str, Date date) {
        a((byte) 9, str);
        this.a.a(date.getTime());
    }

    protected void a(String str, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte) || (number instanceof AtomicInteger)) {
            a((byte) 16, str);
            this.a.c(number.intValue());
        } else if ((number instanceof Long) || (number instanceof AtomicLong)) {
            a((byte) 18, str);
            this.a.a(number.longValue());
        } else {
            if ((number instanceof Float) || (number instanceof Double)) {
                a((byte) 1, str);
                this.a.a(number.doubleValue());
                return;
            }
            throw new IllegalArgumentException("can't serialize " + number.getClass());
        }
    }

    protected void a(String str, byte[] bArr) {
        a(str, 0, bArr);
    }

    protected void a(String str, ct ctVar) {
        a(str, ctVar.a(), ctVar.b());
    }

    private void a(String str, int i, byte[] bArr) {
        a((byte) 5, str);
        int length = bArr.length;
        if (i == 2) {
            length += 4;
        }
        this.a.c(length);
        this.a.write(i);
        if (i == 2) {
            this.a.c(length - 4);
        }
        int iA = this.a.a();
        this.a.write(bArr);
        ca.a(this.a.a() - iA, bArr.length);
    }

    protected void a(String str, UUID uuid) {
        a((byte) 5, str);
        this.a.c(16);
        this.a.write(3);
        this.a.a(uuid.getMostSignificantBits());
        this.a.a(uuid.getLeastSignificantBits());
    }

    protected void a(String str, cz czVar) {
        a(str, czVar.a(), (byte) 14);
    }

    protected void a(String str, String str2) {
        a(str, str2, (byte) 2);
    }

    private void a(String str, String str2, byte b) {
        a(b, str);
        b(str2);
    }

    protected void a(String str, cy cyVar) {
        a((byte) 7, str);
        this.a.d(cyVar.c());
        this.a.d(cyVar.d());
        this.a.d(cyVar.e());
    }

    private void a(String str, Pattern pattern) {
        a((byte) 11, str);
        c(pattern.pattern());
        c(cg.a(pattern.flags()));
    }

    private void d(String str) {
        a((byte) -1, str);
    }

    private void e(String str) {
        a((byte) 127, str);
    }

    protected void a(byte b, String str) {
        this.a.write(b);
        c(str);
    }

    protected void b(String str) {
        int iA = this.a.a();
        this.a.c(0);
        this.a.a(iA, c(str));
    }

    protected int c(String str) {
        int length = str.length();
        int iCharCount = 0;
        int i = 0;
        while (iCharCount < length) {
            int iCodePointAt = Character.codePointAt(str, iCharCount);
            if (iCodePointAt < 128) {
                this.a.write((byte) iCodePointAt);
                i++;
            } else if (iCodePointAt < 2048) {
                this.a.write((byte) ((iCodePointAt >> 6) + 192));
                this.a.write((byte) ((iCodePointAt & 63) + 128));
                i += 2;
            } else if (iCodePointAt < 65536) {
                this.a.write((byte) ((iCodePointAt >> 12) + 224));
                this.a.write((byte) (((iCodePointAt >> 6) & 63) + 128));
                this.a.write((byte) ((iCodePointAt & 63) + 128));
                i += 3;
            } else {
                this.a.write((byte) ((iCodePointAt >> 18) + 240));
                this.a.write((byte) (((iCodePointAt >> 12) & 63) + 128));
                this.a.write((byte) (((iCodePointAt >> 6) & 63) + 128));
                this.a.write((byte) ((iCodePointAt & 63) + 128));
                i += 4;
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        this.a.write(0);
        return i + 1;
    }
}

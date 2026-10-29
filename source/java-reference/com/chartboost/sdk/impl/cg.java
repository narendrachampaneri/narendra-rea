package com.chartboost.sdk.impl;

import com.applovin.sdk.AppLovinTargetingData;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public class cg {
    static final Logger f = Logger.getLogger("org.bson.BSON");
    private static boolean a = false;
    private static boolean b = false;
    static dd<List<cn>> g = new dd<>();
    static dd<List<cn>> h = new dd<>();
    protected static Charset i = Charset.forName("UTF-8");
    static ThreadLocal<ci> j = new ThreadLocal<ci>() { // from class: com.chartboost.sdk.impl.cg.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ci initialValue() {
            return new cl();
        }
    };
    static ThreadLocal<ch> k = new ThreadLocal<ch>() { // from class: com.chartboost.sdk.impl.cg.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ch initialValue() {
            return new ck();
        }
    };

    public static String a(int i2) {
        StringBuilder sb = new StringBuilder();
        int i3 = i2;
        for (a aVar : a.values()) {
            if ((aVar.j & i3) > 0) {
                sb.append(aVar.k);
                i3 -= aVar.j;
            }
        }
        if (i3 > 0) {
            throw new IllegalArgumentException("some flags could not be recognized.");
        }
        return sb.toString();
    }

    private enum a {
        CANON_EQ(128, 'c', "Pattern.CANON_EQ"),
        UNIX_LINES(1, 'd', "Pattern.UNIX_LINES"),
        GLOBAL(256, 'g', null),
        CASE_INSENSITIVE(2, 'i', null),
        MULTILINE(8, AppLovinTargetingData.GENDER_MALE, null),
        DOTALL(32, 's', "Pattern.DOTALL"),
        LITERAL(16, 't', "Pattern.LITERAL"),
        UNICODE_CASE(64, 'u', "Pattern.UNICODE_CASE"),
        COMMENTS(4, 'x', null);

        private static final Map<Character, a> m = new HashMap();
        public final int j;
        public final char k;
        public final String l;

        static {
            for (a aVar : values()) {
                m.put(Character.valueOf(aVar.k), aVar);
            }
        }

        a(int i, char c, String str) {
            this.j = i;
            this.k = c;
            this.l = str;
        }
    }

    public static Object a(Object obj) {
        List<cn> listA;
        if (a() && g.a() != 0 && obj != null && (listA = g.a(obj.getClass())) != null) {
            Iterator<cn> it = listA.iterator();
            while (it.hasNext()) {
                obj = it.next().a(obj);
            }
        }
        return obj;
    }

    private static boolean a() {
        return a || b;
    }
}

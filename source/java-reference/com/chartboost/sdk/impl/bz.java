package com.chartboost.sdk.impl;

import java.lang.reflect.Array;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Map;
import java.util.SimpleTimeZone;
import java.util.UUID;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class bz {
    public static cb a() {
        bx bxVarB = b();
        bxVarB.a(Date.class, new i(bxVarB));
        bxVarB.a(cs.class, new g(bxVarB));
        bxVarB.a(ct.class, new h());
        bxVarB.a(byte[].class, new h());
        return bxVarB;
    }

    static bx b() {
        bx bxVar = new bx();
        bxVar.a(Object[].class, new m(bxVar));
        bxVar.a(Boolean.class, new q());
        bxVar.a(cu.class, new a(bxVar));
        bxVar.a(cv.class, new b(bxVar));
        bxVar.a(bu.class, new d(bxVar));
        bxVar.a(bv.class, new e(bxVar));
        bxVar.a(Iterable.class, new f(bxVar));
        bxVar.a(Map.class, new j(bxVar));
        bxVar.a(cw.class, new k(bxVar));
        bxVar.a(cx.class, new l(bxVar));
        bxVar.a(Number.class, new q());
        bxVar.a(cy.class, new n(bxVar));
        bxVar.a(Pattern.class, new o(bxVar));
        bxVar.a(String.class, new p());
        bxVar.a(UUID.class, new r(bxVar));
        return bxVar;
    }

    private static abstract class c extends bw {
        protected final cb a;

        c(cb cbVar) {
            this.a = cbVar;
        }
    }

    private static class h extends bw {
        private h() {
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            sb.append("<Binary Data>");
        }
    }

    private static class m extends c {
        m(cb cbVar) {
            super(cbVar);
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            sb.append("[ ");
            for (int i = 0; i < Array.getLength(obj); i++) {
                if (i > 0) {
                    sb.append(" , ");
                }
                this.a.a(Array.get(obj, i), sb);
            }
            sb.append("]");
        }
    }

    private static class q extends bw {
        private q() {
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            sb.append(obj.toString());
        }
    }

    private static class g extends c {
        g(cb cbVar) {
            super(cbVar);
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            cs csVar = (cs) obj;
            bs bsVar = new bs();
            bsVar.put("$ts", Integer.valueOf(csVar.a()));
            bsVar.put("$inc", Integer.valueOf(csVar.b()));
            this.a.a(bsVar, sb);
        }
    }

    private static class a extends c {
        a(cb cbVar) {
            super(cbVar);
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            bs bsVar = new bs();
            bsVar.put("$code", ((cu) obj).a());
            this.a.a(bsVar, sb);
        }
    }

    private static class b extends c {
        b(cb cbVar) {
            super(cbVar);
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            cv cvVar = (cv) obj;
            bs bsVar = new bs();
            bsVar.put("$code", cvVar.a());
            bsVar.put("$scope", cvVar.b());
            this.a.a(bsVar, sb);
        }
    }

    private static class i extends c {
        i(cb cbVar) {
            super(cbVar);
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            simpleDateFormat.setCalendar(new GregorianCalendar(new SimpleTimeZone(0, "GMT")));
            this.a.a(new bs("$date", simpleDateFormat.format((Date) obj)), sb);
        }
    }

    private static class d extends c {
        d(cb cbVar) {
            super(cbVar);
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            sb.append("{ ");
            bu buVar = (bu) obj;
            boolean z = true;
            for (String str : buVar.keySet()) {
                if (z) {
                    z = false;
                } else {
                    sb.append(" , ");
                }
                by.a(sb, str);
                sb.append(" : ");
                this.a.a(buVar.a(str), sb);
            }
            sb.append("}");
        }
    }

    private static class e extends c {
        e(cb cbVar) {
            super(cbVar);
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            bv bvVar = (bv) obj;
            bs bsVar = new bs();
            bsVar.put("$ref", bvVar.b());
            bsVar.put("$id", bvVar.a());
            this.a.a(bsVar, sb);
        }
    }

    private static class f extends c {
        f(cb cbVar) {
            super(cbVar);
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            boolean z = true;
            sb.append("[ ");
            for (Object obj2 : (Iterable) obj) {
                if (z) {
                    z = false;
                } else {
                    sb.append(" , ");
                }
                this.a.a(obj2, sb);
            }
            sb.append("]");
        }
    }

    private static class j extends c {
        j(cb cbVar) {
            super(cbVar);
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            sb.append("{ ");
            boolean z = true;
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                if (z) {
                    z = false;
                } else {
                    sb.append(" , ");
                }
                by.a(sb, entry.getKey().toString());
                sb.append(" : ");
                this.a.a(entry.getValue(), sb);
            }
            sb.append("}");
        }
    }

    private static class k extends c {
        k(cb cbVar) {
            super(cbVar);
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            this.a.a(new bs("$maxKey", 1), sb);
        }
    }

    private static class l extends c {
        l(cb cbVar) {
            super(cbVar);
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            this.a.a(new bs("$minKey", 1), sb);
        }
    }

    private static class n extends c {
        n(cb cbVar) {
            super(cbVar);
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            this.a.a(new bs("$oid", obj.toString()), sb);
        }
    }

    private static class o extends c {
        o(cb cbVar) {
            super(cbVar);
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            bs bsVar = new bs();
            bsVar.put("$regex", obj.toString());
            if (((Pattern) obj).flags() != 0) {
                bsVar.put("$options", bt.a(((Pattern) obj).flags()));
            }
            this.a.a(bsVar, sb);
        }
    }

    private static class p extends bw {
        private p() {
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            by.a(sb, (String) obj);
        }
    }

    private static class r extends c {
        r(cb cbVar) {
            super(cbVar);
        }

        @Override // com.chartboost.sdk.impl.cb
        public void a(Object obj, StringBuilder sb) {
            bs bsVar = new bs();
            bsVar.put("$uuid", ((UUID) obj).toString());
            this.a.a(bsVar, sb);
        }
    }
}

package com.chartboost.sdk.impl;

import com.amazon.identity.auth.device.dataobject.AppInfo;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class cq extends cp {
    private static dh<byte[]> g = new dh<byte[]>(640) { // from class: com.chartboost.sdk.impl.cq.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chartboost.sdk.impl.dh
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public byte[] b() {
            return new byte[16384];
        }
    };
    final byte[] a = new byte[16384];
    final char[] b = new char[16384];
    final List<byte[]> c = new ArrayList();
    final cr d = new cr();
    private final a e = new a();
    private final a f = new a();

    public cq() {
        d();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void d() {
        this.e.a();
        this.f.a();
        for (int i = 0; i < this.c.size(); i++) {
            g.b(this.c.get(i));
        }
        this.c.clear();
    }

    @Override // com.chartboost.sdk.impl.cp
    public int a() {
        return this.e.b();
    }

    @Override // com.chartboost.sdk.impl.cp
    public void a(int i) {
        this.e.a(i);
    }

    @Override // com.chartboost.sdk.impl.cp
    public int b() {
        return this.f.b();
    }

    @Override // com.chartboost.sdk.impl.cp, java.io.OutputStream
    public void write(byte[] b) {
        write(b, 0, b.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] b, int off, int len) {
        while (len > 0) {
            byte[] bArrF = f();
            int iMin = Math.min(bArrF.length - this.e.b, len);
            System.arraycopy(b, off, bArrF, this.e.b, iMin);
            this.e.b(iMin);
            len -= iMin;
            off += iMin;
            e();
        }
    }

    @Override // com.chartboost.sdk.impl.cp, java.io.OutputStream
    public void write(int b) {
        f()[this.e.c()] = (byte) (b & 255);
        e();
    }

    void e() {
        if (this.e.b() < this.f.b()) {
            if (this.e.b == 16384) {
                this.e.d();
            }
        } else {
            this.f.a(this.e);
            if (this.f.b >= 16384) {
                this.c.add(g.c());
                this.f.d();
                this.e.a(this.f);
            }
        }
    }

    byte[] f() {
        return b(this.e.a);
    }

    byte[] b(int i) {
        return i < 0 ? this.a : this.c.get(i);
    }

    @Override // com.chartboost.sdk.impl.cp
    public int a(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new NullPointerException("out is null");
        }
        int i = 0;
        for (int i2 = -1; i2 < this.c.size(); i2++) {
            byte[] bArrB = b(i2);
            int iC = this.f.c(i2);
            outputStream.write(bArrB, 0, iC);
            i += iC;
        }
        return i;
    }

    static class a {
        int a;
        int b;

        a() {
            a();
        }

        void a() {
            this.a = -1;
            this.b = 0;
        }

        void a(a aVar) {
            this.a = aVar.a;
            this.b = aVar.b;
        }

        void a(int i) {
            this.a = (i / 16384) - 1;
            this.b = i % 16384;
        }

        int b() {
            return ((this.a + 1) * 16384) + this.b;
        }

        int c() {
            int i = this.b;
            this.b = i + 1;
            return i;
        }

        void b(int i) {
            this.b += i;
            if (this.b > 16384) {
                throw new IllegalArgumentException("something is wrong");
            }
        }

        void d() {
            if (this.b != 16384) {
                throw new IllegalArgumentException("broken");
            }
            this.a++;
            this.b = 0;
        }

        int c(int i) {
            if (i < this.a) {
                return 16384;
            }
            return this.b;
        }

        public String toString() {
            return this.a + AppInfo.DELIM + this.b;
        }
    }
}

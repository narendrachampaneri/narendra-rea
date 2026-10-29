package com.chartboost.sdk.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ac extends ByteArrayOutputStream {
    private final v a;

    public ac(v vVar, int i) {
        this.a = vVar;
        this.buf = this.a.a(Math.max(i, 256));
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.a.a(this.buf);
        this.buf = null;
        super.close();
    }

    public void finalize() {
        this.a.a(this.buf);
    }

    private void a(int i) {
        if (this.count + i > this.buf.length) {
            byte[] bArrA = this.a.a((this.count + i) * 2);
            System.arraycopy(this.buf, 0, bArrA, 0, this.count);
            this.a.a(this.buf);
            this.buf = bArrA;
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(byte[] buffer, int offset, int len) {
        a(len);
        super.write(buffer, offset, len);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(int oneByte) {
        a(1);
        super.write(oneByte);
    }
}

package com.chartboost.sdk.impl;

import android.os.SystemClock;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class w implements com.chartboost.sdk.impl.b {
    private final Map<String, a> a;
    private long b;
    private final File c;
    private final int d;

    public w(File file, int i) {
        this.a = new LinkedHashMap(16, 0.75f, true);
        this.b = 0L;
        this.c = file;
        this.d = i;
    }

    public w(File file) {
        this(file, 5242880);
    }

    @Override // com.chartboost.sdk.impl.b
    public synchronized com.chartboost.sdk.impl.b.a a(String str) {
        b bVar;
        com.chartboost.sdk.impl.b.a aVarA;
        a aVar = this.a.get(str);
        if (aVar == null) {
            aVarA = null;
        } else {
            try {
                File fileC = c(str);
                try {
                    bVar = new b(new FileInputStream(fileC), null);
                    try {
                        a.a(bVar);
                        aVarA = aVar.a(a(bVar, (int) (fileC.length() - ((long) bVar.a))));
                        if (bVar != null) {
                            try {
                                bVar.close();
                            } catch (IOException e) {
                                aVarA = null;
                            }
                        }
                    } catch (IOException e2) {
                        e = e2;
                        t.b("%s: %s", fileC.getAbsolutePath(), e.toString());
                        b(str);
                        if (bVar != null) {
                            try {
                                bVar.close();
                            } catch (IOException e3) {
                                aVarA = null;
                            }
                        }
                        aVarA = null;
                    }
                } catch (IOException e4) {
                    e = e4;
                    bVar = null;
                } catch (Throwable th) {
                    th = th;
                    bVar = null;
                    if (bVar != null) {
                        try {
                            bVar.close();
                        } catch (IOException e5) {
                            aVarA = null;
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return aVarA;
    }

    @Override // com.chartboost.sdk.impl.b
    public synchronized void a() {
        FileInputStream fileInputStream;
        if (!this.c.exists()) {
            if (!this.c.mkdirs()) {
                t.c("Unable to create cache dir %s", this.c.getAbsolutePath());
            }
        } else {
            File[] fileArrListFiles = this.c.listFiles();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    FileInputStream fileInputStream2 = null;
                    try {
                        fileInputStream = new FileInputStream(file);
                        try {
                            try {
                                a aVarA = a.a(fileInputStream);
                                aVarA.a = file.length();
                                a(aVarA.b, aVarA);
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e) {
                                    }
                                }
                            } catch (IOException e2) {
                                if (file != null) {
                                    file.delete();
                                }
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e3) {
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            fileInputStream2 = fileInputStream;
                            th = th;
                            if (fileInputStream2 != null) {
                                try {
                                    fileInputStream2.close();
                                } catch (IOException e4) {
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e5) {
                        fileInputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }
        }
    }

    @Override // com.chartboost.sdk.impl.b
    public synchronized void a(String str, com.chartboost.sdk.impl.b.a aVar) {
        a(aVar.a.length);
        File fileC = c(str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(fileC);
            a aVar2 = new a(str, aVar);
            if (!aVar2.a(fileOutputStream)) {
                fileOutputStream.close();
                t.b("Failed to write header for %s", fileC.getAbsolutePath());
                throw new IOException();
            }
            fileOutputStream.write(aVar.a);
            fileOutputStream.close();
            a(str, aVar2);
        } catch (IOException e) {
            if (!fileC.delete()) {
                t.b("Could not clean up file %s", fileC.getAbsolutePath());
            }
        }
    }

    public synchronized void b(String str) {
        boolean zDelete = c(str).delete();
        e(str);
        if (!zDelete) {
            t.b("Could not delete cache entry for key=%s, filename=%s", str, d(str));
        }
    }

    private String d(String str) {
        int length = str.length() / 2;
        return String.valueOf(String.valueOf(str.substring(0, length).hashCode())) + String.valueOf(str.substring(length).hashCode());
    }

    public File c(String str) {
        return new File(this.c, d(str));
    }

    private void a(int i) {
        int i2;
        if (this.b + ((long) i) >= this.d) {
            if (t.b) {
                t.a("Pruning old cache entries.", new Object[0]);
            }
            long j = this.b;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            Iterator<Map.Entry<String, a>> it = this.a.entrySet().iterator();
            int i3 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i2 = i3;
                    break;
                }
                a value = it.next().getValue();
                if (c(value.b).delete()) {
                    this.b -= value.a;
                } else {
                    t.b("Could not delete cache entry for key=%s, filename=%s", value.b, d(value.b));
                }
                it.remove();
                i2 = i3 + 1;
                if (this.b + ((long) i) < this.d * 0.9f) {
                    break;
                } else {
                    i3 = i2;
                }
            }
            if (t.b) {
                t.a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.b - j), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
            }
        }
    }

    private void a(String str, a aVar) {
        if (!this.a.containsKey(str)) {
            this.b += aVar.a;
        } else {
            this.b = (aVar.a - this.a.get(str).a) + this.b;
        }
        this.a.put(str, aVar);
    }

    private void e(String str) {
        a aVar = this.a.get(str);
        if (aVar != null) {
            this.b -= aVar.a;
            this.a.remove(str);
        }
    }

    private static byte[] a(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = inputStream.read(bArr, i2, i - i2);
            if (i3 == -1) {
                break;
            }
            i2 += i3;
        }
        if (i2 != i) {
            throw new IOException("Expected " + i + " bytes, read " + i2 + " bytes");
        }
        return bArr;
    }

    static class a {
        public long a;
        public String b;
        public String c;
        public long d;
        public long e;
        public long f;
        public Map<String, String> g;

        private a() {
        }

        public a(String str, com.chartboost.sdk.impl.b.a aVar) {
            this.b = str;
            this.a = aVar.a.length;
            this.c = aVar.b;
            this.d = aVar.c;
            this.e = aVar.d;
            this.f = aVar.e;
            this.g = aVar.f;
        }

        public static a a(InputStream inputStream) throws IOException {
            a aVar = new a();
            if (w.a(inputStream) != 538183203) {
                throw new IOException();
            }
            aVar.b = w.c(inputStream);
            aVar.c = w.c(inputStream);
            if (aVar.c.equals("")) {
                aVar.c = null;
            }
            aVar.d = w.b(inputStream);
            aVar.e = w.b(inputStream);
            aVar.f = w.b(inputStream);
            aVar.g = w.d(inputStream);
            return aVar;
        }

        public com.chartboost.sdk.impl.b.a a(byte[] bArr) {
            com.chartboost.sdk.impl.b.a aVar = new com.chartboost.sdk.impl.b.a();
            aVar.a = bArr;
            aVar.b = this.c;
            aVar.c = this.d;
            aVar.d = this.e;
            aVar.e = this.f;
            aVar.f = this.g;
            return aVar;
        }

        public boolean a(OutputStream outputStream) {
            try {
                w.a(outputStream, 538183203);
                w.a(outputStream, this.b);
                w.a(outputStream, this.c == null ? "" : this.c);
                w.a(outputStream, this.d);
                w.a(outputStream, this.e);
                w.a(outputStream, this.f);
                w.a(this.g, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                t.b("%s", e.toString());
                return false;
            }
        }
    }

    private static class b extends FilterInputStream {
        private int a;

        /* synthetic */ b(InputStream inputStream, b bVar) {
            this(inputStream);
        }

        private b(InputStream inputStream) {
            super(inputStream);
            this.a = 0;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int i = super.read();
            if (i != -1) {
                this.a++;
            }
            return i;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] buffer, int offset, int count) throws IOException {
            int i = super.read(buffer, offset, count);
            if (i != -1) {
                this.a += i;
            }
            return i;
        }
    }

    private static int e(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i == -1) {
            throw new EOFException();
        }
        return i;
    }

    static void a(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    static int a(InputStream inputStream) throws IOException {
        return 0 | (e(inputStream) << 0) | (e(inputStream) << 8) | (e(inputStream) << 16) | (e(inputStream) << 24);
    }

    static void a(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    static long b(InputStream inputStream) throws IOException {
        return 0 | ((((long) e(inputStream)) & 255) << 0) | ((((long) e(inputStream)) & 255) << 8) | ((((long) e(inputStream)) & 255) << 16) | ((((long) e(inputStream)) & 255) << 24) | ((((long) e(inputStream)) & 255) << 32) | ((((long) e(inputStream)) & 255) << 40) | ((((long) e(inputStream)) & 255) << 48) | ((((long) e(inputStream)) & 255) << 56);
    }

    static void a(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    static String c(InputStream inputStream) throws IOException {
        return new String(a(inputStream, (int) b(inputStream)), "UTF-8");
    }

    static void a(Map<String, String> map, OutputStream outputStream) throws IOException {
        if (map != null) {
            a(outputStream, map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                a(outputStream, entry.getKey());
                a(outputStream, entry.getValue());
            }
            return;
        }
        a(outputStream, 0);
    }

    static Map<String, String> d(InputStream inputStream) throws IOException {
        Map<String, String> map;
        int iA = a(inputStream);
        if (iA == 0) {
            map = Collections.emptyMap();
        } else {
            map = new HashMap<>(iA);
        }
        for (int i = 0; i < iA; i++) {
            map.put(c(inputStream).intern(), c(inputStream).intern());
        }
        return map;
    }
}

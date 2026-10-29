package com.chartboost.sdk.Libraries;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.TextUtils;
import com.chartboost.sdk.impl.bc;
import com.newrelic.agent.android.instrumentation.BitmapFactoryInstrumentation;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class j implements com.chartboost.sdk.f.b {
    private a a;
    private com.chartboost.sdk.f b;
    private String c;
    private float d = 1.0f;
    private bc.b e = new bc.b() { // from class: com.chartboost.sdk.Libraries.j.1
        @Override // com.chartboost.sdk.impl.bc.b
        public void a(a aVar, Bundle bundle) {
            j.this.a = aVar;
            j.this.b.a(j.this);
        }
    };

    public static class a {
        private String b;
        private File c;
        private h e;
        private int f = -1;
        private int g = -1;
        private Bitmap d = null;
        private int a = 1;

        public a(String str, File file, h hVar) {
            this.c = file;
            this.b = str;
            this.e = hVar;
        }

        public Bitmap a() {
            if (this.d == null) {
                b();
            }
            return this.d;
        }

        public void b() {
            if (this.d == null) {
                CBLogging.a("MemoryBitmap", "Loading image '" + this.b + "' from cache");
                byte[] bArrB = this.e.b(this.c);
                if (bArrB == null) {
                    CBLogging.b("MemoryBitmap", "decode() - bitmap not found");
                    return;
                }
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactoryInstrumentation.decodeByteArray(bArrB, 0, bArrB.length, options);
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inJustDecodeBounds = false;
                options2.inDither = false;
                options2.inPurgeable = true;
                options2.inInputShareable = true;
                options2.inTempStorage = new byte[32768];
                options2.inSampleSize = 1;
                while (options2.inSampleSize < 32) {
                    try {
                        this.d = BitmapFactoryInstrumentation.decodeByteArray(bArrB, 0, bArrB.length, options2);
                        break;
                    } catch (Exception e) {
                        CBLogging.b("MemoryBitmap", "Exception raised decoding bitmap", e);
                    } catch (OutOfMemoryError e2) {
                        CBLogging.b("MemoryBitmap", "OutOfMemoryError suppressed - trying larger sample size", e2);
                        options2.inSampleSize *= 2;
                    }
                }
                this.a = options2.inSampleSize;
            }
        }

        public void c() {
            try {
                if (this.d != null && !this.d.isRecycled()) {
                    this.d.recycle();
                }
            } catch (Exception e) {
            }
            this.d = null;
        }

        public int d() {
            if (this.d != null) {
                return this.d.getWidth();
            }
            if (this.f >= 0) {
                return this.f;
            }
            f();
            return this.f;
        }

        public int e() {
            if (this.d != null) {
                return this.d.getHeight();
            }
            if (this.g >= 0) {
                return this.g;
            }
            f();
            return this.g;
        }

        private void f() {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactoryInstrumentation.decodeFile(this.c.getAbsolutePath(), options);
                this.f = options.outWidth;
                this.g = options.outHeight;
            } catch (Exception e) {
                CBLogging.b("MemoryBitmap", "Error decoding file size", e);
            }
        }
    }

    public j(com.chartboost.sdk.f fVar) {
        this.b = fVar;
    }

    public int b() {
        return this.a.d() * this.a.a;
    }

    public int c() {
        return this.a.e() * this.a.a;
    }

    public void a(String str) {
        a(this.b.g(), str, new Bundle());
    }

    public void a(e.a aVar, String str, final Bundle bundle) {
        final e.a aVarA = aVar.a(str);
        this.c = str;
        if (!aVarA.b()) {
            final String strE = aVarA.e("url");
            this.d = aVarA.a("scale").a(1.0f);
            if (!TextUtils.isEmpty(strE)) {
                this.b.b(this);
                CBUtility.e().post(new Runnable() { // from class: com.chartboost.sdk.Libraries.j.2
                    @Override // java.lang.Runnable
                    public void run() {
                        String strE2 = "";
                        if (aVarA.e("checksum") != null && !aVarA.e("checksum").isEmpty()) {
                            strE2 = aVarA.e("checksum");
                        }
                        bc.a().a(strE, strE2, j.this.e, null, bundle == null ? new Bundle() : bundle);
                    }
                });
            }
        }
    }

    @Override // com.chartboost.sdk.f.b
    public boolean a() {
        return e();
    }

    public void d() {
        if (this.a != null) {
            this.a.c();
        }
    }

    public boolean e() {
        return this.a != null;
    }

    public Bitmap f() {
        if (this.a != null) {
            return this.a.a();
        }
        return null;
    }

    public float g() {
        return this.d;
    }

    public int h() {
        return Math.round(b() / this.d);
    }

    public int i() {
        return Math.round(c() / this.d);
    }
}

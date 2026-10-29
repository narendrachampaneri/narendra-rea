package com.chartboost.sdk.impl;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.newrelic.agent.android.instrumentation.BitmapFactoryInstrumentation;

/* JADX INFO: loaded from: classes.dex */
public class ab extends l<Bitmap> {
    private static final Object e = new Object();
    private final n.b<Bitmap> a;
    private final Bitmap.Config b;
    private final int c;
    private final int d;

    public ab(String str, n.b<Bitmap> bVar, int i, int i2, Bitmap.Config config, n.a aVar) {
        super(0, str, aVar);
        a((p) new d(1000, 2, 2.0f));
        this.a = bVar;
        this.b = config;
        this.c = i;
        this.d = i2;
    }

    @Override // com.chartboost.sdk.impl.l
    public l.a s() {
        return l.a.LOW;
    }

    private static int b(int i, int i2, int i3, int i4) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (i == 0) {
            return (int) ((((double) i2) / ((double) i4)) * ((double) i3));
        }
        if (i2 != 0) {
            double d = ((double) i4) / ((double) i3);
            if (((double) i) * d > i2) {
                return (int) (((double) i2) / d);
            }
            return i;
        }
        return i;
    }

    @Override // com.chartboost.sdk.impl.l
    protected n<Bitmap> a(i iVar) {
        n<Bitmap> nVarA;
        synchronized (e) {
            try {
                nVarA = b(iVar);
            } catch (OutOfMemoryError e2) {
                t.c("Caught OOM for %d byte image, url=%s", Integer.valueOf(iVar.b.length), d());
                nVarA = n.a(new k(e2));
            }
        }
        return nVarA;
    }

    private n<Bitmap> b(i iVar) {
        Bitmap bitmapCreateScaledBitmap;
        byte[] bArr = iVar.b;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.c == 0 && this.d == 0) {
            options.inPreferredConfig = this.b;
            bitmapCreateScaledBitmap = BitmapFactoryInstrumentation.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactoryInstrumentation.decodeByteArray(bArr, 0, bArr.length, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            int iB = b(this.c, this.d, i, i2);
            int iB2 = b(this.d, this.c, i2, i);
            options.inJustDecodeBounds = false;
            options.inSampleSize = a(i, i2, iB, iB2);
            Bitmap bitmapDecodeByteArray = BitmapFactoryInstrumentation.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray == null || (bitmapDecodeByteArray.getWidth() <= iB && bitmapDecodeByteArray.getHeight() <= iB2)) {
                bitmapCreateScaledBitmap = bitmapDecodeByteArray;
            } else {
                bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iB, iB2, true);
                bitmapDecodeByteArray.recycle();
            }
        }
        if (bitmapCreateScaledBitmap == null) {
            return n.a(new k(iVar));
        }
        return n.a(bitmapCreateScaledBitmap, y.a(iVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chartboost.sdk.impl.l
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(Bitmap bitmap) {
        this.a.a(bitmap);
    }

    static int a(int i, int i2, int i3, int i4) {
        float f = 1.0f;
        while (f * 2.0f <= Math.min(((double) i) / ((double) i3), ((double) i2) / ((double) i4))) {
            f *= 2.0f;
        }
        return (int) f;
    }
}

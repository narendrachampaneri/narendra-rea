package com.vungle.publisher.net.http;

import android.os.SystemClock;
import com.vungle.log.Logger;
import com.vungle.publisher.ct;
import com.vungle.publisher.cv;
import com.vungle.publisher.cw;
import com.vungle.publisher.df;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class MaxRetryAgeHttpResponseHandler extends ct {
    public int i;
    int j;
    public int h = 100;
    private int a = 2000;
    private int b = 300000;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.ct
    public final void d(HttpTransaction httpTransaction, HttpResponse httpResponse) {
        cw cwVar = httpTransaction.b;
        int i = cwVar.b;
        if (!(this.h > 0 && i >= this.h)) {
            if (!(this.j > 0 && SystemClock.elapsedRealtime() - cwVar.a >= ((long) this.j))) {
                int i2 = httpResponse.b;
                if ((a(i2) || i2 == 601) ? false : true) {
                    int i3 = cwVar.c;
                    if (!((i2 == 408 || i2 == 603) ? false : true)) {
                        int i4 = cwVar.c - 1;
                        cwVar.c = i4;
                        if (i4 < 0) {
                            Logger.d(Logger.NETWORK_TAG, "Attempted to decrement softRetryCount < 0");
                            cwVar.c = 0;
                        }
                        i3 = cwVar.c;
                    }
                    if (!(this.i > 0 && i3 >= this.i)) {
                        int iA = df.a(i, this.a, this.b);
                        Logger.d(Logger.NETWORK_TAG, "Retrying " + httpTransaction + " in " + (iA / 1000) + " seconds");
                        this.f.a(new cv(httpTransaction), httpTransaction.c, iA);
                        return;
                    }
                }
            }
        }
        super.d(httpTransaction, httpResponse);
    }
}

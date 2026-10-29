package com.vungle.publisher.net.http;

import com.vungle.log.Logger;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.bj;
import com.vungle.publisher.bk;
import com.vungle.publisher.cc;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.m;
import com.vungle.publisher.n;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class DownloadHttpResponseHandler extends MaxRetryAgeHttpResponseHandler {
    String a;
    String b;
    bj.b c;

    @Inject
    EventBus d;

    @Inject
    AdManager e;

    DownloadHttpResponseHandler() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.ct
    public final void a(HttpTransaction httpTransaction, HttpResponse httpResponse) throws Throwable {
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            HttpURLConnection httpURLConnection = httpResponse.a;
            inputStream = httpURLConnection.getInputStream();
            try {
                File file = new File(this.b);
                if (cc.b(file)) {
                    Logger.d(Logger.NETWORK_TAG, "downloading to: " + this.b);
                    byte[] bArr = new byte[8192];
                    fileOutputStream = new FileOutputStream(file);
                    int i = 0;
                    while (true) {
                        try {
                            int i2 = inputStream.read(bArr);
                            if (i2 <= 0) {
                                break;
                            }
                            i += i2;
                            fileOutputStream.write(bArr, 0, i2);
                        } catch (Throwable th) {
                            fileOutputStream2 = fileOutputStream;
                            th = th;
                            HttpRequest httpRequest = httpTransaction.a;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e) {
                                    Logger.d(Logger.NETWORK_TAG, httpRequest + ": error closing input stream", e);
                                }
                            }
                            if (fileOutputStream2 != null) {
                                try {
                                    fileOutputStream2.close();
                                    throw th;
                                } catch (IOException e2) {
                                    Logger.d(Logger.NETWORK_TAG, httpRequest + ": error closing output stream", e2);
                                    throw th;
                                }
                            }
                            throw th;
                        }
                    }
                    fileOutputStream.flush();
                    int contentLength = httpURLConnection.getContentLength();
                    if (contentLength < 0 || contentLength == i) {
                        Logger.d(Logger.NETWORK_TAG, "download complete: " + this.b + ", size: " + i);
                        bk bkVarA = this.e.a(this.a).a(this.c);
                        switch (this.c) {
                            case preRoll:
                            case postRoll:
                                bkVarA.a(Integer.valueOf(i));
                                break;
                        }
                        Logger.i(Logger.NETWORK_TAG, this.c + " downloaded for ad " + this.a);
                        bkVarA.a(bj.a.downloaded);
                        bkVarA.m();
                        this.d.a(new n(bkVarA, httpTransaction.b));
                    } else {
                        Logger.w(Logger.NETWORK_TAG, "download size mismatch: " + this.b + ", expected size: " + contentLength + ", actual size: " + i);
                        b(httpTransaction, httpResponse);
                    }
                } else {
                    Logger.w(Logger.NETWORK_TAG, "could not create or directory not writeable: " + file);
                    b(httpTransaction, httpResponse);
                    fileOutputStream = null;
                }
                HttpRequest httpRequest2 = httpTransaction.a;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                        Logger.d(Logger.NETWORK_TAG, httpRequest2 + ": error closing input stream", e3);
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e4) {
                        Logger.d(Logger.NETWORK_TAG, httpRequest2 + ": error closing output stream", e4);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.ct
    public final void b(HttpTransaction httpTransaction, HttpResponse httpResponse) {
        this.d.a(new m(httpTransaction.b));
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class Factory {

        @Inject
        Provider<DownloadHttpResponseHandler> a;

        Factory() {
        }
    }
}

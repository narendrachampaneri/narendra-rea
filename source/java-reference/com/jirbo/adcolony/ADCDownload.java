package com.jirbo.adcolony;

import android.os.Build;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;

/* JADX INFO: loaded from: classes.dex */
class ADCDownload extends j implements Runnable {
    d a;
    Listener b;
    String c;
    File d;
    Object e;
    String f;
    String g;
    boolean h;
    boolean i;
    boolean j;
    Map<String, List<String>> k;
    SSLContext l;
    int m;
    String n;

    public interface Listener {
        void on_download_finished(ADCDownload aDCDownload);
    }

    ADCDownload(d controller, String url, Listener listener) {
        this(controller, url, listener, null);
    }

    ADCDownload(d controller, String url, Listener listener, String filepath) {
        super(controller, false);
        this.c = "";
        this.c = url;
        if (url == null) {
            this.c = "";
        }
        this.b = listener;
        if (filepath != null) {
            this.d = new File(filepath);
        }
    }

    ADCDownload a(Object obj) {
        this.e = obj;
        return this;
    }

    ADCDownload a(String str, String str2) {
        this.f = str;
        this.g = str2;
        return this;
    }

    public void b() {
        z.a(this);
    }

    /* JADX WARN: Code duplicated, block: B:136:0x030c  */
    /* JADX WARN: Code duplicated, block: B:156:0x00f8 A[EDGE_INSN: B:156:0x00f8->B:50:0x00f8 BREAK  A[LOOP:0: B:3:0x0006->B:138:0x0316], SYNTHETIC] */
    @Override // java.lang.Runnable
    public void run() throws IOException {
        HttpsURLConnection httpsURLConnection;
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 > 3) {
                break;
            }
            HttpsURLConnection httpsURLConnection2 = null;
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) HttpInstrumentation.openConnection(new URL(this.c).openConnection());
                if (this.f != null) {
                    l.a.b((Object) "Performing POST");
                    if (!this.c.startsWith("https://") || Build.VERSION.SDK_INT < 10) {
                        httpsURLConnection = null;
                    } else {
                        HttpsURLConnection httpsURLConnection3 = (HttpsURLConnection) HttpInstrumentation.openConnection(new URL(this.c).openConnection());
                        this.j = true;
                        httpsURLConnection = httpsURLConnection3;
                    }
                    if (this.j) {
                        httpsURLConnection.setRequestMethod("POST");
                    } else {
                        httpURLConnection.setRequestMethod("POST");
                    }
                    if (this.j) {
                        httpsURLConnection.setDoOutput(true);
                    } else {
                        httpURLConnection.setDoOutput(true);
                    }
                    (this.j ? new PrintStream(httpsURLConnection.getOutputStream()) : new PrintStream(httpURLConnection.getOutputStream())).println(this.g);
                    l.a.a("Post data: ").b((Object) this.g);
                    if (this.j) {
                        httpsURLConnection.connect();
                    } else {
                        httpURLConnection.connect();
                    }
                    if ((this.j && httpsURLConnection.getResponseCode() == 200) || (!this.j && httpURLConnection.getResponseCode() == 200)) {
                        InputStream inputStream = this.j ? httpsURLConnection.getInputStream() : httpURLConnection.getInputStream();
                        StringBuilder sb = new StringBuilder();
                        this.k = this.j ? httpsURLConnection.getHeaderFields() : httpURLConnection.getHeaderFields();
                        byte[] bArr = new byte[1024];
                        for (int i3 = inputStream.read(bArr, 0, 1024); i3 != -1; i3 = inputStream.read(bArr, 0, 1024)) {
                            int i4 = -1;
                            while (true) {
                                i4++;
                                if (i4 < i3) {
                                    sb.append((char) bArr[i4]);
                                }
                            }
                        }
                        inputStream.close();
                        try {
                            this.n = sb.toString();
                            this.m = this.n.length();
                            if (this.c.contains("androidads23")) {
                                a.al = System.currentTimeMillis();
                            }
                            this.i = true;
                            a.a(this);
                            return;
                        } catch (OutOfMemoryError e) {
                            l.d.b((Object) "Out of memory, disabling AdColony");
                            AdColony.disable();
                            return;
                        }
                    }
                    if (i2 == 3) {
                        break;
                    }
                    try {
                        Thread.sleep((i2 + 1) * 10 * 1000);
                    } catch (InterruptedException e2) {
                    }
                    l.b.a("Trying again (").a(i2 + 1).b((Object) "/3)");
                    i = i2 + 1;
                } else {
                    httpURLConnection.setReadTimeout(30000);
                    if (this.h) {
                        httpURLConnection.setInstanceFollowRedirects(false);
                    }
                    if (this.d != null) {
                        if (this.a != null && this.a.f != null) {
                            this.a.f.b();
                        }
                        String absolutePath = this.d.getAbsolutePath();
                        FileOutputStream fileOutputStream = new FileOutputStream(absolutePath);
                        InputStream inputStream2 = httpURLConnection.getInputStream();
                        int contentLength = httpURLConnection.getContentLength();
                        this.m = 0;
                        byte[] bArr2 = new byte[1024];
                        int i5 = inputStream2.read(bArr2, 0, 1024);
                        while (i5 != -1) {
                            if (contentLength > 0) {
                                if (i5 > contentLength) {
                                    i5 = contentLength;
                                }
                                contentLength -= i5;
                            }
                            this.m += i5;
                            fileOutputStream.write(bArr2, 0, i5);
                            i5 = inputStream2.read(bArr2, 0, 1024);
                            if (contentLength == 0) {
                                break;
                            }
                        }
                        inputStream2.close();
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        l.b.a("Downloaded ").a(this.c).a(" to ").b((Object) absolutePath);
                    } else {
                        if (this.h) {
                            if (this.c.startsWith("https://") && Build.VERSION.SDK_INT >= 10) {
                                httpsURLConnection2 = (HttpsURLConnection) HttpInstrumentation.openConnection(new URL(this.c).openConnection());
                                this.j = true;
                            }
                            int responseCode = this.j ? httpsURLConnection2.getResponseCode() : httpURLConnection.getResponseCode();
                            if (responseCode > 0) {
                                l.a.a("Got HTTP response ").a(responseCode).b((Object) " - counting as completed submission for 3rd party tracking.");
                                l.b.a("Downloaded ").b((Object) this.c);
                                this.n = "";
                                this.m = 0;
                                this.i = true;
                                a.a(this);
                                return;
                            }
                        }
                        if (this.c.startsWith("https://") && Build.VERSION.SDK_INT >= 10) {
                            httpsURLConnection2 = (HttpsURLConnection) HttpInstrumentation.openConnection(new URL(this.c).openConnection());
                            this.j = true;
                            l.a.b((Object) "ADCDownload - use ssl!");
                        } else {
                            this.j = false;
                        }
                        l.a.b((Object) "ADCDownload - before pause");
                        try {
                            Thread.sleep(3000L);
                        } catch (Exception e3) {
                        }
                        l.a.b((Object) "ADCDownload - getInputStream");
                        InputStream inputStream3 = this.j ? httpsURLConnection2.getInputStream() : httpURLConnection.getInputStream();
                        StringBuilder sb2 = new StringBuilder();
                        byte[] bArr3 = new byte[1024];
                        for (int i6 = inputStream3.read(bArr3, 0, 1024); i6 != -1; i6 = inputStream3.read(bArr3, 0, 1024)) {
                            int i7 = -1;
                            while (true) {
                                i7++;
                                if (i7 < i6) {
                                    try {
                                        sb2.append((char) bArr3[i7]);
                                    } catch (OutOfMemoryError e4) {
                                        l.d.b((Object) "Out of memory, disabling AdColony");
                                        AdColony.disable();
                                        return;
                                    }
                                }
                            }
                        }
                        inputStream3.close();
                        try {
                            this.n = sb2.toString();
                            this.m = this.n.length();
                            l.b.a("Downloaded ").b((Object) this.c);
                        } catch (OutOfMemoryError e5) {
                            l.d.b((Object) "Out of memory, disabling AdColony");
                            AdColony.disable();
                            return;
                        }
                    }
                    this.i = true;
                    a.a(this);
                    return;
                }
            } catch (IOException e6) {
                a.c("Download of " + this.c + " failed:\n" + e6.toString());
            }
            a.c("Download of " + this.c + " failed:\n" + e6.toString());
            if (i2 == 3) {
                break;
                break;
            } else {
                Thread.sleep((i2 + 1) * 10 * 1000);
                l.b.a("Trying again (").a(i2 + 1).b((Object) "/3)");
                i = i2 + 1;
            }
        }
        if (this.c.contains("androidads23")) {
            a.p = false;
        }
        this.i = false;
        a.a(this);
    }

    @Override // com.jirbo.adcolony.j
    void a() {
        this.b.on_download_finished(this);
    }
}

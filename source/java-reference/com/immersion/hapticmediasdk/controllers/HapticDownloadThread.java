package com.immersion.hapticmediasdk.controllers;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import com.immersion.hapticmediasdk.models.HttpUnsuccessfulException;
import com.immersion.hapticmediasdk.utils.FileManager;
import com.immersion.hapticmediasdk.utils.Log;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public class HapticDownloadThread extends Thread {
    private static final String a = "HapticDownloadThread";
    private static final int b = 4096;

    /* JADX INFO: renamed from: b04150415Е041504150415, reason: contains not printable characters */
    public static int f43b04150415041504150415 = 1;

    /* JADX INFO: renamed from: b0415ЕЕ041504150415, reason: contains not printable characters */
    public static int f44b0415041504150415 = 39;

    /* JADX INFO: renamed from: bЕ0415Е041504150415, reason: contains not printable characters */
    public static int f45b0415041504150415 = 0;

    /* JADX INFO: renamed from: bЕЕ0415041504150415, reason: contains not printable characters */
    public static int f46b0415041504150415 = 2;
    private String c;
    private Handler d;
    private boolean e;
    private Thread f;
    private FileManager g;
    private volatile boolean h;
    private volatile boolean i;
    private volatile boolean j;

    public HapticDownloadThread(String str, Handler handler, boolean z, FileManager fileManager) {
        super(a);
        this.h = false;
        this.i = false;
        this.j = false;
        this.c = str;
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (1) {
                            case 0:
                                break;
                            case 1:
                                break;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
        this.d = handler;
        this.e = z;
        this.g = fileManager;
        Looper looper = this.d.getLooper();
        if (((f44b0415041504150415 + f43b04150415041504150415) * f44b0415041504150415) % f46b0415041504150415 != f45b0415041504150415) {
            f44b0415041504150415 = 70;
            f45b0415041504150415 = m36b04150415041504150415();
        }
        this.f = looper.getThread();
    }

    /* JADX INFO: renamed from: b0415Е0415041504150415, reason: contains not printable characters */
    public static int m36b04150415041504150415() {
        return 19;
    }

    /* JADX INFO: renamed from: b0427ЧЧЧЧЧ, reason: contains not printable characters */
    public static int m37b0427() {
        return 1;
    }

    /* JADX INFO: renamed from: bЕ04150415041504150415, reason: contains not printable characters */
    public static int m38b04150415041504150415() {
        return 0;
    }

    public synchronized boolean isFirstPacketReady() {
        try {
        } catch (Exception e) {
            throw e;
        }
        return this.h || this.i;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws Exception {
        FileInputStream fileInputStream;
        if (!this.e) {
            try {
                fileInputStream = new FileInputStream(this.c);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                fileInputStream = null;
            }
            if (fileInputStream != null) {
                try {
                    writeToFile(fileInputStream, fileInputStream.available());
                    return;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            return;
        }
        Process.setThreadPriority(10);
        try {
            HttpResponse httpResponseExecuteGet = ImmersionHttpClient.getHttpClient().executeGet(this.c, null, TraceMachine.UNHEALTHY_TRACE_TIMEOUT);
            int statusCode = httpResponseExecuteGet.getStatusLine().getStatusCode();
            if (statusCode == 200) {
                writeToFile(httpResponseExecuteGet.getEntity().getContent(), Integer.parseInt(httpResponseExecuteGet.getFirstHeader("Content-Length").getValue()));
                return;
            }
            StringBuilder sb = new StringBuilder("HTTP STATUS CODE: ");
            sb.append(statusCode);
            switch (statusCode) {
                case HttpStatus.SC_BAD_REQUEST /* 400 */:
                    sb.append(" Bad Request");
                    break;
                case HttpStatus.SC_FORBIDDEN /* 403 */:
                    sb.append(" Forbidden");
                    break;
                case 404:
                    sb.append(" Not Found");
                    break;
                case 500:
                    sb.append(" Internal Server Error");
                    break;
                case HttpStatus.SC_BAD_GATEWAY /* 502 */:
                    sb.append(" Bad Gateway");
                    break;
                case HttpStatus.SC_SERVICE_UNAVAILABLE /* 503 */:
                    sb.append(" Service Unavailable");
                    break;
            }
            throw new HttpUnsuccessfulException(statusCode, sb.toString());
        } catch (InterruptedException e3) {
            Thread.currentThread().interrupt();
        } catch (Exception e4) {
            Message messageObtainMessage = this.d.obtainMessage(8);
            Bundle bundle = new Bundle();
            bundle.putSerializable(HapticPlaybackThread.HAPTIC_DOWNLOAD_EXCEPTION_KEY, e4);
            messageObtainMessage.setData(bundle);
            if (this.f.isAlive() && !this.j) {
                Handler handler = this.d;
                if (((f44b0415041504150415 + f43b04150415041504150415) * f44b0415041504150415) % f46b0415041504150415 != f45b0415041504150415) {
                    f44b0415041504150415 = m36b04150415041504150415();
                    f45b0415041504150415 = m36b04150415041504150415();
                }
                handler.sendMessage(messageObtainMessage);
            }
            Log.e(a, e4.getMessage());
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0020. Please report as an issue. */
    public void terminate() {
        if (((f44b0415041504150415 + f43b04150415041504150415) * f44b0415041504150415) % f46b0415041504150415 != m38b04150415041504150415()) {
            f44b0415041504150415 = 53;
            f45b0415041504150415 = m36b04150415041504150415();
        }
        while (true) {
            char c = 0;
            switch (c) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (1) {
                            case 0:
                                break;
                            case 1:
                                break;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
        this.j = true;
    }

    public boolean writeToFile(InputStream inputStream, int i) throws Exception {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream;
        int i2;
        int i3 = 0;
        try {
            byte[] bArr = new byte[4096];
            try {
                if (inputStream == null || i <= 0) {
                    if (!this.h) {
                        Message messageObtainMessage = this.d.obtainMessage(8);
                        Bundle bundle = new Bundle();
                        bundle.putSerializable(HapticPlaybackThread.HAPTIC_DOWNLOAD_EXCEPTION_KEY, new FileNotFoundException("downloaded an empty file"));
                        messageObtainMessage.setData(bundle);
                        if (this.f.isAlive() && !this.j) {
                            this.d.sendMessage(messageObtainMessage);
                        }
                        Log.e(a, "downloaded an empty file");
                    }
                    this.g.closeCloseable(null);
                    this.g.closeCloseable(null);
                    this.i = true;
                    return false;
                }
                try {
                    BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream);
                    try {
                        BufferedOutputStream bufferedOutputStreamMakeOutputStreamForStreaming = this.e ? this.g.makeOutputStreamForStreaming(this.c) : this.g.makeOutputStream(this.c);
                        if (bufferedOutputStreamMakeOutputStreamForStreaming == null) {
                            if (!this.h) {
                                Message messageObtainMessage2 = this.d.obtainMessage(8);
                                Bundle bundle2 = new Bundle();
                                bundle2.putSerializable(HapticPlaybackThread.HAPTIC_DOWNLOAD_EXCEPTION_KEY, new FileNotFoundException("downloaded an empty file"));
                                messageObtainMessage2.setData(bundle2);
                                if (this.f.isAlive() && !this.j) {
                                    this.d.sendMessage(messageObtainMessage2);
                                }
                                Log.e(a, "downloaded an empty file");
                            }
                            this.g.closeCloseable(bufferedInputStream2);
                            this.g.closeCloseable(bufferedOutputStreamMakeOutputStreamForStreaming);
                            this.i = true;
                            return false;
                        }
                        try {
                            if (this.e) {
                                while (!isInterrupted() && !this.j && (i2 = bufferedInputStream2.read(bArr, 0, 4096)) >= 0) {
                                    bufferedOutputStreamMakeOutputStreamForStreaming.write(bArr, 0, i2);
                                    i3 += i2;
                                    if (this.f.isAlive()) {
                                        if (!this.h) {
                                            this.h = true;
                                        }
                                        bufferedOutputStreamMakeOutputStreamForStreaming.flush();
                                        this.d.sendMessage(this.d.obtainMessage(3, i3, 0));
                                    }
                                }
                            } else {
                                this.h = true;
                                if (this.j) {
                                    if (!this.h) {
                                        Message messageObtainMessage3 = this.d.obtainMessage(8);
                                        Bundle bundle3 = new Bundle();
                                        bundle3.putSerializable(HapticPlaybackThread.HAPTIC_DOWNLOAD_EXCEPTION_KEY, new FileNotFoundException("downloaded an empty file"));
                                        messageObtainMessage3.setData(bundle3);
                                        if (this.f.isAlive() && !this.j) {
                                            this.d.sendMessage(messageObtainMessage3);
                                        }
                                        Log.e(a, "downloaded an empty file");
                                    }
                                    this.g.closeCloseable(bufferedInputStream2);
                                    this.g.closeCloseable(bufferedOutputStreamMakeOutputStreamForStreaming);
                                    this.i = true;
                                    return true;
                                }
                                this.d.sendMessage(this.d.obtainMessage(3, i, 0));
                            }
                            Log.i(a, "file download completed");
                            if (!this.h) {
                                Message messageObtainMessage4 = this.d.obtainMessage(8);
                                Bundle bundle4 = new Bundle();
                                if (((f44b0415041504150415 + f43b04150415041504150415) * f44b0415041504150415) % f46b0415041504150415 != f45b0415041504150415) {
                                    f44b0415041504150415 = 2;
                                    f45b0415041504150415 = 54;
                                }
                                bundle4.putSerializable(HapticPlaybackThread.HAPTIC_DOWNLOAD_EXCEPTION_KEY, new FileNotFoundException("downloaded an empty file"));
                                messageObtainMessage4.setData(bundle4);
                                if (this.f.isAlive() && !this.j) {
                                    this.d.sendMessage(messageObtainMessage4);
                                }
                                Log.e(a, "downloaded an empty file");
                            }
                            this.g.closeCloseable(bufferedInputStream2);
                            if (((f44b0415041504150415 + m37b0427()) * f44b0415041504150415) % f46b0415041504150415 != f45b0415041504150415) {
                                f44b0415041504150415 = 47;
                                f45b0415041504150415 = 86;
                            }
                            this.g.closeCloseable(bufferedOutputStreamMakeOutputStreamForStreaming);
                            this.i = true;
                            return true;
                        } catch (Throwable th) {
                            bufferedInputStream = bufferedInputStream2;
                            BufferedOutputStream bufferedOutputStream2 = bufferedOutputStreamMakeOutputStreamForStreaming;
                            th = th;
                            bufferedOutputStream = bufferedOutputStream2;
                            if (!this.h) {
                                Message messageObtainMessage5 = this.d.obtainMessage(8);
                                Bundle bundle5 = new Bundle();
                                bundle5.putSerializable(HapticPlaybackThread.HAPTIC_DOWNLOAD_EXCEPTION_KEY, new FileNotFoundException("downloaded an empty file"));
                                messageObtainMessage5.setData(bundle5);
                                if (this.f.isAlive() && !this.j) {
                                    this.d.sendMessage(messageObtainMessage5);
                                }
                                Log.e(a, "downloaded an empty file");
                            }
                            this.g.closeCloseable(bufferedInputStream);
                            this.g.closeCloseable(bufferedOutputStream);
                            this.i = true;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedOutputStream = null;
                        bufferedInputStream = bufferedInputStream2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedOutputStream = null;
                    bufferedInputStream = null;
                }
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }
}

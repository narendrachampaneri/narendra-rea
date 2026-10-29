package com.immersion.hapticmediasdk.controllers;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import com.immersion.content.EndpointWarp;
import com.immersion.hapticmediasdk.models.NotEnoughHapticBytesAvailableException;
import com.immersion.hapticmediasdk.utils.FileManager;
import com.immersion.hapticmediasdk.utils.Log;
import com.immersion.hapticmediasdk.utils.Profiler;
import com.immersion.hapticmediasdk.utils.RuntimeInfo;
import java.util.ArrayList;
import java.util.Iterator;
import rrrrrr.ccrcrr;
import rrrrrr.crcrrr;
import rrrrrr.rccrrr;
import rrrrrr.rrcrrr;

/* JADX INFO: loaded from: classes2.dex */
public class HapticPlaybackThread extends Thread {
    private static final long D = 100;
    private static final int E = 5;
    public static final int HAPTIC_BYTES_AVAILABLE_TO_DOWNLOAD = 3;
    public static final int HAPTIC_DOWNLOAD_ERROR = 8;
    public static final String HAPTIC_DOWNLOAD_EXCEPTION_KEY = "haptic_download_exception";
    public static final int HAPTIC_PAUSE_PLAYBACK = 5;
    public static final int HAPTIC_PLAYBACK_FOR_TIME_CODE = 2;
    public static final int HAPTIC_PLAYBACK_IS_READY = 6;
    public static final int HAPTIC_QUIT_PLAYBACK = 9;
    public static final int HAPTIC_SET_BUFFERING_POSITION = 1;
    public static final int HAPTIC_STOP_PLAYBACK = 4;
    public static final int PAUSE_AV_FOR_HAPTIC_BUFFERING = 7;
    private static final String a = "HapticPlaybackThread";
    private static final int b = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: b0427042704270427ЧЧ, reason: contains not printable characters */
    public static int f47b0427042704270427 = 1;

    /* JADX INFO: renamed from: b0427Ч0427Ч0427Ч, reason: contains not printable characters */
    public static int f48b042704270427 = 0;

    /* JADX INFO: renamed from: bЧ042704270427ЧЧ, reason: contains not printable characters */
    public static int f49b042704270427 = 86;

    /* JADX INFO: renamed from: bЧЧЧЧ0427Ч, reason: contains not printable characters */
    public static int f50b0427 = 2;
    private static final String c = "playback_timecode";
    private static final String d = "playback_uptime";
    private RuntimeInfo A;
    private boolean B;
    private FileManager C;
    private final Runnable F;
    private final Runnable G;

    /* JADX INFO: renamed from: b044404440444фф0444, reason: contains not printable characters */
    public volatile boolean f51b0444044404440444;

    /* JADX INFO: renamed from: bф04440444фф0444, reason: contains not printable characters */
    public Context f52b044404440444;

    /* JADX INFO: renamed from: bффф0444ф0444, reason: contains not printable characters */
    public volatile boolean f53b04440444;
    private int e;
    private final String f;
    private Handler g;
    private final Handler h;
    private HapticDownloadThread i;
    private Looper j;
    private IHapticFileReader k;
    private EndpointWarp l;
    private final Profiler m;
    private Object n;
    private Object o;
    private int p;
    private int q;
    private int r;
    private long s;
    private int t;
    private int u;
    private int v;
    private long w;
    private boolean x;
    private boolean y;
    private ArrayList z;

    public HapticPlaybackThread(Context context, String str, Handler handler, boolean z, RuntimeInfo runtimeInfo) {
        super(a);
        this.e = 0;
        this.m = new Profiler();
        this.n = new Object();
        this.o = new Object();
        int i = f49b042704270427;
        switch ((i * (f47b0427042704270427 + i)) % f50b0427) {
            case 0:
                break;
            default:
                f49b042704270427 = m55b04270427();
                f47b0427042704270427 = m55b04270427();
                break;
        }
        this.x = false;
        this.y = false;
        this.f51b0444044404440444 = false;
        this.f53b04440444 = false;
        this.B = false;
        this.F = new rrcrrr(this);
        this.G = new crcrrr(this);
        this.f = str;
        this.h = handler;
        this.f52b044404440444 = context;
        this.B = z;
        this.C = new FileManager(context);
        this.A = runtimeInfo;
        this.z = new ArrayList();
    }

    private void a() {
        while (this.i.isAlive()) {
            if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % f50b0427 != m71b04270427()) {
                f49b042704270427 = m55b04270427();
                f47b0427042704270427 = 65;
            }
            this.i.terminate();
            this.i.interrupt();
            Thread.currentThread();
            while (true) {
                char c2 = 0;
                switch (c2) {
                    case 0:
                        continue;
                        break;
                    case 1:
                        break;
                    default:
                        while (true) {
                            switch (1) {
                                case 0:
                                    break;
                                case 1:
                                    continue;
                                    break;
                                default:
                                    break;
                            }
                        }
                        break;
                }
            }
            Thread.yield();
        }
    }

    private void a(int i, long j) throws Exception {
        if (!this.y) {
            try {
                if (this.k == null) {
                    return;
                }
                if (this.l == null) {
                    byte[] encryptedHapticHeader = this.k.getEncryptedHapticHeader();
                    if (encryptedHapticHeader == null) {
                        Log.e(a, "corrupted hapt file or unsupported format");
                        return;
                    }
                    this.l = new EndpointWarp(this.f52b044404440444, encryptedHapticHeader, encryptedHapticHeader.length);
                    if (this.l == null) {
                        Log.d(a, "Error creating endpointwarp");
                        return;
                    }
                }
                this.l.start();
            } catch (Error e) {
                Log.e(a, e.getMessage());
                return;
            }
        }
        this.f53b04440444 = false;
        this.y = true;
        this.v = 0;
        synchronized (this.n) {
            try {
                this.u = i;
                this.t = this.u;
                if (this.w != 0) {
                    this.w = SystemClock.uptimeMillis();
                }
            } catch (Throwable th) {
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
                throw th;
            }
        }
        this.s = j;
        h();
    }

    private void a(Message message) {
        this.x = true;
        Message messageObtainMessage = this.h.obtainMessage(8);
        messageObtainMessage.setData(message.getData());
        this.h.sendMessage(messageObtainMessage);
        if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % f50b0427 != f48b042704270427) {
            f49b042704270427 = 41;
            f48b042704270427 = m55b04270427();
        }
    }

    private void b() throws Exception {
        if (this.i != null) {
            a();
            this.i = null;
        }
        synchronized (this.o) {
            this.g.removeCallbacksAndMessages(null);
        }
        if (this.j != null) {
            this.j.quit();
            this.j = null;
        }
        if (this.k != null) {
            this.k.close();
            this.k = null;
        }
        if (this.l != null) {
            this.l.stop();
            this.l.dispose();
            while (true) {
                char c2 = 0;
                switch (c2) {
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
            this.l = null;
        }
        this.C.deleteHapticStorage();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x001e. Please report as an issue. */
    /* JADX INFO: renamed from: b04110411041104110411Б, reason: contains not printable characters */
    public static /* synthetic */ void m39b04110411041104110411(HapticPlaybackThread hapticPlaybackThread, int i, long j) throws Exception {
        if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % f50b0427 != f48b042704270427) {
            f49b042704270427 = m55b04270427();
            f48b042704270427 = 45;
        }
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        char c2 = 0;
                        switch (c2) {
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
        hapticPlaybackThread.a(i, j);
    }

    /* JADX INFO: renamed from: b0411041104110411Б0411, reason: contains not printable characters */
    public static /* synthetic */ EndpointWarp m40b04110411041104110411(HapticPlaybackThread hapticPlaybackThread) {
        char c2 = 0;
        int i = 4;
        while (true) {
            try {
                i /= 0;
            } catch (Exception e) {
                f49b042704270427 = m55b04270427();
                while (true) {
                    try {
                        int[] iArr = new int[-1];
                    } catch (Exception e2) {
                        f49b042704270427 = m55b04270427();
                        EndpointWarp endpointWarp = hapticPlaybackThread.l;
                        while (true) {
                            switch (c2) {
                                case 0:
                                    break;
                                case 1:
                                    break;
                                default:
                                    while (true) {
                                        switch (c2) {
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
                        return endpointWarp;
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: b041104110411ББ0411, reason: contains not printable characters */
    public static /* synthetic */ void m41b0411041104110411(HapticPlaybackThread hapticPlaybackThread) throws Exception {
        int i = f49b042704270427;
        switch ((i * (f47b0427042704270427 + i)) % f50b0427) {
            case 0:
                break;
            default:
                f49b042704270427 = 25;
                f48b042704270427 = 36;
                break;
        }
        try {
            hapticPlaybackThread.g();
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX INFO: renamed from: b04110411Б04110411Б, reason: contains not printable characters */
    public static /* synthetic */ int m42b0411041104110411(HapticPlaybackThread hapticPlaybackThread, int i) {
        while (true) {
            switch (1) {
                case 0:
                    continue;
                case 1:
                    break;
                default:
                    while (true) {
                        char c2 = 0;
                        switch (c2) {
                            case 0:
                                break;
                            case 1:
                                continue;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
        int i2 = f49b042704270427;
        switch ((i2 * (f47b0427042704270427 + i2)) % f50b0427) {
            case 0:
                break;
            default:
                f49b042704270427 = 74;
                f48b042704270427 = m55b04270427();
                break;
        }
        hapticPlaybackThread.p = i;
        return i;
    }

    /* JADX INFO: renamed from: b04110411Б0411Б0411, reason: contains not printable characters */
    public static /* synthetic */ boolean m43b0411041104110411(HapticPlaybackThread hapticPlaybackThread) throws Exception {
        try {
            boolean z = hapticPlaybackThread.y;
            if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % f50b0427 != f48b042704270427) {
                f49b042704270427 = m55b04270427();
                f48b042704270427 = m55b04270427();
            }
            return z;
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX INFO: renamed from: b04110411ББ04110411, reason: contains not printable characters */
    public static /* synthetic */ int m44b0411041104110411(HapticPlaybackThread hapticPlaybackThread) {
        while (true) {
            char c2 = 0;
            switch (c2) {
                case 0:
                    break;
                case 1:
                    continue;
                default:
                    while (true) {
                        switch (1) {
                            case 0:
                                continue;
                            case 1:
                                break;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
        if (((m55b04270427() + f47b0427042704270427) * m55b04270427()) % f50b0427 != f48b042704270427) {
            f49b042704270427 = m55b04270427();
            f48b042704270427 = m55b04270427();
        }
        return hapticPlaybackThread.u;
    }

    /* JADX INFO: renamed from: b04110411БББ0411, reason: contains not printable characters */
    public static /* synthetic */ FileManager m45b041104110411(HapticPlaybackThread hapticPlaybackThread) {
        while (true) {
            try {
                int[] iArr = new int[-1];
            } catch (Exception e) {
                f49b042704270427 = 90;
                return hapticPlaybackThread.C;
            }
        }
    }

    /* JADX INFO: renamed from: b0411Б041104110411Б, reason: contains not printable characters */
    public static /* synthetic */ int m46b0411041104110411(HapticPlaybackThread hapticPlaybackThread, int i) {
        if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % f50b0427 != f48b042704270427) {
            f49b042704270427 = m55b04270427();
            f48b042704270427 = 87;
        }
        hapticPlaybackThread.r = i;
        return i;
    }

    /* JADX INFO: renamed from: b0411Б04110411Б0411, reason: contains not printable characters */
    public static /* synthetic */ ArrayList m47b0411041104110411(HapticPlaybackThread hapticPlaybackThread) throws Exception {
        if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % f50b0427 != f48b042704270427) {
            f49b042704270427 = m55b04270427();
            f48b042704270427 = 92;
        }
        try {
            return hapticPlaybackThread.z;
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX INFO: renamed from: b0411Б0411Б04110411, reason: contains not printable characters */
    public static /* synthetic */ Runnable m48b0411041104110411(HapticPlaybackThread hapticPlaybackThread) throws Exception {
        if (((m55b04270427() + f47b0427042704270427) * m55b04270427()) % f50b0427 != f48b042704270427) {
            f49b042704270427 = m55b04270427();
            f48b042704270427 = m55b04270427();
        }
        try {
            return hapticPlaybackThread.G;
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX INFO: renamed from: b0411Б0411ББ0411, reason: contains not printable characters */
    public static /* synthetic */ int m49b041104110411(HapticPlaybackThread hapticPlaybackThread, int i) {
        char c2 = 0;
        if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % f50b0427 != f48b042704270427) {
            f49b042704270427 = m55b04270427();
            f48b042704270427 = 23;
        }
        while (true) {
            switch (c2) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (c2) {
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
        hapticPlaybackThread.e = i;
        return i;
    }

    /* JADX INFO: renamed from: b0411ББ04110411Б, reason: contains not printable characters */
    public static /* synthetic */ Runnable m50b041104110411(HapticPlaybackThread hapticPlaybackThread) {
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
        Runnable runnable = hapticPlaybackThread.F;
        if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % f50b0427 != m71b04270427()) {
            f49b042704270427 = m55b04270427();
            f48b042704270427 = 18;
        }
        return runnable;
    }

    /* JADX INFO: renamed from: b0411ББ0411Б0411, reason: contains not printable characters */
    public static /* synthetic */ void m51b041104110411(HapticPlaybackThread hapticPlaybackThread) {
        String str = null;
        hapticPlaybackThread.e();
        while (true) {
            try {
                str.length();
            } catch (Exception e) {
                f49b042704270427 = m55b04270427();
                return;
            }
        }
    }

    /* JADX INFO: renamed from: b0411БББ04110411, reason: contains not printable characters */
    public static /* synthetic */ int m52b041104110411(HapticPlaybackThread hapticPlaybackThread, int i) {
        int i2 = hapticPlaybackThread.u + i;
        if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % f50b0427 != f48b042704270427) {
            f49b042704270427 = 55;
            f48b042704270427 = 1;
        }
        hapticPlaybackThread.u = i2;
        return i2;
    }

    /* JADX INFO: renamed from: b0411ББББ0411, reason: contains not printable characters */
    public static /* synthetic */ IHapticFileReader m53b04110411(HapticPlaybackThread hapticPlaybackThread, IHapticFileReader iHapticFileReader) {
        char c2 = 0;
        while (true) {
            switch (c2) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (c2) {
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
        if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % f50b0427 != f48b042704270427) {
            f49b042704270427 = m55b04270427();
            f48b042704270427 = m55b04270427();
        }
        hapticPlaybackThread.k = iHapticFileReader;
        return iHapticFileReader;
    }

    /* JADX INFO: renamed from: b04270427Ч04270427Ч, reason: contains not printable characters */
    public static int m54b0427042704270427() {
        return 2;
    }

    /* JADX INFO: renamed from: b0427ЧЧЧ0427Ч, reason: contains not printable characters */
    public static int m55b04270427() {
        return 41;
    }

    /* JADX INFO: renamed from: bБ0411041104110411Б, reason: contains not printable characters */
    public static /* synthetic */ void m56b0411041104110411(HapticPlaybackThread hapticPlaybackThread) {
        hapticPlaybackThread.d();
        int i = f49b042704270427;
        switch ((i * (f47b0427042704270427 + i)) % f50b0427) {
            case 0:
                break;
            default:
                f49b042704270427 = m55b04270427();
                f48b042704270427 = m55b04270427();
                break;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0017. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x001b. Please report as an issue. */
    /* JADX INFO: renamed from: bБ041104110411Б0411, reason: contains not printable characters */
    public static /* synthetic */ RuntimeInfo m57b0411041104110411(HapticPlaybackThread hapticPlaybackThread) {
        int i = f49b042704270427;
        switch ((i * (f47b0427042704270427 + i)) % f50b0427) {
            case 0:
                break;
            default:
                f49b042704270427 = m55b04270427();
                f48b042704270427 = 64;
                break;
        }
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        char c2 = 0;
                        switch (c2) {
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
        return hapticPlaybackThread.A;
    }

    /* JADX INFO: renamed from: bБ04110411ББ0411, reason: contains not printable characters */
    public static /* synthetic */ void m58b041104110411(HapticPlaybackThread hapticPlaybackThread) {
        int iM55b04270427 = m55b04270427();
        switch ((iM55b04270427 * (f47b0427042704270427 + iM55b04270427)) % f50b0427) {
            case 0:
                break;
            default:
                f49b042704270427 = m55b04270427();
                f48b042704270427 = m55b04270427();
                break;
        }
        hapticPlaybackThread.f();
    }

    /* JADX INFO: renamed from: bБ0411Б04110411Б, reason: contains not printable characters */
    public static /* synthetic */ Handler m59b041104110411(HapticPlaybackThread hapticPlaybackThread) throws Exception {
        try {
            Handler handler = hapticPlaybackThread.g;
            int i = f49b042704270427;
            switch ((i * (f47b0427042704270427 + i)) % f50b0427) {
                default:
                    f49b042704270427 = 9;
                    f48b042704270427 = 62;
                case 0:
                    return handler;
            }
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX INFO: renamed from: bБ0411Б0411Б0411, reason: contains not printable characters */
    public static /* synthetic */ void m60b041104110411(HapticPlaybackThread hapticPlaybackThread) {
        hapticPlaybackThread.h();
        while (true) {
            try {
                int[] iArr = new int[-1];
            } catch (Exception e) {
                f49b042704270427 = m55b04270427();
                return;
            }
        }
    }

    /* JADX INFO: renamed from: bБ0411ББ04110411, reason: contains not printable characters */
    public static /* synthetic */ int m61b041104110411(HapticPlaybackThread hapticPlaybackThread, int i) throws Exception {
        while (true) {
            try {
                int[] iArr = new int[-1];
            } catch (Exception e) {
                f49b042704270427 = m55b04270427();
                while (true) {
                    try {
                        int[] iArr2 = new int[-1];
                    } catch (Exception e2) {
                        f49b042704270427 = m55b04270427();
                        try {
                            hapticPlaybackThread.t = i;
                            return i;
                        } catch (Exception e3) {
                            throw e3;
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: bББ041104110411Б, reason: contains not printable characters */
    public static /* synthetic */ int m63b041104110411(HapticPlaybackThread hapticPlaybackThread, int i) throws Exception {
        if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % m54b0427042704270427() != f48b042704270427) {
            f49b042704270427 = 8;
            f48b042704270427 = m55b04270427();
        }
        try {
            hapticPlaybackThread.q = i;
            return i;
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX INFO: renamed from: bББ0411Б04110411, reason: contains not printable characters */
    public static /* synthetic */ long m65b041104110411(HapticPlaybackThread hapticPlaybackThread, long j) {
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
        if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % f50b0427 != f48b042704270427) {
            f49b042704270427 = m55b04270427();
            f48b042704270427 = 90;
        }
        hapticPlaybackThread.w = j;
        return j;
    }

    /* JADX INFO: renamed from: bБББ0411Б0411, reason: contains not printable characters */
    public static /* synthetic */ void m67b04110411(HapticPlaybackThread hapticPlaybackThread, Message message) {
        while (true) {
            switch (1) {
                case 0:
                    continue;
                case 1:
                    break;
                default:
                    while (true) {
                        char c2 = 0;
                        switch (c2) {
                            case 0:
                                break;
                            case 1:
                                continue;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
        int i = f49b042704270427;
        switch ((i * (m70b042704270427() + i)) % f50b0427) {
            case 0:
                break;
            default:
                f49b042704270427 = 56;
                f48b042704270427 = 92;
                break;
        }
        hapticPlaybackThread.a(message);
    }

    /* JADX INFO: renamed from: bББББ04110411, reason: contains not printable characters */
    public static /* synthetic */ Object m68b04110411(HapticPlaybackThread hapticPlaybackThread) throws Exception {
        if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % f50b0427 != f48b042704270427) {
            f49b042704270427 = 18;
            f48b042704270427 = m55b04270427();
        }
        try {
            return hapticPlaybackThread.n;
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX INFO: renamed from: bБББББ0411, reason: contains not printable characters */
    public static /* synthetic */ IHapticFileReader m69b0411(HapticPlaybackThread hapticPlaybackThread) {
        int i = f49b042704270427;
        switch ((i * (f47b0427042704270427 + i)) % f50b0427) {
            case 0:
                break;
            default:
                f49b042704270427 = m55b04270427();
                f48b042704270427 = 19;
                break;
        }
        IHapticFileReader iHapticFileReader = hapticPlaybackThread.k;
        while (true) {
            char c2 = 0;
            switch (c2) {
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
        return iHapticFileReader;
    }

    /* JADX INFO: renamed from: bЧ0427Ч04270427Ч, reason: contains not printable characters */
    public static int m70b042704270427() {
        return 1;
    }

    /* JADX INFO: renamed from: bЧЧ0427Ч0427Ч, reason: contains not printable characters */
    public static int m71b04270427() {
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void c() {
        char c2 = 0;
        synchronized (this) {
            while (true) {
                switch (c2) {
                    case 0:
                        break;
                    case 1:
                        break;
                    default:
                        while (true) {
                            switch (c2) {
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
            notifyAll();
        }
    }

    private void d() {
        if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % f50b0427 != f48b042704270427) {
            f49b042704270427 = 74;
            f48b042704270427 = 21;
        }
        if (this.x) {
            return;
        }
        int i = this.r;
        this.r = i + 1;
        if (i == 5) {
            this.h.sendMessage(this.h.obtainMessage(7, this.p, 0));
            this.g.postDelayed(this.F, D);
        } else if (this.k == null || !this.k.bufferAtPlaybackPosition(this.p)) {
            this.g.postDelayed(this.F, D);
        } else if (this.q != Integer.MIN_VALUE) {
            this.h.sendMessage(this.h.obtainMessage(6, this.p, this.q));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void e() {
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        String str = null;
        try {
            b();
            while (true) {
                try {
                    str.length();
                } catch (Exception e) {
                    f49b042704270427 = m55b04270427();
                    while (true) {
                        try {
                            str.length();
                        } catch (Exception e2) {
                            f49b042704270427 = m55b04270427();
                            while (true) {
                                try {
                                    str.length();
                                } catch (Exception e3) {
                                    f49b042704270427 = 38;
                                    Object[] objArr4 = objArr2 == true ? 1 : 0;
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e4) {
            Log.e(a, "quit() : " + e4.getMessage());
            while (true) {
                switch (objArr == true ? 1 : 0) {
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
        } finally {
            this.f51b0444044404440444 = false;
            c();
        }
    }

    private void f() {
        char c2 = 0;
        this.y = false;
        if (this.l != null) {
            this.l.stop();
        }
        while (true) {
            switch (c2) {
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
        this.g.removeCallbacks(this.F);
        removePlaybackCallbacks();
        synchronized (this.n) {
            this.u = 0;
            this.t = 0;
            this.w = 0L;
        }
        this.v = 0;
        this.s = 0L;
        this.f53b04440444 = true;
    }

    private void g() {
        this.y = false;
        removePlaybackCallbacks();
        int i = f49b042704270427;
        switch ((i * (m70b042704270427() + i)) % f50b0427) {
            case 0:
                break;
            default:
                f49b042704270427 = m55b04270427();
                f48b042704270427 = m55b04270427();
                break;
        }
    }

    private void h() {
        int i;
        int i2;
        char c2 = 0;
        if (this.y) {
            synchronized (this.n) {
                i = this.u;
                i2 = this.t;
            }
            try {
                byte[] bufferForPlaybackPosition = this.k.getBufferForPlaybackPosition(i);
                int hapticBlockIndex = this.k.getHapticBlockIndex(i);
                long blockOffset = this.k.getBlockOffset(i);
                if (bufferForPlaybackPosition == null) {
                    synchronized (this.n) {
                        this.u = 0;
                        this.t = 0;
                    }
                    this.v = 0;
                    this.s = 0L;
                    this.y = false;
                    return;
                }
                long j = ((long) this.v) + this.s;
                ccrcrr ccrcrrVar = new ccrcrr(this, i, i2, bufferForPlaybackPosition, hapticBlockIndex, blockOffset);
                Object obj = this.o;
                while (true) {
                    switch (1) {
                        case 0:
                            break;
                        case 1:
                            break;
                        default:
                            while (true) {
                                switch (c2) {
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
                synchronized (obj) {
                    this.z.add(ccrcrrVar);
                }
                this.g.postAtTime(ccrcrrVar, ((long) this.e) + j);
                this.v += this.e;
                this.m.startTimingII();
            } catch (NotEnoughHapticBytesAvailableException e) {
                this.y = false;
                this.h.sendMessage(this.h.obtainMessage(7, i, 0));
            }
        }
    }

    public Handler getHandler() throws Exception {
        try {
            Handler handler = this.g;
            if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % f50b0427 != f48b042704270427) {
                f49b042704270427 = m55b04270427();
                f48b042704270427 = 58;
            }
            return handler;
        } catch (Exception e) {
            throw e;
        }
    }

    public boolean isStarted() {
        boolean z = this.f51b0444044404440444;
        int i = f49b042704270427;
        switch ((i * (f47b0427042704270427 + i)) % f50b0427) {
            default:
                f49b042704270427 = 69;
                f48b042704270427 = m55b04270427();
            case 0:
                return z;
        }
    }

    public boolean isStopped() {
        char c2 = 0;
        boolean z = this.f53b04440444;
        while (true) {
            switch (c2) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (c2) {
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
        int i = f49b042704270427;
        switch ((i * (m70b042704270427() + i)) % f50b0427) {
            default:
                f49b042704270427 = 11;
                f48b042704270427 = m55b04270427();
            case 0:
                return z;
        }
    }

    public void pauseHapticPlayback() {
        if (((f49b042704270427 + f47b0427042704270427) * f49b042704270427) % m54b0427042704270427() != m71b04270427()) {
            f49b042704270427 = 98;
            f48b042704270427 = 68;
        }
        this.g.sendEmptyMessage(5);
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    return;
                default:
                    while (true) {
                        switch (1) {
                            case 0:
                                break;
                            case 1:
                                return;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
    }

    public void playHapticForPlaybackPosition(int i, long j) {
        int i2 = 0;
        String str = null;
        removePlaybackCallbacks();
        this.g.removeMessages(2);
        while (true) {
            switch (i2) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (i2) {
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
        Bundle bundle = new Bundle();
        bundle.putInt(c, i);
        bundle.putLong(d, j);
        Message messageObtainMessage = this.g.obtainMessage(2);
        while (true) {
            try {
                str.length();
            } catch (Exception e) {
                f49b042704270427 = 75;
                while (true) {
                    try {
                        i2 /= 0;
                    } catch (Exception e2) {
                        f49b042704270427 = m55b04270427();
                        while (true) {
                            try {
                                str.length();
                            } catch (Exception e3) {
                                f49b042704270427 = 38;
                                messageObtainMessage.setData(bundle);
                                this.g.sendMessage(messageObtainMessage);
                                return;
                            }
                        }
                    }
                }
            }
        }
    }

    public void prepareHapticPlayback(int i, int i2) {
        this.g.removeMessages(1);
        this.g.sendMessage(this.g.obtainMessage(1, i, i2));
    }

    public void quitHapticPlayback() throws Exception {
        try {
            if (this.g.sendEmptyMessage(9)) {
                return;
            }
            if (((f49b042704270427 + m70b042704270427()) * f49b042704270427) % f50b0427 != f48b042704270427) {
                f49b042704270427 = m55b04270427();
                f48b042704270427 = 16;
            }
            this.f51b0444044404440444 = false;
            try {
                c();
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public void removePlaybackCallbacks() {
        synchronized (this.o) {
            Iterator it = this.z.iterator();
            while (it.hasNext()) {
                this.g.removeCallbacks((ccrcrr) it.next());
            }
            this.z.clear();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str = null;
        Process.setThreadPriority(-19);
        Looper.prepare();
        this.j = Looper.myLooper();
        this.g = new rccrrr(this, null);
        while (true) {
            try {
                str.length();
            } catch (Exception e) {
                f49b042704270427 = m55b04270427();
                this.i = new HapticDownloadThread(this.f, this.g, this.B, this.C);
                this.i.start();
                this.f51b0444044404440444 = true;
                c();
                Looper.loop();
                return;
            }
        }
    }

    public void stopHapticPlayback() throws Exception {
        try {
            this.g.sendEmptyMessage(4);
            int i = f49b042704270427;
            switch ((i * (f47b0427042704270427 + i)) % f50b0427) {
                case 0:
                    return;
                default:
                    f49b042704270427 = 35;
                    f48b042704270427 = 24;
                    return;
            }
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0024. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0027. Please report as an issue. */
    public void syncUpdate(int i, long j) {
        synchronized (this.n) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            int i2 = (int) (((long) i) + (jUptimeMillis - j));
            int i3 = i2 - (((int) (jUptimeMillis - this.w)) + this.u);
            if (50 < Math.abs(i3)) {
                this.u = i3 + this.u;
                while (true) {
                    char c2 = 0;
                    switch (c2) {
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
                this.t = this.u;
                this.g.sendMessage(this.g.obtainMessage(1, i2, Integer.MIN_VALUE));
            }
        }
    }
}

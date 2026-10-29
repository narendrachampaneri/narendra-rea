package com.immersion.hapticmediasdk.controllers;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.immersion.hapticmediasdk.HapticContentSDK;
import com.immersion.hapticmediasdk.MediaTaskManager;
import com.immersion.hapticmediasdk.models.HttpUnsuccessfulException;
import com.immersion.hapticmediasdk.utils.Log;
import com.immersion.hapticmediasdk.utils.Profiler;
import java.util.concurrent.atomic.AtomicInteger;
import rrrrrr.crrrrr;
import rrrrrr.rcrrrr;

/* JADX INFO: loaded from: classes2.dex */
public class MediaController {
    private static final String a = "MediaController";
    private static final int b = 1000;

    /* JADX INFO: renamed from: b04460446ццц0446, reason: contains not printable characters */
    public static int f58b044604460446 = 35;

    /* JADX INFO: renamed from: b0446ц0446цц0446, reason: contains not printable characters */
    public static int f59b044604460446 = 1;

    /* JADX INFO: renamed from: bц04460446цц0446, reason: contains not printable characters */
    public static int f60b044604460446 = 2;

    /* JADX INFO: renamed from: bцц0446цц0446, reason: contains not printable characters */
    public static int f61b04460446 = 0;
    private static final int c = 200;
    private AtomicInteger d;
    private AtomicInteger e;
    private Handler f;
    private HapticPlaybackThread g;
    private Profiler h;
    private MediaTaskManager i;
    private Runnable j;

    public MediaController(Looper looper, MediaTaskManager mediaTaskManager) throws Exception {
        try {
            this.d = new AtomicInteger();
            this.e = new AtomicInteger();
            if (((f58b044604460446 + f59b044604460446) * f58b044604460446) % f60b044604460446 != f61b04460446) {
                f58b044604460446 = m77b0446044604460446();
                f61b04460446 = m77b0446044604460446();
            }
            try {
                this.h = new Profiler();
                this.j = new rcrrrr(this);
                this.i = mediaTaskManager;
                this.f = new crrrrr(this, looper);
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    private int a() {
        this.g.pauseHapticPlayback();
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        this.d.set(i);
        this.i.transitToState(HapticContentSDK.SDKStatus.PAUSED_DUE_TO_BUFFERING);
    }

    private void a(int i, long j) {
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
        HapticPlaybackThread hapticPlaybackThread = this.g;
        if (((f58b044604460446 + f59b044604460446) * f58b044604460446) % f60b044604460446 != f61b04460446) {
            f58b044604460446 = 10;
            f61b04460446 = 4;
        }
        hapticPlaybackThread.playHapticForPlaybackPosition(i, j);
    }

    private void a(Message message) {
        char c2 = 0;
        Exception exc = (Exception) message.getData().getSerializable(HapticPlaybackThread.HAPTIC_DOWNLOAD_EXCEPTION_KEY);
        if (exc instanceof HttpUnsuccessfulException) {
            HttpUnsuccessfulException httpUnsuccessfulException = (HttpUnsuccessfulException) exc;
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
            Log.e(a, "caught HttpUnsuccessfulExcetion http status code = " + httpUnsuccessfulException.getHttpStatusCode());
        }
        if (((f58b044604460446 + f59b044604460446) * f58b044604460446) % f60b044604460446 != f61b04460446) {
            f58b044604460446 = m77b0446044604460446();
            f61b04460446 = 98;
        }
        Log.e(a, "HapticDownloadError: " + exc.getMessage());
        this.i.transitToState(HapticContentSDK.SDKStatus.STOPPED_DUE_TO_ERROR);
    }

    private void a(boolean z) {
        char c2 = 0;
        boolean zIsStarted = this.g.isStarted();
        int i = 0;
        while (true) {
            if (z) {
                if (zIsStarted) {
                    return;
                }
            } else if (!zIsStarted) {
                return;
            }
            synchronized (this.g) {
                try {
                    this.g.wait(200L);
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
                } catch (InterruptedException e) {
                }
            }
            zIsStarted = this.g.isStarted();
            i++;
            if (!z && i >= 5) {
                return;
            }
        }
    }

    /* JADX INFO: renamed from: b043B043Bлллл, reason: contains not printable characters */
    public static /* synthetic */ void m74b043B043B(MediaController mediaController, int i, long j) throws Exception {
        int i2 = f58b044604460446;
        switch ((i2 * (f59b044604460446 + i2)) % f60b044604460446) {
            case 0:
                break;
            default:
                f58b044604460446 = 79;
                f61b04460446 = 74;
                break;
        }
        try {
            mediaController.a(i, j);
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX INFO: renamed from: b043Bл043Bллл, reason: contains not printable characters */
    public static /* synthetic */ void m75b043B043B(MediaController mediaController, Message message) {
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
        if (((f58b044604460446 + f59b044604460446) * f58b044604460446) % f60b044604460446 != m83b044604460446()) {
            f58b044604460446 = 31;
            f61b04460446 = 2;
        }
        mediaController.a(message);
    }

    /* JADX INFO: renamed from: b043Bллллл, reason: contains not printable characters */
    public static /* synthetic */ AtomicInteger m76b043B(MediaController mediaController) {
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
        int i = f58b044604460446;
        switch ((i * (f59b044604460446 + i)) % f60b044604460446) {
            case 0:
                break;
            default:
                f58b044604460446 = 31;
                f61b04460446 = 73;
                break;
        }
        return mediaController.e;
    }

    /* JADX INFO: renamed from: b044604460446цц0446, reason: contains not printable characters */
    public static int m77b0446044604460446() {
        return 5;
    }

    /* JADX INFO: renamed from: b04460446ц0446ц0446, reason: contains not printable characters */
    public static int m78b0446044604460446() {
        return 2;
    }

    /* JADX INFO: renamed from: bБ04110411041104110411, reason: contains not printable characters */
    public static /* synthetic */ AtomicInteger m79b04110411041104110411(MediaController mediaController) throws Exception {
        try {
            AtomicInteger atomicInteger = mediaController.d;
            if (((f58b044604460446 + f59b044604460446) * f58b044604460446) % f60b044604460446 != m83b044604460446()) {
                f58b044604460446 = 20;
                f61b04460446 = 78;
            }
            return atomicInteger;
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX INFO: renamed from: bл043B043Bллл, reason: contains not printable characters */
    public static /* synthetic */ HapticPlaybackThread m80b043B043B(MediaController mediaController) throws Exception {
        int i = f58b044604460446;
        switch ((i * (f59b044604460446 + i)) % f60b044604460446) {
            case 0:
                break;
            default:
                f58b044604460446 = 93;
                f61b04460446 = m77b0446044604460446();
                break;
        }
        try {
            return mediaController.g;
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX INFO: renamed from: bл043Bлллл, reason: contains not printable characters */
    public static /* synthetic */ MediaTaskManager m81b043B(MediaController mediaController) {
        MediaTaskManager mediaTaskManager = mediaController.i;
        if (((f58b044604460446 + f59b044604460446) * f58b044604460446) % f60b044604460446 != f61b04460446) {
            f58b044604460446 = 52;
            f61b04460446 = 73;
        }
        return mediaTaskManager;
    }

    /* JADX INFO: renamed from: bц0446ц0446ц0446, reason: contains not printable characters */
    public static int m83b044604460446() {
        return 0;
    }

    public Handler getControlHandler() {
        if (((f58b044604460446 + f59b044604460446) * f58b044604460446) % f60b044604460446 != f61b04460446) {
            f58b044604460446 = 97;
            f61b04460446 = 45;
        }
        return this.f;
    }

    public int getCurrentPosition() {
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
        if (((f58b044604460446 + f59b044604460446) * f58b044604460446) % f60b044604460446 != f61b04460446) {
            f58b044604460446 = 51;
            f61b04460446 = 63;
        }
        return (int) this.i.getMediaTimestamp();
    }

    public long getReferenceTimeForCurrentPosition() throws Exception {
        int i = f58b044604460446;
        switch ((i * (f59b044604460446 + i)) % f60b044604460446) {
            case 0:
                break;
            default:
                f58b044604460446 = m77b0446044604460446();
                f61b04460446 = 38;
                break;
        }
        try {
            return this.i.getMediaReferenceTime();
        } catch (Exception e) {
            throw e;
        }
    }

    public void initHapticPlayback(HapticPlaybackThread hapticPlaybackThread) {
        try {
            this.g = hapticPlaybackThread;
            this.g.start();
            if (((f58b044604460446 + f59b044604460446) * f58b044604460446) % f60b044604460446 != f61b04460446) {
                f58b044604460446 = m77b0446044604460446();
                f61b04460446 = 24;
            }
            try {
                a(true);
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public boolean isPlaying() throws Exception {
        try {
            return this.i.getSDKStatus() == HapticContentSDK.SDKStatus.PLAYING;
        } catch (Exception e) {
            throw e;
        }
    }

    public void onDestroy(Handler handler) {
        char c2 = 0;
        if (this.g != null) {
            this.g.quitHapticPlayback();
            a(false);
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
            this.g = null;
        }
        MediaTaskManager mediaTaskManager = this.i;
        if (((f58b044604460446 + f59b044604460446) * f58b044604460446) % f60b044604460446 != f61b04460446) {
            f58b044604460446 = m77b0446044604460446();
            f61b04460446 = 29;
        }
        handler.removeCallbacks(mediaTaskManager);
    }

    public int onPause() {
        int iA = a();
        int i = f58b044604460446;
        switch ((i * (f59b044604460446 + i)) % f60b044604460446) {
            default:
                f58b044604460446 = 39;
                f61b04460446 = 73;
            case 0:
                return iA;
        }
    }

    public int onPrepared() {
        return prepareHapticPlayback();
    }

    public void playbackStarted() {
        if (this.g == null) {
            Log.e(a, "Can't start periodic sync since haptic playback thread stopped.");
            return;
        }
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
        HapticPlaybackThread hapticPlaybackThread = this.g;
        int i = f58b044604460446;
        switch ((i * (f59b044604460446 + i)) % f60b044604460446) {
            case 0:
                break;
            default:
                f58b044604460446 = m77b0446044604460446();
                f61b04460446 = m77b0446044604460446();
                break;
        }
        hapticPlaybackThread.getHandler().postDelayed(this.j, 200L);
    }

    public int prepareHapticPlayback() throws Exception {
        try {
            this.h.startTiming();
            try {
                HapticPlaybackThread hapticPlaybackThread = this.g;
                int i = this.d.get();
                int i2 = f58b044604460446;
                switch ((i2 * (f59b044604460446 + i2)) % f60b044604460446) {
                    case 0:
                        break;
                    default:
                        f58b044604460446 = m77b0446044604460446();
                        f61b04460446 = 98;
                        break;
                }
                hapticPlaybackThread.prepareHapticPlayback(i, this.e.incrementAndGet());
                return 0;
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public void seekTo(int i) {
        AtomicInteger atomicInteger = this.d;
        if (i <= 0) {
            i = 0;
        }
        atomicInteger.set(i);
        if (this.g != null) {
            Handler handler = this.g.getHandler();
            int i2 = f58b044604460446;
            switch ((i2 * (f59b044604460446 + i2)) % f60b044604460446) {
                case 0:
                    break;
                default:
                    f58b044604460446 = 66;
                    f61b04460446 = 5;
                    break;
            }
            handler.removeCallbacks(this.j);
            this.g.removePlaybackCallbacks();
        }
    }

    public void setRequestBufferPosition(int i) throws Exception {
        try {
            AtomicInteger atomicInteger = this.d;
            int iM77b0446044604460446 = m77b0446044604460446();
            switch ((iM77b0446044604460446 * (f59b044604460446 + iM77b0446044604460446)) % f60b044604460446) {
                case 0:
                    break;
                default:
                    f58b044604460446 = 8;
                    f61b04460446 = m77b0446044604460446();
                    break;
            }
            atomicInteger.set(i);
        } catch (Exception e) {
            throw e;
        }
    }

    public int stopHapticPlayback() {
        char c2 = 0;
        this.d.set(0);
        HapticPlaybackThread hapticPlaybackThread = this.g;
        while (true) {
            switch (1) {
                case 0:
                    continue;
                case 1:
                    break;
                default:
                    while (true) {
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
        hapticPlaybackThread.stopHapticPlayback();
        HapticPlaybackThread hapticPlaybackThread2 = this.g;
        if (((f58b044604460446 + f59b044604460446) * f58b044604460446) % f60b044604460446 != f61b04460446) {
            f58b044604460446 = 48;
            f61b04460446 = 63;
        }
        hapticPlaybackThread2.getHandler().removeCallbacks(this.j);
        return 0;
    }

    public void waitHapticStopped() {
        char c2 = 0;
        boolean zIsStopped = this.g.isStopped();
        for (int i = 0; !zIsStopped && i < 5; i++) {
            synchronized (this.g) {
                try {
                    try {
                        this.g.wait(200L);
                    } catch (Throwable th) {
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
                        throw th;
                    }
                } catch (InterruptedException e) {
                }
            }
            zIsStopped = this.g.isStopped();
        }
    }
}

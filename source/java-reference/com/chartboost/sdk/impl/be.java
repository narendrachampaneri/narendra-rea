package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.chartboost.sdk.Libraries.CBLogging;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class be extends SurfaceView implements bg.a {
    MediaPlayer.OnVideoSizeChangedListener a;
    MediaPlayer.OnPreparedListener b;
    SurfaceHolder.Callback c;
    private String d;
    private Uri e;
    private Map<String, String> f;
    private int g;
    private int h;
    private int i;
    private SurfaceHolder j;
    private MediaPlayer k;
    private int l;
    private int m;
    private int n;
    private int o;
    private MediaPlayer.OnCompletionListener p;
    private MediaPlayer.OnPreparedListener q;
    private int r;
    private MediaPlayer.OnErrorListener s;
    private int t;
    private MediaPlayer.OnCompletionListener u;
    private MediaPlayer.OnErrorListener v;
    private MediaPlayer.OnBufferingUpdateListener w;

    public be(Context context) {
        super(context);
        this.d = "VideoSurfaceView";
        this.h = 0;
        this.i = 0;
        this.j = null;
        this.k = null;
        this.a = new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.chartboost.sdk.impl.be.1
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mp, int width, int height) {
                be.this.l = mp.getVideoWidth();
                be.this.m = mp.getVideoHeight();
                if (be.this.l != 0 && be.this.m != 0) {
                    be.this.getHolder().setFixedSize(be.this.l, be.this.m);
                }
            }
        };
        this.b = new MediaPlayer.OnPreparedListener() { // from class: com.chartboost.sdk.impl.be.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mp) {
                be.this.h = 2;
                be.this.l = mp.getVideoWidth();
                be.this.m = mp.getVideoHeight();
                if (be.this.q != null) {
                    be.this.q.onPrepared(be.this.k);
                }
                int i = be.this.t;
                if (i != 0) {
                    be.this.a(i);
                }
                if (be.this.l == 0 || be.this.m == 0) {
                    if (be.this.i == 3) {
                        be.this.a();
                    }
                } else {
                    be.this.getHolder().setFixedSize(be.this.l, be.this.m);
                    if (be.this.n == be.this.l && be.this.o == be.this.m && be.this.i == 3) {
                        be.this.a();
                    }
                }
            }
        };
        this.u = new MediaPlayer.OnCompletionListener() { // from class: com.chartboost.sdk.impl.be.3
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mp) {
                be.this.i = 5;
                if (be.this.h != 5) {
                    be.this.h = 5;
                    if (be.this.p != null) {
                        be.this.p.onCompletion(be.this.k);
                    }
                }
            }
        };
        this.v = new MediaPlayer.OnErrorListener() { // from class: com.chartboost.sdk.impl.be.4
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mp, int framework_err, int impl_err) {
                CBLogging.a(be.this.d, "Error: " + framework_err + AppInfo.DELIM + impl_err);
                be.this.h = -1;
                be.this.i = -1;
                if (be.this.s == null || be.this.s.onError(be.this.k, framework_err, impl_err)) {
                }
                return true;
            }
        };
        this.w = new MediaPlayer.OnBufferingUpdateListener() { // from class: com.chartboost.sdk.impl.be.5
            @Override // android.media.MediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(MediaPlayer mp, int percent) {
                be.this.r = percent;
            }
        };
        this.c = new SurfaceHolder.Callback() { // from class: com.chartboost.sdk.impl.be.6
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder holder, int format, int w, int h) {
                be.this.n = w;
                be.this.o = h;
                boolean z = be.this.i == 3;
                boolean z2 = be.this.l == w && be.this.m == h;
                if (be.this.k != null && z && z2) {
                    if (be.this.t != 0) {
                        be.this.a(be.this.t);
                    }
                    be.this.a();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder holder) {
                be.this.j = holder;
                be.this.g();
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder holder) {
                be.this.j = null;
                be.this.a(true);
            }
        };
        f();
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int iMin;
        int iMin2;
        int defaultSize = getDefaultSize(0, widthMeasureSpec);
        int defaultSize2 = getDefaultSize(0, heightMeasureSpec);
        if (this.l <= 0 || this.m <= 0) {
            iMin = defaultSize2;
            iMin2 = defaultSize;
        } else {
            iMin = Math.min(defaultSize2, Math.round((this.m / this.l) * defaultSize));
            iMin2 = Math.min(defaultSize, Math.round(defaultSize2 * (this.l / this.m)));
        }
        setMeasuredDimension(iMin2, iMin);
    }

    private void f() {
        this.l = 0;
        this.m = 0;
        getHolder().addCallback(this.c);
        getHolder().setType(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.h = 0;
        this.i = 0;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void a(Uri uri) {
        a(uri, (Map<String, String>) null);
    }

    public void a(Uri uri, Map<String, String> map) {
        this.e = uri;
        this.f = map;
        this.t = 0;
        g();
        requestLayout();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.e != null && this.j != null) {
            Intent intent = new Intent("com.android.music.musicservicecommand");
            intent.putExtra("command", "pause");
            getContext().sendBroadcast(intent);
            a(false);
            try {
                this.k = new MediaPlayer();
                this.k.setOnPreparedListener(this.b);
                this.k.setOnVideoSizeChangedListener(this.a);
                this.g = -1;
                this.k.setOnCompletionListener(this.u);
                this.k.setOnErrorListener(this.v);
                this.k.setOnBufferingUpdateListener(this.w);
                this.r = 0;
                this.k.setDisplay(this.j);
                this.k.setAudioStreamType(3);
                this.k.setScreenOnWhilePlaying(true);
                FileInputStream fileInputStream = new FileInputStream(new File(this.e.toString()));
                this.k.setDataSource(fileInputStream.getFD());
                fileInputStream.close();
                this.k.prepareAsync();
                this.h = 1;
            } catch (IOException e) {
                CBLogging.d(this.d, "Unable to open content: " + this.e, e);
                this.h = -1;
                this.i = -1;
                this.v.onError(this.k, 1, 0);
            } catch (IllegalArgumentException e2) {
                CBLogging.d(this.d, "Unable to open content: " + this.e, e2);
                this.h = -1;
                this.i = -1;
                this.v.onError(this.k, 1, 0);
            }
        }
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void a(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.q = onPreparedListener;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void a(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.p = onCompletionListener;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void a(MediaPlayer.OnErrorListener onErrorListener) {
        this.s = onErrorListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        if (this.k != null) {
            this.k.reset();
            this.k.release();
            this.k = null;
            this.h = 0;
            if (z) {
                this.i = 0;
            }
        }
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void a() {
        if (h()) {
            this.k.start();
            this.h = 3;
        }
        this.i = 3;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void b() {
        if (h() && this.k.isPlaying()) {
            this.k.pause();
            this.h = 4;
        }
        this.i = 4;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public int c() {
        if (h()) {
            if (this.g > 0) {
                return this.g;
            }
            this.g = this.k.getDuration();
            return this.g;
        }
        this.g = -1;
        return this.g;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public int d() {
        if (h()) {
            return this.k.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void a(int i) {
        if (h()) {
            this.k.seekTo(i);
            this.t = 0;
        } else {
            this.t = i;
        }
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public boolean e() {
        return h() && this.k.isPlaying();
    }

    private boolean h() {
        return (this.k == null || this.h == -1 || this.h == 0 || this.h == 1) ? false : true;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void a(int i, int i2) {
    }
}

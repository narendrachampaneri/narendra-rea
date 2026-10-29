package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.Intent;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.Surface;
import android.view.TextureView;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.chartboost.sdk.Libraries.CBLogging;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class bf extends TextureView implements TextureView.SurfaceTextureListener, bg.a {
    MediaPlayer.OnVideoSizeChangedListener a;
    MediaPlayer.OnPreparedListener b;
    private String c;
    private Uri d;
    private Map<String, String> e;
    private int f;
    private int g;
    private int h;
    private Surface i;
    private MediaPlayer j;
    private int k;
    private int l;
    private MediaPlayer.OnCompletionListener m;
    private MediaPlayer.OnPreparedListener n;
    private int o;
    private MediaPlayer.OnErrorListener p;
    private int q;
    private MediaPlayer.OnCompletionListener r;
    private MediaPlayer.OnErrorListener s;
    private MediaPlayer.OnBufferingUpdateListener t;

    public bf(Context context) {
        super(context);
        this.c = "VideoTextureView";
        this.g = 0;
        this.h = 0;
        this.i = null;
        this.j = null;
        this.a = new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.chartboost.sdk.impl.bf.1
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mp, int width, int height) {
                bf.this.k = mp.getVideoWidth();
                bf.this.l = mp.getVideoHeight();
                if (bf.this.k != 0 && bf.this.l != 0) {
                    bf.this.a(bf.this.getWidth(), bf.this.getHeight());
                }
            }
        };
        this.b = new MediaPlayer.OnPreparedListener() { // from class: com.chartboost.sdk.impl.bf.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mp) {
                bf.this.g = 2;
                bf.this.k = mp.getVideoWidth();
                bf.this.l = mp.getVideoHeight();
                if (bf.this.n != null) {
                    bf.this.n.onPrepared(bf.this.j);
                }
                int i = bf.this.q;
                if (i != 0) {
                    bf.this.a(i);
                }
                if (bf.this.h == 3) {
                    bf.this.a();
                }
            }
        };
        this.r = new MediaPlayer.OnCompletionListener() { // from class: com.chartboost.sdk.impl.bf.3
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mp) {
                bf.this.h = 5;
                if (bf.this.g != 5) {
                    bf.this.g = 5;
                    if (bf.this.m != null) {
                        bf.this.m.onCompletion(bf.this.j);
                    }
                }
            }
        };
        this.s = new MediaPlayer.OnErrorListener() { // from class: com.chartboost.sdk.impl.bf.4
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mp, int framework_err, int impl_err) {
                CBLogging.a(bf.this.c, "Error: " + framework_err + AppInfo.DELIM + impl_err);
                if (framework_err == 100) {
                    bf.this.g();
                } else {
                    bf.this.g = -1;
                    bf.this.h = -1;
                    if (bf.this.p == null || bf.this.p.onError(bf.this.j, framework_err, impl_err)) {
                    }
                }
                return true;
            }
        };
        this.t = new MediaPlayer.OnBufferingUpdateListener() { // from class: com.chartboost.sdk.impl.bf.5
            @Override // android.media.MediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(MediaPlayer mp, int percent) {
                bf.this.o = percent;
            }
        };
        f();
    }

    private void f() {
        this.k = 0;
        this.l = 0;
        setSurfaceTextureListener(this);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.g = 0;
        this.h = 0;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void a(Uri uri) {
        a(uri, (Map<String, String>) null);
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void a(int i, int i2) {
        if (this.k != 0 && this.l != 0 && i != 0 && i2 != 0) {
            float fMin = Math.min(i / this.k, i2 / this.l);
            float f = this.k * fMin;
            float f2 = fMin * this.l;
            Matrix matrix = new Matrix();
            matrix.setScale(f / i, f2 / i2, i / 2.0f, i2 / 2.0f);
            setTransform(matrix);
        }
    }

    public void a(Uri uri, Map<String, String> map) {
        this.d = uri;
        this.e = map;
        this.q = 0;
        g();
        requestLayout();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.d != null && this.i != null) {
            Intent intent = new Intent("com.android.music.musicservicecommand");
            intent.putExtra("command", "pause");
            getContext().sendBroadcast(intent);
            a(false);
            try {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(this.d.toString());
                String strExtractMetadata = mediaMetadataRetriever.extractMetadata(19);
                String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(18);
                this.l = (int) Float.parseFloat(strExtractMetadata);
                this.k = (int) Float.parseFloat(strExtractMetadata2);
            } catch (Exception e) {
                CBLogging.d("play video", "read size error", e);
            }
            try {
                this.j = new MediaPlayer();
                this.j.setOnPreparedListener(this.b);
                this.j.setOnVideoSizeChangedListener(this.a);
                this.f = -1;
                this.j.setOnCompletionListener(this.r);
                this.j.setOnErrorListener(this.s);
                this.j.setOnBufferingUpdateListener(this.t);
                this.o = 0;
                FileInputStream fileInputStream = new FileInputStream(new File(this.d.toString()));
                this.j.setDataSource(fileInputStream.getFD());
                fileInputStream.close();
                this.j.setSurface(this.i);
                this.j.setAudioStreamType(3);
                this.j.setScreenOnWhilePlaying(true);
                this.j.prepareAsync();
                this.g = 1;
            } catch (IOException e2) {
                CBLogging.d(this.c, "Unable to open content: " + this.d, e2);
                this.g = -1;
                this.h = -1;
                this.s.onError(this.j, 1, 0);
            } catch (IllegalArgumentException e3) {
                CBLogging.d(this.c, "Unable to open content: " + this.d, e3);
                this.g = -1;
                this.h = -1;
                this.s.onError(this.j, 1, 0);
            }
        }
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void a(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.n = onPreparedListener;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void a(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.m = onCompletionListener;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void a(MediaPlayer.OnErrorListener onErrorListener) {
        this.p = onErrorListener;
    }

    private void a(boolean z) {
        if (this.j != null) {
            this.j.reset();
            this.j.release();
            this.j = null;
            this.g = 0;
            if (z) {
                this.h = 0;
            }
        }
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void a() {
        if (h()) {
            this.j.start();
            this.g = 3;
        }
        this.h = 3;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void b() {
        if (h() && this.j.isPlaying()) {
            this.j.pause();
            this.g = 4;
        }
        this.h = 4;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public int c() {
        if (h()) {
            if (this.f > 0) {
                return this.f;
            }
            this.f = this.j.getDuration();
            return this.f;
        }
        this.f = -1;
        return this.f;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public int d() {
        if (h()) {
            return this.j.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public void a(int i) {
        if (h()) {
            this.j.seekTo(i);
            this.q = 0;
        } else {
            this.q = i;
        }
    }

    @Override // com.chartboost.sdk.impl.bg.a
    public boolean e() {
        return h() && this.j.isPlaying();
    }

    private boolean h() {
        return (this.j == null || this.g == -1 || this.g == 0 || this.g == 1) ? false : true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surface, int w, int h) {
        this.i = new Surface(surface);
        g();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
        this.i = null;
        a(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int w, int h) {
        boolean z = this.h == 3;
        if (this.j != null && z) {
            if (this.q != 0) {
                a(this.q);
            }
            a();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surface) {
    }
}

package com.mopub.network;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.toolbox.ImageLoader;

/* JADX INFO: loaded from: classes.dex */
public class MaxWidthImageLoader extends ImageLoader {
    private final int mMaxImageWidth;

    @TargetApi(13)
    public MaxWidthImageLoader(RequestQueue queue, Context context, ImageLoader.ImageCache imageCache) {
        super(queue, imageCache);
        WindowManager wm = (WindowManager) context.getSystemService("window");
        Display display = wm.getDefaultDisplay();
        Point size = new Point();
        if (Build.VERSION.SDK_INT < 13) {
            size.set(display.getWidth(), display.getHeight());
        } else {
            display.getSize(size);
        }
        this.mMaxImageWidth = Math.min(size.x, size.y);
    }

    @Override // com.mopub.volley.toolbox.ImageLoader
    public ImageLoader.ImageContainer get(String requestUrl, ImageLoader.ImageListener listener) {
        return super.get(requestUrl, listener, this.mMaxImageWidth, 0);
    }
}

package com.vungle.publisher.util;

import android.graphics.Bitmap;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import com.vungle.log.Logger;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.image.BitmapFactory;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class ViewUtils {

    @Inject
    BitmapFactory a;

    @Inject
    LoggedException.Factory b;

    @Inject
    public ViewUtils() {
    }

    public static void a(ImageView imageView, Bitmap bitmap) {
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        }
    }

    public final Bitmap a(String str) {
        try {
            return this.a.getBitmap(str);
        } catch (IOException e) {
            this.b.b(Logger.AD_TAG, "error loading " + str, e);
            return null;
        }
    }

    public static String a(WebView webView) {
        return webView.getSettings().getUserAgentString();
    }

    public static void a(View view) {
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.vungle.publisher.util.ViewUtils.1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    public static void b(View view) {
        view.setOnTouchListener(null);
    }
}

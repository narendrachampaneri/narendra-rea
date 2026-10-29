package com.amazon.device.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.provider.MediaStore;
import com.newrelic.agent.android.instrumentation.BitmapFactoryInstrumentation;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
class GraphicsUtils {
    private static final String LOGTAG = GraphicsUtils.class.getSimpleName();
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);

    GraphicsUtils() {
    }

    public Bitmap createBitmapImage(InputStream inputStream) {
        if (inputStream != null) {
            InputStream inputStream2 = new BufferedInputStream(inputStream, 32768);
            inputStream2.mark(32768);
            Bitmap bitmap = BitmapFactoryInstrumentation.decodeStream(inputStream2);
            try {
                inputStream2.close();
            } catch (IOException e) {
                this.logger.e("IOException while trying to close the input stream.");
            }
            return bitmap;
        }
        return null;
    }

    public String insertImageInMediaStore(Context context, Bitmap bitmap, String name, String description) {
        return MediaStore.Images.Media.insertImage(context.getContentResolver(), bitmap, name, description);
    }
}

package com.inmobi.re.controller.util;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.inmobi.commons.internal.Base64;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.configs.Initializer;
import com.newrelic.agent.android.instrumentation.BitmapFactoryInstrumentation;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ImageProcessing {
    public static String getBase64EncodedImage(Bitmap bitmap, Context context) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, getDefaultImgQuality(context), byteArrayOutputStream);
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
    }

    public static String convertMediaUriToPath(Uri uri, Context context) {
        Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
        int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_data");
        cursorQuery.moveToFirst();
        String string = cursorQuery.getString(columnIndexOrThrow);
        cursorQuery.close();
        return string;
    }

    public static int getDefaultImgWidth(Context context) {
        return Initializer.getConfigParams().getPicWidth();
    }

    public static int getDefaultImgHeight(Context context) {
        return Initializer.getConfigParams().getPicHeight();
    }

    public static int getDefaultImgQuality(Context context) {
        return Initializer.getConfigParams().getPicQuality();
    }

    public static Bitmap getCompressedBitmap(String str, Context context) {
        Bitmap bitmapDecodeStream;
        try {
            int defaultImgHeight = getDefaultImgHeight(context) * getDefaultImgWidth(context);
            FileInputStream fileInputStream = new FileInputStream(str);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactoryInstrumentation.decodeStream(fileInputStream, null, options);
            fileInputStream.close();
            int i = 1;
            while (((double) (options.outWidth * options.outHeight)) * (1.0d / Math.pow(i, 2.0d)) > defaultImgHeight) {
                i++;
            }
            FileInputStream fileInputStream2 = new FileInputStream(str);
            if (i > 1) {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inSampleSize = i - 1;
                Bitmap bitmapDecodeStream2 = BitmapFactoryInstrumentation.decodeStream(fileInputStream2, null, options2);
                int height = bitmapDecodeStream2.getHeight();
                int width = bitmapDecodeStream2.getWidth();
                double dSqrt = Math.sqrt(((double) defaultImgHeight) / (((double) width) / ((double) height)));
                bitmapDecodeStream = Bitmap.createScaledBitmap(bitmapDecodeStream2, (int) ((dSqrt / ((double) height)) * ((double) width)), (int) dSqrt, true);
                bitmapDecodeStream2.recycle();
                System.gc();
            } else {
                bitmapDecodeStream = BitmapFactoryInstrumentation.decodeStream(fileInputStream2);
            }
            fileInputStream2.close();
            Log.debug(Constants.RENDERING_LOG_TAG, "bitmap size - width: " + bitmapDecodeStream.getWidth() + ", height: " + bitmapDecodeStream.getHeight());
            return bitmapDecodeStream;
        } catch (IOException e) {
            Log.debug(Constants.RENDERING_LOG_TAG, e.getMessage(), e);
            return null;
        }
    }
}

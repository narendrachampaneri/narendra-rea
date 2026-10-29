package com.mopub.volley.toolbox;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.ParseError;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
import com.newrelic.agent.android.instrumentation.BitmapFactoryInstrumentation;

/* JADX INFO: loaded from: classes2.dex */
public class ImageRequest extends Request<Bitmap> {
    private static final float IMAGE_BACKOFF_MULT = 2.0f;
    private static final int IMAGE_MAX_RETRIES = 2;
    private static final int IMAGE_TIMEOUT_MS = 1000;
    private static final Object sDecodeLock = new Object();
    private final Bitmap.Config mDecodeConfig;
    private final Response.Listener<Bitmap> mListener;
    private final int mMaxHeight;
    private final int mMaxWidth;

    public ImageRequest(String url, Response.Listener<Bitmap> listener, int maxWidth, int maxHeight, Bitmap.Config decodeConfig, Response.ErrorListener errorListener) {
        super(0, url, errorListener);
        setRetryPolicy(new DefaultRetryPolicy(1000, 2, IMAGE_BACKOFF_MULT));
        this.mListener = listener;
        this.mDecodeConfig = decodeConfig;
        this.mMaxWidth = maxWidth;
        this.mMaxHeight = maxHeight;
    }

    @Override // com.mopub.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.LOW;
    }

    private static int getResizedDimension(int maxPrimary, int maxSecondary, int actualPrimary, int actualSecondary) {
        if (maxPrimary != 0 || maxSecondary != 0) {
            if (maxPrimary == 0) {
                return (int) (((double) actualPrimary) * (((double) maxSecondary) / ((double) actualSecondary)));
            }
            if (maxSecondary == 0) {
                return maxPrimary;
            }
            double ratio = ((double) actualSecondary) / ((double) actualPrimary);
            int resized = maxPrimary;
            if (((double) resized) * ratio > maxSecondary) {
                resized = (int) (((double) maxSecondary) / ratio);
            }
            return resized;
        }
        return actualPrimary;
    }

    @Override // com.mopub.volley.Request
    protected Response<Bitmap> parseNetworkResponse(NetworkResponse response) {
        Response<Bitmap> responseError;
        synchronized (sDecodeLock) {
            try {
                responseError = doParse(response);
            } catch (OutOfMemoryError e) {
                VolleyLog.e("Caught OOM for %d byte image, url=%s", Integer.valueOf(response.data.length), getUrl());
                responseError = Response.error(new ParseError(e));
            }
        }
        return responseError;
    }

    private Response<Bitmap> doParse(NetworkResponse response) {
        Bitmap bitmap;
        byte[] data = response.data;
        BitmapFactory.Options decodeOptions = new BitmapFactory.Options();
        if (this.mMaxWidth == 0 && this.mMaxHeight == 0) {
            decodeOptions.inPreferredConfig = this.mDecodeConfig;
            bitmap = BitmapFactoryInstrumentation.decodeByteArray(data, 0, data.length, decodeOptions);
        } else {
            decodeOptions.inJustDecodeBounds = true;
            BitmapFactoryInstrumentation.decodeByteArray(data, 0, data.length, decodeOptions);
            int actualWidth = decodeOptions.outWidth;
            int actualHeight = decodeOptions.outHeight;
            int desiredWidth = getResizedDimension(this.mMaxWidth, this.mMaxHeight, actualWidth, actualHeight);
            int desiredHeight = getResizedDimension(this.mMaxHeight, this.mMaxWidth, actualHeight, actualWidth);
            decodeOptions.inJustDecodeBounds = false;
            decodeOptions.inSampleSize = findBestSampleSize(actualWidth, actualHeight, desiredWidth, desiredHeight);
            Bitmap tempBitmap = BitmapFactoryInstrumentation.decodeByteArray(data, 0, data.length, decodeOptions);
            if (tempBitmap != null && (tempBitmap.getWidth() > desiredWidth || tempBitmap.getHeight() > desiredHeight)) {
                bitmap = Bitmap.createScaledBitmap(tempBitmap, desiredWidth, desiredHeight, true);
                tempBitmap.recycle();
            } else {
                bitmap = tempBitmap;
            }
        }
        if (bitmap == null) {
            return Response.error(new ParseError(response));
        }
        return Response.success(bitmap, HttpHeaderParser.parseCacheHeaders(response));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    public void deliverResponse(Bitmap response) {
        this.mListener.onResponse(response);
    }

    static int findBestSampleSize(int actualWidth, int actualHeight, int desiredWidth, int desiredHeight) {
        double wr = ((double) actualWidth) / ((double) desiredWidth);
        double hr = ((double) actualHeight) / ((double) desiredHeight);
        double ratio = Math.min(wr, hr);
        float n = 1.0f;
        while (IMAGE_BACKOFF_MULT * n <= ratio) {
            n *= IMAGE_BACKOFF_MULT;
        }
        return (int) n;
    }
}

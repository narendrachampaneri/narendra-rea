package com.google.android.exoplayer.chunk;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.exoplayer.MediaCodecUtil;
import com.google.android.exoplayer.util.Util;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class VideoFormatSelectorUtil {
    private static final float FRACTION_TO_CONSIDER_FULLSCREEN = 0.98f;

    public static int[] selectVideoFormatsForDefaultDisplay(Context context, List<? extends FormatWrapper> formatWrappers, String[] allowedContainerMimeTypes, boolean filterHdFormats) throws MediaCodecUtil.DecoderQueryException {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Display display = windowManager.getDefaultDisplay();
        Point displaySize = getDisplaySize(display);
        return selectVideoFormats(formatWrappers, allowedContainerMimeTypes, filterHdFormats, true, displaySize.x, displaySize.y);
    }

    public static int[] selectVideoFormats(List<? extends FormatWrapper> formatWrappers, String[] allowedContainerMimeTypes, boolean filterHdFormats, boolean orientationMayChange, int viewportWidth, int viewportHeight) throws MediaCodecUtil.DecoderQueryException {
        int maxVideoPixelsToRetain = Integer.MAX_VALUE;
        ArrayList<Integer> selectedIndexList = new ArrayList<>();
        int maxDecodableFrameSize = MediaCodecUtil.maxH264DecodableFrameSize();
        int formatWrapperCount = formatWrappers.size();
        for (int i = 0; i < formatWrapperCount; i++) {
            Format format = formatWrappers.get(i).getFormat();
            if (isFormatPlayable(format, allowedContainerMimeTypes, filterHdFormats, maxDecodableFrameSize)) {
                selectedIndexList.add(Integer.valueOf(i));
                if (format.width > 0 && format.height > 0) {
                    Point maxVideoSizeInViewport = getMaxVideoSizeInViewport(orientationMayChange, viewportWidth, viewportHeight, format.width, format.height);
                    int videoPixels = format.width * format.height;
                    if (format.width >= ((int) (maxVideoSizeInViewport.x * FRACTION_TO_CONSIDER_FULLSCREEN)) && format.height >= ((int) (maxVideoSizeInViewport.y * FRACTION_TO_CONSIDER_FULLSCREEN)) && videoPixels < maxVideoPixelsToRetain) {
                        maxVideoPixelsToRetain = videoPixels;
                    }
                }
            }
        }
        for (int i2 = selectedIndexList.size() - 1; i2 >= 0; i2--) {
            Format format2 = formatWrappers.get(i2).getFormat();
            if (format2.width > 0 && format2.height > 0 && format2.width * format2.height > maxVideoPixelsToRetain) {
                selectedIndexList.remove(i2);
            }
        }
        return Util.toArray(selectedIndexList);
    }

    private static boolean isFormatPlayable(Format format, String[] allowedContainerMimeTypes, boolean filterHdFormats, int maxDecodableFrameSize) {
        if (allowedContainerMimeTypes != null && !Util.contains(allowedContainerMimeTypes, format.mimeType)) {
            return false;
        }
        if (!filterHdFormats || (format.width < 1280 && format.height < 720)) {
            return format.width <= 0 || format.height <= 0 || format.width * format.height <= maxDecodableFrameSize;
        }
        return false;
    }

    private static Point getMaxVideoSizeInViewport(boolean orientationMayChange, int viewportWidth, int viewportHeight, int videoWidth, int videoHeight) {
        if (orientationMayChange) {
            if ((videoWidth > videoHeight) != (viewportWidth > viewportHeight)) {
                viewportWidth = viewportHeight;
                viewportHeight = viewportWidth;
            }
        }
        if (videoWidth * viewportHeight >= videoHeight * viewportWidth) {
            return new Point(viewportWidth, Util.ceilDivide(viewportWidth * videoHeight, videoWidth));
        }
        return new Point(Util.ceilDivide(viewportHeight * videoWidth, videoHeight), viewportHeight);
    }

    private static Point getDisplaySize(Display display) {
        Point displaySize = new Point();
        if (Util.SDK_INT >= 17) {
            getDisplaySizeV17(display, displaySize);
        } else if (Util.SDK_INT >= 16) {
            getDisplaySizeV16(display, displaySize);
        } else {
            getDisplaySizeV9(display, displaySize);
        }
        return displaySize;
    }

    @TargetApi(17)
    private static void getDisplaySizeV17(Display display, Point outSize) {
        display.getRealSize(outSize);
    }

    @TargetApi(16)
    private static void getDisplaySizeV16(Display display, Point outSize) {
        display.getSize(outSize);
    }

    private static void getDisplaySizeV9(Display display, Point outSize) {
        outSize.x = display.getWidth();
        outSize.y = display.getHeight();
    }

    private VideoFormatSelectorUtil() {
    }
}

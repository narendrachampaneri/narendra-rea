package android.support.v7.widget;

import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class DrawableUtils {
    public static final Rect INSETS_NONE = new Rect();
    private static final String TAG = "DrawableUtils";
    private static final String VECTOR_DRAWABLE_CLAZZ_NAME = "android.graphics.drawable.VectorDrawable";
    private static Class<?> sInsetsClazz;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                sInsetsClazz = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    private DrawableUtils() {
    }

    public static Rect getOpticalBounds(Drawable drawable) {
        if (sInsetsClazz != null) {
            try {
                Drawable drawable2 = DrawableCompat.unwrap(drawable);
                Method getOpticalInsetsMethod = drawable2.getClass().getMethod("getOpticalInsets", new Class[0]);
                Object insets = getOpticalInsetsMethod.invoke(drawable2, new Object[0]);
                if (insets != null) {
                    Rect result = new Rect();
                    Field[] arr$ = sInsetsClazz.getFields();
                    for (Field field : arr$) {
                        switch (field.getName()) {
                            case "left":
                                result.left = field.getInt(insets);
                                break;
                            case "top":
                                result.top = field.getInt(insets);
                                break;
                            case "right":
                                result.right = field.getInt(insets);
                                break;
                            case "bottom":
                                result.bottom = field.getInt(insets);
                                break;
                        }
                    }
                    return result;
                }
            } catch (Exception e) {
                Log.e(TAG, "Couldn't obtain the optical insets. Ignoring.");
            }
        }
        return INSETS_NONE;
    }

    static void fixDrawable(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && VECTOR_DRAWABLE_CLAZZ_NAME.equals(drawable.getClass().getName())) {
            fixVectorDrawableTinting(drawable);
        }
    }

    static boolean canSafelyMutateDrawable(@NonNull Drawable drawable) {
        if (drawable instanceof LayerDrawable) {
            return Build.VERSION.SDK_INT >= 16;
        }
        if (drawable instanceof InsetDrawable) {
            return Build.VERSION.SDK_INT >= 14;
        }
        if (drawable instanceof StateListDrawable) {
            return Build.VERSION.SDK_INT >= 8;
        }
        if (drawable instanceof GradientDrawable) {
            return Build.VERSION.SDK_INT >= 14;
        }
        if (!(drawable instanceof DrawableContainer)) {
            return true;
        }
        Drawable.ConstantState state = drawable.getConstantState();
        if (!(state instanceof DrawableContainer.DrawableContainerState)) {
            return true;
        }
        DrawableContainer.DrawableContainerState containerState = (DrawableContainer.DrawableContainerState) state;
        Drawable[] arr$ = containerState.getChildren();
        for (Drawable child : arr$) {
            if (!canSafelyMutateDrawable(child)) {
                return false;
            }
        }
        return true;
    }

    private static void fixVectorDrawableTinting(Drawable drawable) {
        int[] originalState = drawable.getState();
        if (originalState == null || originalState.length == 0) {
            drawable.setState(ThemeUtils.CHECKED_STATE_SET);
        } else {
            drawable.setState(ThemeUtils.EMPTY_STATE_SET);
        }
        drawable.setState(originalState);
    }

    static PorterDuff.Mode parseTintMode(int value, PorterDuff.Mode defaultMode) {
        switch (value) {
            case 3:
                return PorterDuff.Mode.SRC_OVER;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            default:
                return defaultMode;
            case 5:
                return PorterDuff.Mode.SRC_IN;
            case 9:
                return PorterDuff.Mode.SRC_ATOP;
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return Build.VERSION.SDK_INT >= 11 ? PorterDuff.Mode.valueOf("ADD") : defaultMode;
        }
    }
}

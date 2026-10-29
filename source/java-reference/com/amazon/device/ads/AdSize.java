package com.amazon.device.ads;

import android.support.v7.widget.helper.ItemTouchHelper;
import com.amazon.ags.constants.OverlaySize;
import com.mopub.common.AdType;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;

/* JADX INFO: loaded from: classes.dex */
public class AdSize {
    private int gravity;
    private int height;
    private final MobileAdsLogger logger;
    private Modality modality;
    private Scaling scaling;
    private SizeType type;
    private int width;
    private static final String LOGTAG = AdSize.class.getSimpleName();
    public static final AdSize SIZE_300x50 = new AdSize(300, 50);
    public static final AdSize SIZE_320x50 = new AdSize(OverlaySize.TOAST_WIDTH_PIXELS, 50);
    public static final AdSize SIZE_300x250 = new AdSize(300, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
    public static final AdSize SIZE_600x90 = new AdSize(SettingsJsonConstants.ANALYTICS_FLUSH_INTERVAL_SECS_DEFAULT, 90);
    public static final AdSize SIZE_728x90 = new AdSize(728, 90);
    public static final AdSize SIZE_1024x50 = new AdSize(1024, 50);
    public static final AdSize SIZE_AUTO = new AdSize(SizeType.AUTO);
    public static final AdSize SIZE_AUTO_NO_SCALE = new AdSize(SizeType.AUTO, Scaling.NO_UPSCALE);
    static final AdSize SIZE_INTERSTITIAL = new AdSize(SizeType.INTERSTITIAL, Modality.MODAL);
    static final AdSize SIZE_MODELESS_INTERSTITIAL = new AdSize(SizeType.INTERSTITIAL);

    private enum Modality {
        MODAL,
        MODELESS
    }

    private enum Scaling {
        CAN_UPSCALE,
        NO_UPSCALE
    }

    enum SizeType {
        EXPLICIT,
        AUTO,
        INTERSTITIAL
    }

    public AdSize(int width, int height) {
        this.gravity = 17;
        this.type = SizeType.EXPLICIT;
        this.modality = Modality.MODELESS;
        this.scaling = Scaling.CAN_UPSCALE;
        this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
        initialize(width, height);
    }

    AdSize(String width, String height) {
        this.gravity = 17;
        this.type = SizeType.EXPLICIT;
        this.modality = Modality.MODELESS;
        this.scaling = Scaling.CAN_UPSCALE;
        this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
        int parsedWidth = NumberUtils.parseInt(width, 0);
        int parsedHeight = NumberUtils.parseInt(height, 0);
        initialize(parsedWidth, parsedHeight);
    }

    AdSize(SizeType type) {
        this.gravity = 17;
        this.type = SizeType.EXPLICIT;
        this.modality = Modality.MODELESS;
        this.scaling = Scaling.CAN_UPSCALE;
        this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
        this.type = type;
    }

    AdSize(SizeType type, Modality modality) {
        this(type);
        this.modality = modality;
    }

    AdSize(SizeType type, Scaling scaling) {
        this(type);
        this.scaling = scaling;
    }

    private AdSize deepClone() {
        AdSize adSize = new AdSize(this.type);
        adSize.width = this.width;
        adSize.height = this.height;
        adSize.gravity = this.gravity;
        adSize.modality = this.modality;
        adSize.scaling = this.scaling;
        return adSize;
    }

    private void initialize(int width, int height) {
        if (width <= 0 || height <= 0) {
            this.logger.e("The width and height must be positive integers.");
            throw new IllegalArgumentException("The width and height must be positive integers.");
        }
        this.width = width;
        this.height = height;
        this.type = SizeType.EXPLICIT;
    }

    public AdSize newGravity(int gravity) {
        AdSize adSize = deepClone();
        adSize.gravity = gravity;
        return adSize;
    }

    public int getGravity() {
        return this.gravity;
    }

    public String toString() {
        switch (this.type) {
            case EXPLICIT:
                String sizeString = getAsSizeString(this.width, this.height);
                return sizeString;
            case AUTO:
                return "auto";
            case INTERSTITIAL:
                return AdType.INTERSTITIAL;
            default:
                return null;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof AdSize) {
            AdSize other = (AdSize) obj;
            if (this.type.equals(other.type)) {
                if (this.type.equals(SizeType.EXPLICIT)) {
                    return this.width == other.width && this.height == other.height;
                }
                return true;
            }
        }
        return false;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public boolean isAuto() {
        return this.type == SizeType.AUTO;
    }

    boolean isModal() {
        return Modality.MODAL.equals(this.modality);
    }

    SizeType getSizeType() {
        return this.type;
    }

    public boolean canUpscale() {
        return Scaling.CAN_UPSCALE.equals(this.scaling);
    }

    static String getAsSizeString(int w, int h) {
        return Integer.toString(w) + "x" + Integer.toString(h);
    }
}

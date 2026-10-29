package com.mopub.nativeads;

import android.location.Location;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.google.android.exoplayer.util.MimeTypes;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
public class RequestParameters {

    @Nullable
    private final EnumSet<NativeAdAsset> mDesiredAssets;

    @Nullable
    private final String mKeywords;

    @Nullable
    private final Location mLocation;

    public enum NativeAdAsset {
        TITLE("title"),
        TEXT(MimeTypes.BASE_TYPE_TEXT),
        ICON_IMAGE("iconimage"),
        MAIN_IMAGE("mainimage"),
        CALL_TO_ACTION_TEXT("ctatext"),
        STAR_RATING("starrating");

        private final String mAssetName;

        NativeAdAsset(String assetName) {
            this.mAssetName = assetName;
        }

        @Override // java.lang.Enum
        @NonNull
        public String toString() {
            return this.mAssetName;
        }
    }

    public static final class Builder {
        private EnumSet<NativeAdAsset> desiredAssets;
        private String keywords;
        private Location location;

        @NonNull
        public final Builder keywords(String keywords) {
            this.keywords = keywords;
            return this;
        }

        @NonNull
        public final Builder location(Location location) {
            this.location = location;
            return this;
        }

        @NonNull
        public final Builder desiredAssets(EnumSet<NativeAdAsset> desiredAssets) {
            this.desiredAssets = EnumSet.copyOf((EnumSet) desiredAssets);
            return this;
        }

        @NonNull
        public final RequestParameters build() {
            return new RequestParameters(this);
        }
    }

    private RequestParameters(@NonNull Builder builder) {
        this.mKeywords = builder.keywords;
        this.mLocation = builder.location;
        this.mDesiredAssets = builder.desiredAssets;
    }

    @Nullable
    public final String getKeywords() {
        return this.mKeywords;
    }

    @Nullable
    public final Location getLocation() {
        return this.mLocation;
    }

    public final String getDesiredAssets() {
        if (this.mDesiredAssets == null) {
            return "";
        }
        String result = TextUtils.join(AppInfo.DELIM, this.mDesiredAssets.toArray());
        return result;
    }
}

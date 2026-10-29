package com.mopub.nativeads;

import android.support.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ViewBinder {
    final int callToActionId;
    final int daaIconImageId;

    @NonNull
    final Map<String, Integer> extras;
    final int iconImageId;
    final int layoutId;
    final int mainImageId;
    final int textId;
    final int titleId;

    public static final class Builder {
        private int callToActionId;
        private int daaIconImageId;

        @NonNull
        private Map<String, Integer> extras;
        private int iconImageId;
        private final int layoutId;
        private int mainImageId;
        private int textId;
        private int titleId;

        public Builder(int layoutId) {
            this.extras = Collections.emptyMap();
            this.layoutId = layoutId;
            this.extras = new HashMap();
        }

        @NonNull
        public final Builder titleId(int titleId) {
            this.titleId = titleId;
            return this;
        }

        @NonNull
        public final Builder textId(int textId) {
            this.textId = textId;
            return this;
        }

        @NonNull
        public final Builder callToActionId(int callToActionId) {
            this.callToActionId = callToActionId;
            return this;
        }

        @NonNull
        public final Builder mainImageId(int mainImageId) {
            this.mainImageId = mainImageId;
            return this;
        }

        @NonNull
        public final Builder iconImageId(int iconImageId) {
            this.iconImageId = iconImageId;
            return this;
        }

        @NonNull
        public final Builder daaIconImageId(int daaIconImageId) {
            this.daaIconImageId = daaIconImageId;
            return this;
        }

        @NonNull
        public final Builder addExtras(Map<String, Integer> resourceIds) {
            this.extras = new HashMap(resourceIds);
            return this;
        }

        @NonNull
        public final Builder addExtra(String key, int resourceId) {
            this.extras.put(key, Integer.valueOf(resourceId));
            return this;
        }

        @NonNull
        public final ViewBinder build() {
            return new ViewBinder(this);
        }
    }

    private ViewBinder(@NonNull Builder builder) {
        this.layoutId = builder.layoutId;
        this.titleId = builder.titleId;
        this.textId = builder.textId;
        this.callToActionId = builder.callToActionId;
        this.mainImageId = builder.mainImageId;
        this.iconImageId = builder.iconImageId;
        this.daaIconImageId = builder.daaIconImageId;
        this.extras = builder.extras;
    }
}

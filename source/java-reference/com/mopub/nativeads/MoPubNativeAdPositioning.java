package com.mopub.nativeads;

import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MoPubNativeAdPositioning {

    public static class MoPubServerPositioning {
    }

    public static class MoPubClientPositioning {
        public static final int NO_REPEAT = Integer.MAX_VALUE;

        @NonNull
        private final ArrayList<Integer> mFixedPositions = new ArrayList<>();
        private int mRepeatInterval = Integer.MAX_VALUE;

        @NonNull
        public MoPubClientPositioning addFixedPosition(int position) {
            int index;
            if (Preconditions.NoThrow.checkArgument(position >= 0) && (index = Collections.binarySearch(this.mFixedPositions, Integer.valueOf(position))) < 0) {
                this.mFixedPositions.add(index ^ (-1), Integer.valueOf(position));
            }
            return this;
        }

        @NonNull
        List<Integer> getFixedPositions() {
            return this.mFixedPositions;
        }

        @NonNull
        public MoPubClientPositioning enableRepeatingPositions(int interval) {
            if (!Preconditions.NoThrow.checkArgument(interval > 1, "Repeating interval must be greater than 1")) {
                this.mRepeatInterval = Integer.MAX_VALUE;
            } else {
                this.mRepeatInterval = interval;
            }
            return this;
        }

        int getRepeatingInterval() {
            return this.mRepeatInterval;
        }
    }

    @NonNull
    static MoPubClientPositioning clone(@NonNull MoPubClientPositioning positioning) {
        Preconditions.checkNotNull(positioning);
        MoPubClientPositioning clone = new MoPubClientPositioning();
        clone.mFixedPositions.addAll(positioning.mFixedPositions);
        clone.mRepeatInterval = positioning.mRepeatInterval;
        return clone;
    }

    @NonNull
    public static MoPubClientPositioning clientPositioning() {
        return new MoPubClientPositioning();
    }

    @NonNull
    public static MoPubServerPositioning serverPositioning() {
        return new MoPubServerPositioning();
    }

    @NonNull
    @Deprecated
    public static Builder newBuilder() {
        return new Builder();
    }

    @Deprecated
    public static final class Builder extends MoPubClientPositioning {
        @Override // com.mopub.nativeads.MoPubNativeAdPositioning.MoPubClientPositioning
        @NonNull
        public Builder addFixedPosition(int position) {
            super.addFixedPosition(position);
            return this;
        }

        @Override // com.mopub.nativeads.MoPubNativeAdPositioning.MoPubClientPositioning
        @NonNull
        public Builder enableRepeatingPositions(int interval) {
            super.enableRepeatingPositions(interval);
            return this;
        }

        @NonNull
        @Deprecated
        public MoPubClientPositioning build() {
            return this;
        }
    }
}

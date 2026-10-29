package com.mopub.nativeads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.logging.MoPubLog;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class PlacementData {
    private static final int MAX_ADS = 200;
    public static final int NOT_FOUND = -1;
    private int mDesiredCount;

    @NonNull
    private final int[] mDesiredOriginalPositions = new int[200];

    @NonNull
    private final int[] mDesiredInsertionPositions = new int[200];

    @NonNull
    private final int[] mOriginalAdPositions = new int[200];

    @NonNull
    private final int[] mAdjustedAdPositions = new int[200];

    @NonNull
    private final NativeAdData[] mAdDataObjects = new NativeAdData[200];
    private int mPlacedCount = 0;

    private PlacementData(@NonNull int[] desiredInsertionPositions) {
        this.mDesiredCount = 0;
        this.mDesiredCount = Math.min(desiredInsertionPositions.length, 200);
        System.arraycopy(desiredInsertionPositions, 0, this.mDesiredInsertionPositions, 0, this.mDesiredCount);
        System.arraycopy(desiredInsertionPositions, 0, this.mDesiredOriginalPositions, 0, this.mDesiredCount);
    }

    @NonNull
    static PlacementData fromAdPositioning(@NonNull MoPubNativeAdPositioning.MoPubClientPositioning adPositioning) {
        List<Integer> fixed = adPositioning.getFixedPositions();
        int interval = adPositioning.getRepeatingInterval();
        int size = interval == Integer.MAX_VALUE ? fixed.size() : 200;
        int[] desiredInsertionPositions = new int[size];
        int numAds = 0;
        int lastPos = 0;
        for (Integer position : fixed) {
            lastPos = position.intValue() - numAds;
            desiredInsertionPositions[numAds] = lastPos;
            numAds++;
        }
        for (int numAds2 = numAds; numAds2 < size; numAds2++) {
            lastPos = (lastPos + interval) - 1;
            desiredInsertionPositions[numAds2] = lastPos;
        }
        return new PlacementData(desiredInsertionPositions);
    }

    @NonNull
    static PlacementData empty() {
        return new PlacementData(new int[0]);
    }

    boolean shouldPlaceAd(int position) {
        int index = binarySearch(this.mDesiredInsertionPositions, 0, this.mDesiredCount, position);
        return index >= 0;
    }

    int nextInsertionPosition(int position) {
        int index = binarySearchGreaterThan(this.mDesiredInsertionPositions, this.mDesiredCount, position);
        if (index == this.mDesiredCount) {
            return -1;
        }
        return this.mDesiredInsertionPositions[index];
    }

    int previousInsertionPosition(int position) {
        int index = binarySearchFirstEquals(this.mDesiredInsertionPositions, this.mDesiredCount, position);
        if (index == 0) {
            return -1;
        }
        return this.mDesiredInsertionPositions[index - 1];
    }

    void placeAd(int adjustedPosition, NativeAdData adData) {
        int desiredIndex = binarySearchFirstEquals(this.mDesiredInsertionPositions, this.mDesiredCount, adjustedPosition);
        if (desiredIndex == this.mDesiredCount || this.mDesiredInsertionPositions[desiredIndex] != adjustedPosition) {
            MoPubLog.w("Attempted to insert an ad at an invalid position");
            return;
        }
        int originalPosition = this.mDesiredOriginalPositions[desiredIndex];
        int placeIndex = binarySearchGreaterThan(this.mOriginalAdPositions, this.mPlacedCount, originalPosition);
        if (placeIndex < this.mPlacedCount) {
            int num = this.mPlacedCount - placeIndex;
            System.arraycopy(this.mOriginalAdPositions, placeIndex, this.mOriginalAdPositions, placeIndex + 1, num);
            System.arraycopy(this.mAdjustedAdPositions, placeIndex, this.mAdjustedAdPositions, placeIndex + 1, num);
            System.arraycopy(this.mAdDataObjects, placeIndex, this.mAdDataObjects, placeIndex + 1, num);
        }
        this.mOriginalAdPositions[placeIndex] = originalPosition;
        this.mAdjustedAdPositions[placeIndex] = adjustedPosition;
        this.mAdDataObjects[placeIndex] = adData;
        this.mPlacedCount++;
        int num2 = (this.mDesiredCount - desiredIndex) - 1;
        System.arraycopy(this.mDesiredInsertionPositions, desiredIndex + 1, this.mDesiredInsertionPositions, desiredIndex, num2);
        System.arraycopy(this.mDesiredOriginalPositions, desiredIndex + 1, this.mDesiredOriginalPositions, desiredIndex, num2);
        this.mDesiredCount--;
        for (int i = desiredIndex; i < this.mDesiredCount; i++) {
            int[] iArr = this.mDesiredInsertionPositions;
            iArr[i] = iArr[i] + 1;
        }
        for (int i2 = placeIndex + 1; i2 < this.mPlacedCount; i2++) {
            int[] iArr2 = this.mAdjustedAdPositions;
            iArr2[i2] = iArr2[i2] + 1;
        }
    }

    boolean isPlacedAd(int position) {
        int index = binarySearch(this.mAdjustedAdPositions, 0, this.mPlacedCount, position);
        return index >= 0;
    }

    @Nullable
    NativeAdData getPlacedAd(int position) {
        int index = binarySearch(this.mAdjustedAdPositions, 0, this.mPlacedCount, position);
        if (index < 0) {
            return null;
        }
        return this.mAdDataObjects[index];
    }

    @NonNull
    int[] getPlacedAdPositions() {
        int[] positions = new int[this.mPlacedCount];
        System.arraycopy(this.mAdjustedAdPositions, 0, positions, 0, this.mPlacedCount);
        return positions;
    }

    int getOriginalPosition(int position) {
        int index = binarySearch(this.mAdjustedAdPositions, 0, this.mPlacedCount, position);
        if (index < 0) {
            return position - (index ^ (-1));
        }
        return -1;
    }

    int getAdjustedPosition(int originalPosition) {
        int index = binarySearchGreaterThan(this.mOriginalAdPositions, this.mPlacedCount, originalPosition);
        return originalPosition + index;
    }

    int getOriginalCount(int count) {
        if (count == 0) {
            return 0;
        }
        int originalPos = getOriginalPosition(count - 1);
        if (originalPos != -1) {
            return originalPos + 1;
        }
        return -1;
    }

    int getAdjustedCount(int originalCount) {
        if (originalCount == 0) {
            return 0;
        }
        return getAdjustedPosition(originalCount - 1) + 1;
    }

    int clearAdsInRange(int adjustedStartRange, int adjustedEndRange) {
        int[] clearOriginalPositions = new int[this.mPlacedCount];
        int[] clearAdjustedPositions = new int[this.mPlacedCount];
        int clearCount = 0;
        for (int i = 0; i < this.mPlacedCount; i++) {
            int originalPosition = this.mOriginalAdPositions[i];
            int adjustedPosition = this.mAdjustedAdPositions[i];
            if (adjustedStartRange <= adjustedPosition && adjustedPosition < adjustedEndRange) {
                clearOriginalPositions[clearCount] = originalPosition;
                clearAdjustedPositions[clearCount] = adjustedPosition - clearCount;
                this.mAdDataObjects[i].getAd().destroy();
                this.mAdDataObjects[i] = null;
                clearCount++;
            } else if (clearCount > 0) {
                int newIndex = i - clearCount;
                this.mOriginalAdPositions[newIndex] = originalPosition;
                this.mAdjustedAdPositions[newIndex] = adjustedPosition - clearCount;
                this.mAdDataObjects[newIndex] = this.mAdDataObjects[i];
            }
        }
        if (clearCount == 0) {
            return 0;
        }
        int firstCleared = clearAdjustedPositions[0];
        int desiredIndex = binarySearchFirstEquals(this.mDesiredInsertionPositions, this.mDesiredCount, firstCleared);
        for (int i2 = this.mDesiredCount - 1; i2 >= desiredIndex; i2--) {
            this.mDesiredOriginalPositions[i2 + clearCount] = this.mDesiredOriginalPositions[i2];
            this.mDesiredInsertionPositions[i2 + clearCount] = this.mDesiredInsertionPositions[i2] - clearCount;
        }
        for (int i3 = 0; i3 < clearCount; i3++) {
            this.mDesiredOriginalPositions[desiredIndex + i3] = clearOriginalPositions[i3];
            this.mDesiredInsertionPositions[desiredIndex + i3] = clearAdjustedPositions[i3];
        }
        this.mDesiredCount += clearCount;
        this.mPlacedCount -= clearCount;
        return clearCount;
    }

    void clearAds() {
        if (this.mPlacedCount != 0) {
            clearAdsInRange(0, this.mAdjustedAdPositions[this.mPlacedCount - 1] + 1);
        }
    }

    void insertItem(int originalPosition) {
        int indexToIncrement = binarySearchFirstEquals(this.mDesiredOriginalPositions, this.mDesiredCount, originalPosition);
        for (int i = indexToIncrement; i < this.mDesiredCount; i++) {
            int[] iArr = this.mDesiredOriginalPositions;
            iArr[i] = iArr[i] + 1;
            int[] iArr2 = this.mDesiredInsertionPositions;
            iArr2[i] = iArr2[i] + 1;
        }
        int indexToIncrement2 = binarySearchFirstEquals(this.mOriginalAdPositions, this.mPlacedCount, originalPosition);
        for (int i2 = indexToIncrement2; i2 < this.mPlacedCount; i2++) {
            int[] iArr3 = this.mOriginalAdPositions;
            iArr3[i2] = iArr3[i2] + 1;
            int[] iArr4 = this.mAdjustedAdPositions;
            iArr4[i2] = iArr4[i2] + 1;
        }
    }

    void removeItem(int originalPosition) {
        int indexToDecrement = binarySearchGreaterThan(this.mDesiredOriginalPositions, this.mDesiredCount, originalPosition);
        for (int i = indexToDecrement; i < this.mDesiredCount; i++) {
            int[] iArr = this.mDesiredOriginalPositions;
            iArr[i] = iArr[i] - 1;
            int[] iArr2 = this.mDesiredInsertionPositions;
            iArr2[i] = iArr2[i] - 1;
        }
        int indexToDecrement2 = binarySearchGreaterThan(this.mOriginalAdPositions, this.mPlacedCount, originalPosition);
        for (int i2 = indexToDecrement2; i2 < this.mPlacedCount; i2++) {
            int[] iArr3 = this.mOriginalAdPositions;
            iArr3[i2] = iArr3[i2] - 1;
            int[] iArr4 = this.mAdjustedAdPositions;
            iArr4[i2] = iArr4[i2] - 1;
        }
    }

    void moveItem(int originalPosition, int newPosition) {
        removeItem(originalPosition);
        insertItem(newPosition);
    }

    private static int binarySearchFirstEquals(int[] array, int count, int value) {
        int index = binarySearch(array, 0, count, value);
        if (index < 0) {
            return index ^ (-1);
        }
        int duplicateValue = array[index];
        while (index >= 0 && array[index] == duplicateValue) {
            index--;
        }
        return index + 1;
    }

    private static int binarySearchGreaterThan(int[] array, int count, int value) {
        int index = binarySearch(array, 0, count, value);
        if (index < 0) {
            return index ^ (-1);
        }
        int duplicateValue = array[index];
        while (index < count && array[index] == duplicateValue) {
            index++;
        }
        return index;
    }

    private static int binarySearch(int[] array, int startIndex, int endIndex, int value) {
        int lo = startIndex;
        int hi = endIndex - 1;
        while (lo <= hi) {
            int mid = (lo + hi) >>> 1;
            int midVal = array[mid];
            if (midVal < value) {
                lo = mid + 1;
            } else {
                if (midVal <= value) {
                    return mid;
                }
                hi = mid - 1;
            }
        }
        return lo ^ (-1);
    }
}

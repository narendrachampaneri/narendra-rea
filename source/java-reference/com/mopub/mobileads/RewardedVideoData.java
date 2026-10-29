package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Pair;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
class RewardedVideoData {

    @NonNull
    private final Map<String, CustomEventRewardedVideo> mAdUnitToCustomEventMap = new TreeMap();

    @NonNull
    private final Map<TwoPartKey, Set<String>> mCustomEventToMoPubIdMap = new HashMap();

    @NonNull
    private final Set<CustomEventRewardedVideo.CustomEventRewardedVideoListener> mAdNetworkListeners = new HashSet();

    RewardedVideoData() {
    }

    @Nullable
    CustomEventRewardedVideo getCustomEvent(@NonNull String moPubId) {
        return this.mAdUnitToCustomEventMap.get(moPubId);
    }

    @NonNull
    Set<String> getMoPubIdsForAdNetwork(@NonNull Class<? extends CustomEventRewardedVideo> customEventClass, @Nullable String adNetworkId) {
        if (adNetworkId == null) {
            Set<String> allIds = new HashSet<>();
            for (Map.Entry<TwoPartKey, Set<String>> entry : this.mCustomEventToMoPubIdMap.entrySet()) {
                Class<?> clazz = entry.getKey().customEventClass;
                if (customEventClass == clazz) {
                    allIds.addAll(entry.getValue());
                }
            }
            return allIds;
        }
        TwoPartKey key = new TwoPartKey(customEventClass, adNetworkId);
        return this.mCustomEventToMoPubIdMap.containsKey(key) ? this.mCustomEventToMoPubIdMap.get(key) : Collections.emptySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    void updateAdUnitCustomEventMapping(@NonNull String moPubId, @NonNull CustomEventRewardedVideo customEvent, @Nullable CustomEventRewardedVideo.CustomEventRewardedVideoListener listener, @NonNull String adNetworkId) {
        this.mAdUnitToCustomEventMap.put(moPubId, customEvent);
        this.mAdNetworkListeners.add(listener);
        associateCustomEventWithMoPubId(customEvent.getClass(), adNetworkId, moPubId);
    }

    void associateCustomEventWithMoPubId(@NonNull Class<? extends CustomEventRewardedVideo> customEventClass, @NonNull String adNetworkId, @NonNull String moPubId) {
        TwoPartKey newCustomEventMapping = new TwoPartKey(customEventClass, adNetworkId);
        Iterator<Map.Entry<TwoPartKey, Set<String>>> entryIterator = this.mCustomEventToMoPubIdMap.entrySet().iterator();
        while (entryIterator.hasNext()) {
            Map.Entry<TwoPartKey, Set<String>> entry = entryIterator.next();
            if (!entry.getKey().equals(newCustomEventMapping) && entry.getValue().contains(moPubId)) {
                entry.getValue().remove(moPubId);
                if (!entry.getValue().isEmpty()) {
                    break;
                }
                entryIterator.remove();
                break;
            }
        }
        Set<String> moPubIds = this.mCustomEventToMoPubIdMap.get(newCustomEventMapping);
        if (moPubIds == null) {
            moPubIds = new HashSet<>();
            this.mCustomEventToMoPubIdMap.put(newCustomEventMapping, moPubIds);
        }
        moPubIds.add(moPubId);
    }

    private static class TwoPartKey extends Pair<Class<? extends CustomEventRewardedVideo>, String> {

        @NonNull
        final String adNetworkId;

        @NonNull
        final Class<? extends CustomEventRewardedVideo> customEventClass;

        public TwoPartKey(@NonNull Class<? extends CustomEventRewardedVideo> customEventClass, @NonNull String adNetworkId) {
            super(customEventClass, adNetworkId);
            this.customEventClass = customEventClass;
            this.adNetworkId = adNetworkId;
        }
    }
}

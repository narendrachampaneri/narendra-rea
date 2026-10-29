package com.amazon.ags.jni.whispersync;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public enum MergePolicy {
    NONE(-1),
    HIGHEST(0),
    LOWEST(1),
    LATEST(2);

    private static Map<Integer, MergePolicy> mergePolicyMap = new HashMap();
    private final int value;

    static {
        MergePolicy[] arr$ = values();
        for (MergePolicy mergePolicy : arr$) {
            mergePolicyMap.put(Integer.valueOf(mergePolicy.getValue()), mergePolicy);
        }
    }

    public static MergePolicy mergePolicyFromInt(int mergePolicyNo) {
        MergePolicy mergePolicy = mergePolicyMap.get(Integer.valueOf(mergePolicyNo));
        if (mergePolicy == null) {
            return NONE;
        }
        return mergePolicy;
    }

    MergePolicy(int value) {
        this.value = value;
    }

    public int getValue() {
        return this.value;
    }
}

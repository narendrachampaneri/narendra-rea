package com.amazon.ags.constants;

/* JADX INFO: loaded from: classes2.dex */
public enum LeaderboardFilter {
    GLOBAL_ALL_TIME,
    GLOBAL_WEEK,
    GLOBAL_DAY,
    FRIENDS_ALL_TIME;

    private static final String FEATURE_NAME = "LB";
    private static final String TAG = "LB_" + LeaderboardFilter.class.getSimpleName();

    public static LeaderboardFilter fromOrdinal(int ord) {
        LeaderboardFilter[] values = values();
        if (ord >= values.length || ord < 0) {
            return null;
        }
        return values[ord];
    }
}

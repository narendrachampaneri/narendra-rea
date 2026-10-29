package com.amazon.ags.api;

import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
public enum AmazonGamesFeature {
    Leaderboards,
    Achievements,
    Whispersync,
    Progress;

    public static EnumSet<AmazonGamesFeature> all() {
        return EnumSet.allOf(AmazonGamesFeature.class);
    }
}

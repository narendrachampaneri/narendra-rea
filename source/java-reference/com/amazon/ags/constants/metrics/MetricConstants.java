package com.amazon.ags.constants.metrics;

/* JADX INFO: loaded from: classes2.dex */
public class MetricConstants {

    public enum MetricDecoratedValueAttributeKeys {
        COUNTRY_SUPPORT,
        PLAYER_ID,
        GAME_ID,
        PLATFORM,
        HIDDEN,
        PLAYING_ANONYMOUSLY,
        NATIVE_VERSION,
        JAVASCRIPT_VERSION,
        DEVICE_ID,
        DEVICE_MANUFACTURER,
        DEVICE_MODEL,
        SESSION_ID,
        SEQUENCE_ID,
        INTERNET_CONNECTION
    }

    public enum MetricIntegerValueAttributesKeys {
        PROGRESS,
        XP_EARNED,
        BADGE_NUM,
        NEW_LEVEL
    }

    public enum MetricRestrictedStringValueAttributeKeys {
        EVENT_NAME,
        PAGE_TYPE
    }

    public enum MetricStringValueAttributesKeys {
        COUNTRY,
        PAGE_ID,
        OBJECT_ID,
        SESSION_LENGTH,
        GAME_DATA_SIZE_KB,
        STATUS,
        TARGET_ID,
        XP_TYPE,
        REWARD_DEFINITION_ID,
        INSTALLER_PACKAGE_NAME,
        SCORE,
        IS_BACK_FILL,
        GAMERCARD_INLIBRARY
    }

    public enum PageTypes {
        IN_GAME,
        POPUP,
        GC_APP
    }

    private MetricConstants() {
    }
}

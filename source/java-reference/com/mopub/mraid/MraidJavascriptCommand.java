package com.mopub.mraid;

import android.support.annotation.NonNull;
import com.google.android.gms.appinvite.PreviewActivity;

/* JADX INFO: loaded from: classes.dex */
public enum MraidJavascriptCommand {
    CLOSE(PreviewActivity.ON_CLICK_LISTENER_CLOSE),
    EXPAND("expand") { // from class: com.mopub.mraid.MraidJavascriptCommand.1
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean requiresClick(@NonNull PlacementType placementType) {
            return placementType == PlacementType.INLINE;
        }
    },
    USE_CUSTOM_CLOSE("usecustomclose"),
    OPEN("open") { // from class: com.mopub.mraid.MraidJavascriptCommand.2
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean requiresClick(@NonNull PlacementType placementType) {
            return true;
        }
    },
    RESIZE("resize") { // from class: com.mopub.mraid.MraidJavascriptCommand.3
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean requiresClick(@NonNull PlacementType placementType) {
            return true;
        }
    },
    SET_ORIENTATION_PROPERTIES("setOrientationProperties"),
    PLAY_VIDEO("playVideo") { // from class: com.mopub.mraid.MraidJavascriptCommand.4
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean requiresClick(@NonNull PlacementType placementType) {
            return placementType == PlacementType.INLINE;
        }
    },
    STORE_PICTURE("storePicture") { // from class: com.mopub.mraid.MraidJavascriptCommand.5
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean requiresClick(@NonNull PlacementType placementType) {
            return true;
        }
    },
    CREATE_CALENDAR_EVENT("createCalendarEvent") { // from class: com.mopub.mraid.MraidJavascriptCommand.6
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean requiresClick(@NonNull PlacementType placementType) {
            return true;
        }
    },
    UNSPECIFIED("");


    @NonNull
    private final String mJavascriptString;

    MraidJavascriptCommand(String javascriptString) {
        this.mJavascriptString = javascriptString;
    }

    static MraidJavascriptCommand fromJavascriptString(@NonNull String string) {
        for (MraidJavascriptCommand command : values()) {
            if (command.mJavascriptString.equals(string)) {
                return command;
            }
        }
        return UNSPECIFIED;
    }

    String toJavascriptString() {
        return this.mJavascriptString;
    }

    boolean requiresClick(@NonNull PlacementType placementType) {
        return false;
    }
}

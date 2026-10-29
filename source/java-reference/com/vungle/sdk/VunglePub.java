package com.vungle.sdk;

import android.content.Context;
import com.vungle.publisher.AdConfig;
import com.vungle.publisher.Demographic;
import com.vungle.publisher.Orientation;
import com.vungle.publisher.VunglePubBase;
import com.vungle.publisher.inject.Injector;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class VunglePub {
    private static final VunglePubBase a = com.vungle.publisher.VunglePub.getInstance();
    private static boolean b;
    private static boolean c;
    private static boolean d;

    /* JADX INFO: compiled from: vungle */
    public interface EventListener {
        void onVungleAdEnd();

        void onVungleAdStart();

        void onVungleView(double d, double d2);
    }

    private VunglePub() {
    }

    public static String getVersionString() {
        return VunglePubBase.VERSION;
    }

    public static void init(Context context, String vungleAppId) {
        init(context, vungleAppId, 0, -1);
    }

    public static void init(Context context, String vungleAppId, int age, int gender) {
        if (!b) {
            Injector.getInstance().a(VungleAdvert.class);
        }
        a.init(context, vungleAppId);
        if (!b) {
            boolean z = age > 0;
            Demographic.Gender genderA = Gender.a(gender);
            boolean z2 = genderA != null;
            if (z || z2) {
                Demographic demographic = a.getDemographic();
                if (z) {
                    demographic.setAge(Integer.valueOf(age));
                }
                if (z2) {
                    demographic.setGender(genderA);
                }
                b = true;
            }
        }
    }

    public static void setAutoRotation(boolean shouldAutoRotate) {
        AdConfig globalAdConfig = a.getGlobalAdConfig();
        if (globalAdConfig != null) {
            globalAdConfig.setOrientation(shouldAutoRotate ? Orientation.autoRotate : Orientation.matchVideo);
        }
    }

    public static void setBackButtonEnabled(boolean isBackButtonEnabled) {
        c = isBackButtonEnabled;
    }

    public static void setEventListener(EventListener eventListener) {
        if (eventListener != null) {
            a.setEventListeners(new a(eventListener));
        }
    }

    public static void setIncentivizedBackButtonEnabled(boolean isBackButtonEnabled) {
        d = isBackButtonEnabled;
    }

    public static boolean getSoundEnabled() {
        AdConfig globalAdConfig = a.getGlobalAdConfig();
        if (globalAdConfig == null) {
            return false;
        }
        return globalAdConfig.isSoundEnabled();
    }

    public static void setSoundEnabled(boolean isSoundEnabled) {
        AdConfig globalAdConfig = a.getGlobalAdConfig();
        if (globalAdConfig != null) {
            globalAdConfig.setSoundEnabled(isSoundEnabled);
        }
    }

    public static boolean isVideoAvailable() {
        return isVideoAvailable(false);
    }

    public static boolean isVideoAvailable(boolean z) {
        return a.isAdPlayable();
    }

    public static boolean displayAdvert() {
        boolean zIsVideoAvailable = isVideoAvailable();
        AdConfig adConfig = new AdConfig();
        adConfig.setBackButtonImmediatelyEnabled(c);
        a.playAd(adConfig);
        return zIsVideoAvailable;
    }

    public static boolean displayIncentivizedAdvert(boolean showCloseButton) {
        return displayIncentivizedAdvert(null, showCloseButton);
    }

    public static boolean displayIncentivizedAdvert(String str, boolean z) {
        boolean zIsVideoAvailable = isVideoAvailable();
        AdConfig adConfig = new AdConfig();
        adConfig.setBackButtonImmediatelyEnabled(d);
        a.playAd(adConfig);
        return zIsVideoAvailable;
    }

    public static void onPause() {
        a.onPause();
    }

    public static void onResume() {
        a.onResume();
    }

    /* JADX INFO: compiled from: vungle */
    static class a implements com.vungle.publisher.EventListener {
        private EventListener a;

        a(EventListener eventListener) {
            this.a = eventListener;
        }

        @Override // com.vungle.publisher.EventListener
        public final void onAdEnd(boolean z) {
            this.a.onVungleAdEnd();
        }

        @Override // com.vungle.publisher.EventListener
        public final void onAdStart() {
            this.a.onVungleAdStart();
        }

        @Override // com.vungle.publisher.EventListener
        public final void onAdUnavailable(String str) {
        }

        @Override // com.vungle.publisher.EventListener
        public final void onAdPlayableChanged(boolean z) {
        }

        @Override // com.vungle.publisher.EventListener
        public final void onVideoView(boolean z, int watchedMillis, int videoMillis) {
            this.a.onVungleView(((double) watchedMillis) / 1000.0d, ((double) videoMillis) / 1000.0d);
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static final class Gender {
        public static final int FEMALE = 1;
        public static final int MALE = 0;
        public static final int UNKNOWN = -1;

        static Demographic.Gender a(int i) {
            switch (i) {
                case 0:
                    return Demographic.Gender.male;
                case 1:
                    return Demographic.Gender.female;
                default:
                    return null;
            }
        }

        public static String toString(int gender) {
            switch (gender) {
                case 0:
                    return "male";
                case 1:
                    return "female";
                default:
                    return "unknown";
            }
        }

        private Gender() {
        }
    }
}

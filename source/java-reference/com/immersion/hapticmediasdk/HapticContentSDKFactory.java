package com.immersion.hapticmediasdk;

import android.content.Context;
import com.immersion.content.EndpointWarp;
import com.immersion.hapticmediasdk.utils.Log;

/* JADX INFO: loaded from: classes.dex */
public class HapticContentSDKFactory {
    private static final String a = "HapticContentSDKFactory";

    /* JADX INFO: renamed from: b04460446044604460446ц, reason: contains not printable characters */
    public static int f25b04460446044604460446 = 19;

    /* JADX INFO: renamed from: b0446цццц0446, reason: contains not printable characters */
    public static int f26b04460446 = 2;

    /* JADX INFO: renamed from: bццццц0446, reason: contains not printable characters */
    public static int f27b0446 = 1;

    public HapticContentSDKFactory() {
        int i = f25b04460446044604460446;
        switch ((i * (f27b0446 + i)) % f26b04460446) {
            case 0:
                break;
            default:
                f25b04460446044604460446 = m23b04460446();
                f27b0446 = m23b04460446();
                break;
        }
    }

    public static HapticContentSDK GetNewSDKInstance(int i, Context context) throws Exception {
        if (!EndpointWarp.loadSharedLibrary()) {
            return null;
        }
        if (context == null) {
            Log.e(a, "Failed to create a Haptic Content SDK instance. invalid context: null");
            return null;
        }
        switch (i) {
            case 0:
                MediaPlaybackSDK mediaPlaybackSDK = new MediaPlaybackSDK(context);
                int iM19b0411041104110411 = mediaPlaybackSDK.m19b0411041104110411();
                if (iM19b0411041104110411 == 0) {
                    Log.i(a, "Haptic Content SDK instance was created successfully");
                    return mediaPlaybackSDK;
                }
                StringBuilder sb = new StringBuilder();
                int i2 = f25b04460446044604460446;
                switch ((i2 * (f27b0446 + i2)) % f26b04460446) {
                    case 0:
                        break;
                    default:
                        f25b04460446044604460446 = 42;
                        f27b0446 = 92;
                        break;
                }
                Log.e(a, sb.append("Failed to create Haptic Content SDK instance. error=").append(iM19b0411041104110411).toString());
                return null;
            default:
                while (true) {
                    switch (1) {
                        case 0:
                            break;
                        case 1:
                            break;
                        default:
                            while (true) {
                                switch (1) {
                                    case 0:
                                        break;
                                    case 1:
                                        break;
                                    default:
                                        break;
                                }
                            }
                            break;
                    }
                }
                Log.e(a, "Failed to create a Haptic Content SDK instance. Invalid mode");
                return null;
        }
    }

    /* JADX INFO: renamed from: bц0446ццц0446, reason: contains not printable characters */
    public static int m23b04460446() {
        return 96;
    }
}

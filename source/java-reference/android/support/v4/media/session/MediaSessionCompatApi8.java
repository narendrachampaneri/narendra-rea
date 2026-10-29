package android.support.v4.media.session;

import android.content.ComponentName;
import android.content.Context;
import android.media.AudioManager;
import com.google.android.exoplayer.util.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
class MediaSessionCompatApi8 {
    MediaSessionCompatApi8() {
    }

    public static void registerMediaButtonEventReceiver(Context context, ComponentName mbr) {
        AudioManager am = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        am.registerMediaButtonEventReceiver(mbr);
    }

    public static void unregisterMediaButtonEventReceiver(Context context, ComponentName mbr) {
        AudioManager am = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        am.unregisterMediaButtonEventReceiver(mbr);
    }
}

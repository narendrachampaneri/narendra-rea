package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.gms.drive.DriveFile;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public class BaseVideoPlayerActivity extends Activity implements TraceFieldInterface {
    static final String VIDEO_CLASS_EXTRAS_KEY = "video_view_class_name";
    public static final String VIDEO_URL = "video_url";

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }

    public static void startMraid(Context context, String videoUrl) {
        Intent intentVideoPlayerActivity = createIntentMraid(context, videoUrl);
        try {
            context.startActivity(intentVideoPlayerActivity);
        } catch (ActivityNotFoundException e) {
            MoPubLog.d("Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    static Intent createIntentMraid(Context context, String videoUrl) {
        Intent intentVideoPlayerActivity = new Intent(context, (Class<?>) MraidVideoPlayerActivity.class);
        intentVideoPlayerActivity.setFlags(DriveFile.MODE_READ_ONLY);
        intentVideoPlayerActivity.putExtra(VIDEO_CLASS_EXTRAS_KEY, "mraid");
        intentVideoPlayerActivity.putExtra(VIDEO_URL, videoUrl);
        return intentVideoPlayerActivity;
    }

    static void startVast(Context context, VastVideoConfig vastVideoConfig, long broadcastIdentifier) {
        Intent intentVideoPlayerActivity = createIntentVast(context, vastVideoConfig, broadcastIdentifier);
        try {
            context.startActivity(intentVideoPlayerActivity);
        } catch (ActivityNotFoundException e) {
            MoPubLog.d("Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    static Intent createIntentVast(Context context, VastVideoConfig vastVideoConfig, long broadcastIdentifier) {
        Intent intentVideoPlayerActivity = new Intent(context, (Class<?>) MraidVideoPlayerActivity.class);
        intentVideoPlayerActivity.setFlags(DriveFile.MODE_READ_ONLY);
        intentVideoPlayerActivity.putExtra(VIDEO_CLASS_EXTRAS_KEY, "vast");
        intentVideoPlayerActivity.putExtra("vast_video_config", vastVideoConfig);
        intentVideoPlayerActivity.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, broadcastIdentifier);
        return intentVideoPlayerActivity;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        AudioManager am = (AudioManager) getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (am != null) {
            am.abandonAudioFocus(null);
        }
    }
}

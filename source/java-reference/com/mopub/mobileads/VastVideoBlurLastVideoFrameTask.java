package com.mopub.mobileads;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.ImageView;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ImageUtils;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceMachine;

/* JADX INFO: loaded from: classes.dex */
public class VastVideoBlurLastVideoFrameTask extends AsyncTask<String, Void, Boolean> implements TraceFieldInterface {
    private static final int MICROSECONDS_PER_MILLISECOND = 1000;
    private static final int OFFSET_IN_MICROSECONDS = 200000;
    public Trace _nr_trace;

    @Nullable
    private Bitmap mBlurredLastVideoFrame;

    @NonNull
    private final ImageView mBlurredLastVideoFrameImageView;

    @Nullable
    private Bitmap mLastVideoFrame;

    @NonNull
    private final MediaMetadataRetriever mMediaMetadataRetriever;
    private int mVideoDuration;

    @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
    public void _nr_setTrace(Trace trace) {
        try {
            this._nr_trace = trace;
        } catch (Exception e) {
        }
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ Boolean doInBackground(String[] strArr) {
        try {
            TraceMachine.enterMethod(this._nr_trace, "VastVideoBlurLastVideoFrameTask#doInBackground", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "VastVideoBlurLastVideoFrameTask#doInBackground", null);
        }
        Boolean boolDoInBackground2 = doInBackground2(strArr);
        TraceMachine.exitMethod();
        TraceMachine.unloadTraceContext(this);
        return boolDoInBackground2;
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ void onPostExecute(Boolean bool) {
        try {
            TraceMachine.enterMethod(this._nr_trace, "VastVideoBlurLastVideoFrameTask#onPostExecute", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "VastVideoBlurLastVideoFrameTask#onPostExecute", null);
        }
        onPostExecute2(bool);
        TraceMachine.exitMethod();
    }

    public VastVideoBlurLastVideoFrameTask(@NonNull MediaMetadataRetriever mediaMetadataRetriever, @NonNull ImageView blurredLastVideoFrameImageView, int videoDuration) {
        this.mMediaMetadataRetriever = mediaMetadataRetriever;
        this.mBlurredLastVideoFrameImageView = blurredLastVideoFrameImageView;
        this.mVideoDuration = videoDuration;
    }

    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    protected Boolean doInBackground2(String... videoPaths) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 10) {
            if (videoPaths == null || videoPaths.length == 0 || videoPaths[0] == null) {
                return false;
            }
            try {
                String videoPath = videoPaths[0];
                this.mMediaMetadataRetriever.setDataSource(videoPath);
                this.mLastVideoFrame = this.mMediaMetadataRetriever.getFrameAtTime((this.mVideoDuration * 1000) - OFFSET_IN_MICROSECONDS, 3);
                if (this.mLastVideoFrame == null) {
                    z = false;
                } else {
                    this.mBlurredLastVideoFrame = ImageUtils.applyFastGaussianBlurToBitmap(this.mLastVideoFrame, 4);
                    z = true;
                }
                return z;
            } catch (Exception e) {
                MoPubLog.d("Failed to blur last video frame", e);
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
    protected void onPostExecute2(Boolean success) {
        if (isCancelled()) {
            onCancelled();
        } else if (success != null && success.booleanValue()) {
            this.mBlurredLastVideoFrameImageView.setImageBitmap(this.mBlurredLastVideoFrame);
            ImageUtils.setImageViewAlpha(this.mBlurredLastVideoFrameImageView, 128);
        }
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        MoPubLog.d("VastVideoBlurLastVideoFrameTask was cancelled.");
    }

    @VisibleForTesting
    @Deprecated
    Bitmap getBlurredLastVideoFrame() {
        return this.mBlurredLastVideoFrame;
    }
}

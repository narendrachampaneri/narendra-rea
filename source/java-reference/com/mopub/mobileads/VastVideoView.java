package com.mopub.mobileads;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.os.AsyncTask;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.ImageView;
import android.widget.VideoView;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Streams;
import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes.dex */
public class VastVideoView extends VideoView {
    private static final int MAX_VIDEO_RETRIES = 1;
    private static final int VIDEO_VIEW_FILE_PERMISSION_ERROR = Integer.MIN_VALUE;

    @Nullable
    private VastVideoBlurLastVideoFrameTask mBlurLastVideoFrameTask;

    @Nullable
    private MediaMetadataRetriever mMediaMetadataRetriever;
    private int mVideoRetries;

    public VastVideoView(@NonNull Context context) {
        super(context);
        Preconditions.checkNotNull(context, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        this.mMediaMetadataRetriever = createMediaMetadataRetriever();
    }

    public void prepareBlurredLastVideoFrame(@NonNull ImageView blurredLastVideoFrameImageView, @NonNull String diskMediaFileUrl) {
        if (this.mMediaMetadataRetriever != null) {
            this.mBlurLastVideoFrameTask = new VastVideoBlurLastVideoFrameTask(this.mMediaMetadataRetriever, blurredLastVideoFrameImageView, getDuration());
            try {
                AsyncTasks.safeExecuteOnExecutor(this.mBlurLastVideoFrameTask, diskMediaFileUrl);
            } catch (Exception e) {
                MoPubLog.d("Failed to blur last video frame", e);
            }
        }
    }

    public void onDestroy() {
        if (this.mBlurLastVideoFrameTask != null && this.mBlurLastVideoFrameTask.getStatus() != AsyncTask.Status.FINISHED) {
            this.mBlurLastVideoFrameTask.cancel(true);
        }
    }

    boolean retryMediaPlayer(MediaPlayer mediaPlayer, int what, int extra, @NonNull String diskMediaFileUrl) throws Throwable {
        if (Build.VERSION.SDK_INT >= 16 || what != 1 || extra != Integer.MIN_VALUE || this.mVideoRetries >= 1) {
            return false;
        }
        FileInputStream inputStream = null;
        try {
            mediaPlayer.reset();
            File file = new File(diskMediaFileUrl);
            FileInputStream inputStream2 = new FileInputStream(file);
            try {
                mediaPlayer.setDataSource(inputStream2.getFD());
                mediaPlayer.prepareAsync();
                start();
                Streams.closeStream(inputStream2);
                this.mVideoRetries++;
                return true;
            } catch (Exception e) {
                inputStream = inputStream2;
                Streams.closeStream(inputStream);
                this.mVideoRetries++;
                return false;
            } catch (Throwable th) {
                th = th;
                inputStream = inputStream2;
                Streams.closeStream(inputStream);
                this.mVideoRetries++;
                throw th;
            }
        } catch (Exception e2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void onResume() {
        this.mVideoRetries = 0;
    }

    @Nullable
    @VisibleForTesting
    MediaMetadataRetriever createMediaMetadataRetriever() {
        if (Build.VERSION.SDK_INT >= 10) {
            return new MediaMetadataRetriever();
        }
        return null;
    }

    @VisibleForTesting
    @Deprecated
    void setMediaMetadataRetriever(@NonNull MediaMetadataRetriever mediaMetadataRetriever) {
        this.mMediaMetadataRetriever = mediaMetadataRetriever;
    }

    @Nullable
    @VisibleForTesting
    @Deprecated
    VastVideoBlurLastVideoFrameTask getBlurLastVideoFrameTask() {
        return this.mBlurLastVideoFrameTask;
    }

    @VisibleForTesting
    @Deprecated
    void setBlurLastVideoFrameTask(@NonNull VastVideoBlurLastVideoFrameTask blurLastVideoFrameTask) {
        this.mBlurLastVideoFrameTask = blurLastVideoFrameTask;
    }

    @VisibleForTesting
    @Deprecated
    int getVideoRetries() {
        return this.mVideoRetries;
    }
}

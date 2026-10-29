package com.mopub.mobileads;

import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.CacheService;
import com.mopub.common.MoPubHttpUrlConnection;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Streams;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayDeque;
import java.util.Deque;

/* JADX INFO: loaded from: classes.dex */
public class VideoDownloader {
    private static final int MAX_VIDEO_SIZE = 26214400;
    private static final Deque<WeakReference<VideoDownloaderTask>> sDownloaderTasks = new ArrayDeque();

    interface VideoDownloaderListener {
        void onComplete(boolean z);
    }

    private VideoDownloader() {
    }

    public static void cache(@Nullable String url, @NonNull VideoDownloaderListener listener) {
        Preconditions.checkNotNull(listener);
        if (url == null) {
            MoPubLog.d("VideoDownloader attempted to cache video with null url.");
            listener.onComplete(false);
        } else {
            VideoDownloaderTask videoDownloaderTask = new VideoDownloaderTask(listener);
            try {
                AsyncTasks.safeExecuteOnExecutor(videoDownloaderTask, url);
            } catch (Exception e) {
                listener.onComplete(false);
            }
        }
    }

    public static void cancelAllDownloaderTasks() {
        for (WeakReference<VideoDownloaderTask> weakDownloaderTask : sDownloaderTasks) {
            cancelOneTask(weakDownloaderTask);
        }
        sDownloaderTasks.clear();
    }

    public static void cancelLastDownloadTask() {
        if (!sDownloaderTasks.isEmpty()) {
            cancelOneTask(sDownloaderTasks.peekLast());
            sDownloaderTasks.removeLast();
        }
    }

    private static boolean cancelOneTask(@Nullable WeakReference<VideoDownloaderTask> weakDownloaderTask) {
        VideoDownloaderTask downloaderTask;
        if (weakDownloaderTask == null || (downloaderTask = weakDownloaderTask.get()) == null) {
            return false;
        }
        return downloaderTask.cancel(true);
    }

    @VisibleForTesting
    static class VideoDownloaderTask extends AsyncTask<String, Void, Boolean> implements TraceFieldInterface {
        public Trace _nr_trace;

        @NonNull
        private final VideoDownloaderListener mListener;

        @NonNull
        private final WeakReference<VideoDownloaderTask> mWeakSelf = new WeakReference<>(this);

        @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
        public void _nr_setTrace(Trace trace) {
            try {
                this._nr_trace = trace;
            } catch (Exception e) {
            }
        }

        @Override // android.os.AsyncTask
        protected /* bridge */ /* synthetic */ Boolean doInBackground(String[] strArr) throws Throwable {
            try {
                TraceMachine.enterMethod(this._nr_trace, "VideoDownloader$VideoDownloaderTask#doInBackground", null);
            } catch (NoSuchFieldError e) {
                TraceMachine.enterMethod(null, "VideoDownloader$VideoDownloaderTask#doInBackground", null);
            }
            Boolean boolDoInBackground2 = doInBackground2(strArr);
            TraceMachine.exitMethod();
            TraceMachine.unloadTraceContext(this);
            return boolDoInBackground2;
        }

        @Override // android.os.AsyncTask
        protected /* bridge */ /* synthetic */ void onPostExecute(Boolean bool) {
            try {
                TraceMachine.enterMethod(this._nr_trace, "VideoDownloader$VideoDownloaderTask#onPostExecute", null);
            } catch (NoSuchFieldError e) {
                TraceMachine.enterMethod(null, "VideoDownloader$VideoDownloaderTask#onPostExecute", null);
            }
            onPostExecute2(bool);
            TraceMachine.exitMethod();
        }

        @VisibleForTesting
        VideoDownloaderTask(@NonNull VideoDownloaderListener listener) {
            this.mListener = listener;
            VideoDownloader.sDownloaderTasks.add(this.mWeakSelf);
        }

        /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
        protected Boolean doInBackground2(String... params) throws Throwable {
            boolean zValueOf;
            if (params == null || params.length == 0 || params[0] == null) {
                MoPubLog.d("VideoDownloader task tried to execute null or empty url.");
                return false;
            }
            String videoUrl = params[0];
            HttpURLConnection urlConnection = null;
            InputStream inputStream = null;
            try {
                try {
                    urlConnection = MoPubHttpUrlConnection.getHttpUrlConnection(videoUrl);
                    InputStream inputStream2 = new BufferedInputStream(urlConnection.getInputStream());
                    try {
                        int statusCode = urlConnection.getResponseCode();
                        if (statusCode < 200 || statusCode >= 300) {
                            MoPubLog.d("VideoDownloader encountered unexpected statusCode: " + statusCode);
                            zValueOf = false;
                            Streams.closeStream(inputStream2);
                            if (urlConnection != null) {
                                urlConnection.disconnect();
                            }
                        } else {
                            int contentLength = urlConnection.getContentLength();
                            if (contentLength > VideoDownloader.MAX_VIDEO_SIZE) {
                                MoPubLog.d(String.format("VideoDownloader encountered video larger than disk cap. (%d bytes / %d maximum).", Integer.valueOf(contentLength), Integer.valueOf(VideoDownloader.MAX_VIDEO_SIZE)));
                                zValueOf = false;
                                Streams.closeStream(inputStream2);
                                if (urlConnection != null) {
                                    urlConnection.disconnect();
                                }
                            } else {
                                boolean diskPutResult = CacheService.putToDiskCache(videoUrl, inputStream2);
                                zValueOf = Boolean.valueOf(diskPutResult);
                                Streams.closeStream(inputStream2);
                                if (urlConnection != null) {
                                    urlConnection.disconnect();
                                }
                            }
                        }
                        return zValueOf;
                    } catch (Exception e) {
                        e = e;
                        inputStream = inputStream2;
                        MoPubLog.d("VideoDownloader task threw an internal exception.", e);
                        Streams.closeStream(inputStream);
                        if (urlConnection == null) {
                            return false;
                        }
                        urlConnection.disconnect();
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        Streams.closeStream(inputStream);
                        if (urlConnection != null) {
                            urlConnection.disconnect();
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
        protected void onPostExecute2(Boolean success) {
            if (!isCancelled()) {
                VideoDownloader.sDownloaderTasks.remove(this.mWeakSelf);
                if (success == null) {
                    this.mListener.onComplete(false);
                    return;
                } else {
                    this.mListener.onComplete(success.booleanValue());
                    return;
                }
            }
            onCancelled();
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            MoPubLog.d("VideoDownloader task was cancelled.");
            VideoDownloader.sDownloaderTasks.remove(this.mWeakSelf);
            this.mListener.onComplete(false);
        }
    }

    @VisibleForTesting
    @Deprecated
    public static Deque<WeakReference<VideoDownloaderTask>> getDownloaderTasks() {
        return sDownloaderTasks;
    }

    @VisibleForTesting
    @Deprecated
    public static void clearDownloaderTasks() {
        sDownloaderTasks.clear();
    }
}

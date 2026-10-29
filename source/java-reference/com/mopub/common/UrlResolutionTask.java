package com.mopub.common;

import android.net.Uri;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.util.AsyncTasks;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceMachine;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public class UrlResolutionTask extends AsyncTask<String, Void, String> implements TraceFieldInterface {
    private static final int REDIRECT_LIMIT = 10;
    public Trace _nr_trace;

    @NonNull
    private final UrlResolutionListener mListener;

    interface UrlResolutionListener {
        void onFailure(@NonNull String str, @Nullable Throwable th);

        void onSuccess(@NonNull String str);
    }

    @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
    public void _nr_setTrace(Trace trace) {
        try {
            this._nr_trace = trace;
        } catch (Exception e) {
        }
    }

    @Override // android.os.AsyncTask
    @Nullable
    protected /* bridge */ /* synthetic */ String doInBackground(@Nullable String[] strArr) {
        try {
            TraceMachine.enterMethod(this._nr_trace, "UrlResolutionTask#doInBackground", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "UrlResolutionTask#doInBackground", null);
        }
        String strDoInBackground2 = doInBackground2(strArr);
        TraceMachine.exitMethod();
        TraceMachine.unloadTraceContext(this);
        return strDoInBackground2;
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ void onPostExecute(@Nullable String str) {
        try {
            TraceMachine.enterMethod(this._nr_trace, "UrlResolutionTask#onPostExecute", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "UrlResolutionTask#onPostExecute", null);
        }
        onPostExecute2(str);
        TraceMachine.exitMethod();
    }

    public static void getResolvedUrl(@NonNull String urlString, @NonNull UrlResolutionListener listener) {
        UrlResolutionTask urlResolutionTask = new UrlResolutionTask(listener);
        try {
            AsyncTasks.safeExecuteOnExecutor(urlResolutionTask, urlString);
        } catch (Exception e) {
            listener.onFailure("Failed to resolve url", e);
        }
    }

    UrlResolutionTask(@NonNull UrlResolutionListener listener) {
        this.mListener = listener;
    }

    @Nullable
    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    protected String doInBackground2(@Nullable String... urls) {
        if (urls == null || urls.length == 0) {
            return null;
        }
        String previousUrl = null;
        try {
            String locationUrl = urls[0];
            for (int redirectCount = 0; locationUrl != null && redirectCount < 10; redirectCount++) {
                if (UrlAction.OPEN_IN_APP_BROWSER.shouldTryHandlingUrl(Uri.parse(locationUrl))) {
                    previousUrl = locationUrl;
                    locationUrl = getRedirectLocation(locationUrl);
                } else {
                    return locationUrl;
                }
            }
            String locationUrl2 = previousUrl;
            return locationUrl2;
        } catch (IOException e) {
            return null;
        }
    }

    @Nullable
    private String getRedirectLocation(@NonNull String urlString) throws IOException {
        String headerField;
        URL url = new URL(urlString);
        HttpURLConnection httpUrlConnection = null;
        try {
            httpUrlConnection = (HttpURLConnection) HttpInstrumentation.openConnection(url.openConnection());
            httpUrlConnection.setInstanceFollowRedirects(false);
            int responseCode = httpUrlConnection.getResponseCode();
            if (responseCode >= 300 && responseCode < 400) {
                headerField = httpUrlConnection.getHeaderField(HttpRequest.HEADER_LOCATION);
            } else {
                headerField = null;
            }
            return headerField;
        } finally {
            if (httpUrlConnection != null) {
                httpUrlConnection.disconnect();
            }
        }
    }

    /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
    protected void onPostExecute2(@Nullable String resolvedUrl) {
        super.onPostExecute(resolvedUrl);
        if (isCancelled() || resolvedUrl == null) {
            onCancelled();
        } else {
            this.mListener.onSuccess(resolvedUrl);
        }
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        super.onCancelled();
        this.mListener.onFailure("Task for resolving url was cancelled", null);
    }
}

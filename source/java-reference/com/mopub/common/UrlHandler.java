package com.mopub.common;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.logging.MoPubLog;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
public class UrlHandler {
    private static final ResultActions EMPTY_CLICK_LISTENER = new ResultActions() { // from class: com.mopub.common.UrlHandler.1
        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(@NonNull String url, @NonNull UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(@NonNull String url, @NonNull UrlAction lastFailedUrlAction) {
        }
    };
    private static final MoPubSchemeListener EMPTY_MOPUB_SCHEME_LISTENER = new MoPubSchemeListener() { // from class: com.mopub.common.UrlHandler.2
        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFinishLoad() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onClose() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFailLoad() {
        }
    };
    private boolean mAlreadySucceeded;

    @NonNull
    private MoPubSchemeListener mMoPubSchemeListener;

    @NonNull
    private ResultActions mResultActions;
    private boolean mSkipShowMoPubBrowser;

    @NonNull
    private EnumSet<UrlAction> mSupportedUrlActions;
    private boolean mTaskPending;

    public interface MoPubSchemeListener {
        void onClose();

        void onFailLoad();

        void onFinishLoad();
    }

    public interface ResultActions {
        void urlHandlingFailed(@NonNull String str, @NonNull UrlAction urlAction);

        void urlHandlingSucceeded(@NonNull String str, @NonNull UrlAction urlAction);
    }

    public static class Builder {

        @NonNull
        private EnumSet<UrlAction> supportedUrlActions = EnumSet.of(UrlAction.NOOP);

        @NonNull
        private ResultActions resultActions = UrlHandler.EMPTY_CLICK_LISTENER;

        @NonNull
        private MoPubSchemeListener moPubSchemeListener = UrlHandler.EMPTY_MOPUB_SCHEME_LISTENER;
        private boolean skipShowMoPubBrowser = false;

        public Builder withSupportedUrlActions(@NonNull UrlAction first, @Nullable UrlAction... others) {
            this.supportedUrlActions = EnumSet.of(first, others);
            return this;
        }

        public Builder withSupportedUrlActions(@NonNull EnumSet<UrlAction> supportedUrlActions) {
            this.supportedUrlActions = EnumSet.copyOf((EnumSet) supportedUrlActions);
            return this;
        }

        public Builder withResultActions(@NonNull ResultActions resultActions) {
            this.resultActions = resultActions;
            return this;
        }

        public Builder withMoPubSchemeListener(@NonNull MoPubSchemeListener moPubSchemeListener) {
            this.moPubSchemeListener = moPubSchemeListener;
            return this;
        }

        public Builder withoutMoPubBrowser() {
            this.skipShowMoPubBrowser = true;
            return this;
        }

        public UrlHandler build() {
            return new UrlHandler(this.supportedUrlActions, this.resultActions, this.moPubSchemeListener, this.skipShowMoPubBrowser);
        }
    }

    private UrlHandler(@NonNull EnumSet<UrlAction> supportedUrlActions, @NonNull ResultActions resultActions, @NonNull MoPubSchemeListener moPubSchemeListener, boolean skipShowMoPubBrowser) {
        this.mSupportedUrlActions = EnumSet.copyOf((EnumSet) supportedUrlActions);
        this.mResultActions = resultActions;
        this.mMoPubSchemeListener = moPubSchemeListener;
        this.mSkipShowMoPubBrowser = skipShowMoPubBrowser;
        this.mAlreadySucceeded = false;
        this.mTaskPending = false;
    }

    @NonNull
    EnumSet<UrlAction> getSupportedUrlActions() {
        return EnumSet.copyOf((EnumSet) this.mSupportedUrlActions);
    }

    @NonNull
    ResultActions getResultActions() {
        return this.mResultActions;
    }

    @NonNull
    MoPubSchemeListener getMoPubSchemeListener() {
        return this.mMoPubSchemeListener;
    }

    boolean shouldSkipShowMoPubBrowser() {
        return this.mSkipShowMoPubBrowser;
    }

    public void handleUrl(@NonNull Context context, @NonNull String destinationUrl) {
        Preconditions.checkNotNull(context);
        handleUrl(context, destinationUrl, true);
    }

    public void handleUrl(@NonNull Context context, @NonNull String destinationUrl, boolean fromUserInteraction) {
        Preconditions.checkNotNull(context);
        handleUrl(context, destinationUrl, fromUserInteraction, null);
    }

    public void handleUrl(@NonNull final Context context, @NonNull final String destinationUrl, final boolean fromUserInteraction, @Nullable final Iterable<String> trackingUrls) {
        Preconditions.checkNotNull(context);
        if (TextUtils.isEmpty(destinationUrl)) {
            failUrlHandling(destinationUrl, null, "Attempted to handle empty url.", null);
            return;
        }
        UrlResolutionTask.UrlResolutionListener urlResolutionListener = new UrlResolutionTask.UrlResolutionListener() { // from class: com.mopub.common.UrlHandler.3
            @Override // com.mopub.common.UrlResolutionTask.UrlResolutionListener
            public void onSuccess(@NonNull String resolvedUrl) {
                UrlHandler.this.mTaskPending = false;
                UrlHandler.this.handleResolvedUrl(context, resolvedUrl, fromUserInteraction, trackingUrls);
            }

            @Override // com.mopub.common.UrlResolutionTask.UrlResolutionListener
            public void onFailure(@NonNull String message, @Nullable Throwable throwable) {
                UrlHandler.this.mTaskPending = false;
                UrlHandler.this.failUrlHandling(destinationUrl, null, message, throwable);
            }
        };
        UrlResolutionTask.getResolvedUrl(destinationUrl, urlResolutionListener);
        this.mTaskPending = true;
    }

    public boolean handleResolvedUrl(@NonNull Context context, @NonNull String url, boolean fromUserInteraction, @Nullable Iterable<String> trackingUrls) {
        if (TextUtils.isEmpty(url)) {
            failUrlHandling(url, null, "Attempted to handle empty url.", null);
            return false;
        }
        UrlAction lastFailedUrlAction = UrlAction.NOOP;
        Uri destinationUri = Uri.parse(url);
        for (UrlAction urlAction : this.mSupportedUrlActions) {
            if (urlAction.shouldTryHandlingUrl(destinationUri)) {
                try {
                    urlAction.handleUrl(this, context, destinationUri, fromUserInteraction);
                    if (!this.mAlreadySucceeded && !this.mTaskPending && !UrlAction.IGNORE_ABOUT_SCHEME.equals(urlAction) && !UrlAction.HANDLE_MOPUB_SCHEME.equals(urlAction)) {
                        TrackingRequest.makeTrackingHttpRequest(trackingUrls, context, BaseEvent.Name.CLICK_REQUEST);
                        this.mResultActions.urlHandlingSucceeded(destinationUri.toString(), urlAction);
                        this.mAlreadySucceeded = true;
                    }
                    return true;
                } catch (IntentNotResolvableException e) {
                    MoPubLog.d(e.getMessage(), e);
                    lastFailedUrlAction = urlAction;
                }
            }
        }
        failUrlHandling(url, lastFailedUrlAction, "Link ignored. Unable to handle url: " + url, null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failUrlHandling(@Nullable String url, @Nullable UrlAction urlAction, @NonNull String message, @Nullable Throwable throwable) {
        Preconditions.checkNotNull(message);
        if (urlAction == null) {
            urlAction = UrlAction.NOOP;
        }
        MoPubLog.d(message, throwable);
        this.mResultActions.urlHandlingFailed(url, urlAction);
    }
}

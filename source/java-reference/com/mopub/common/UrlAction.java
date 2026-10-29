package com.mopub.common;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.amazon.device.ads.AdWebViewClient;
import com.google.android.gms.appinvite.PreviewActivity;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.exceptions.UrlParseException;
import com.mopub.network.TrackingRequest;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public enum UrlAction {
    HANDLE_MOPUB_SCHEME(0 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.1
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return "mopub".equals(uri.getScheme());
        }

        @Override // com.mopub.common.UrlAction
        protected void performAction(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler) throws IntentNotResolvableException {
            String host = uri.getHost();
            UrlHandler.MoPubSchemeListener moPubSchemeListener = urlHandler.getMoPubSchemeListener();
            if ("finishLoad".equals(host)) {
                moPubSchemeListener.onFinishLoad();
            } else if (PreviewActivity.ON_CLICK_LISTENER_CLOSE.equals(host)) {
                moPubSchemeListener.onClose();
            } else {
                if ("failLoad".equals(host)) {
                    moPubSchemeListener.onFailLoad();
                    return;
                }
                throw new IntentNotResolvableException("Could not handle MoPub Scheme url: " + uri);
            }
        }
    },
    IGNORE_ABOUT_SCHEME(0 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.2
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return "about".equals(uri.getScheme());
        }

        @Override // com.mopub.common.UrlAction
        protected void performAction(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler) throws IntentNotResolvableException {
            MoPubLog.d("Link to about page ignored.");
        }
    },
    HANDLE_PHONE_SCHEME(1 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.3
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            String scheme = uri.getScheme();
            return AdWebViewClient.TELEPHONE.equals(scheme) || AdWebViewClient.VOICEMAIL.equals(scheme) || AdWebViewClient.SMS.equals(scheme) || AdWebViewClient.MAILTO.equals(scheme) || AdWebViewClient.GEO.equals(scheme) || AdWebViewClient.GOOGLE_STREETVIEW.equals(scheme);
        }

        @Override // com.mopub.common.UrlAction
        protected void performAction(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler) throws IntentNotResolvableException {
            String errorMessage = "Could not handle intent with URI: " + uri + "\n\tIs this intent supported on your phone?";
            Intents.launchActionViewIntent(context, uri, errorMessage);
        }
    },
    OPEN_NATIVE_BROWSER(1 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.4
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return "mopubnativebrowser".equals(uri.getScheme());
        }

        @Override // com.mopub.common.UrlAction
        protected void performAction(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler) throws IntentNotResolvableException {
            String errorMessage = "Unable to load mopub native browser url: " + uri;
            try {
                Intent intent = Intents.intentForNativeBrowserScheme(uri);
                Intents.launchIntentForUserClick(context, intent, errorMessage);
            } catch (UrlParseException e) {
                throw new IntentNotResolvableException(errorMessage + "\n\t" + e.getMessage());
            }
        }
    },
    OPEN_APP_MARKET(1 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.5
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            String scheme = uri.getScheme();
            String host = uri.getHost();
            return "play.google.com".equals(host) || "market.android.com".equals(host) || "market".equals(scheme) || uri.toString().startsWith("play.google.com/") || uri.toString().startsWith("market.android.com/");
        }

        @Override // com.mopub.common.UrlAction
        protected void performAction(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler) throws IntentNotResolvableException {
            Intents.launchApplicationUrl(context, uri);
        }
    },
    OPEN_IN_APP_BROWSER(1 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.6
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            String scheme = uri.getScheme();
            return "http".equals(scheme) || "https".equals(scheme);
        }

        @Override // com.mopub.common.UrlAction
        protected void performAction(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler) throws IntentNotResolvableException {
            if (!urlHandler.shouldSkipShowMoPubBrowser()) {
                Intents.showMoPubBrowserForUrl(context, uri);
            }
        }
    },
    HANDLE_SHARE_TWEET(1 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.7
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            Preconditions.checkNotNull(uri);
            return "mopubshare".equals(uri.getScheme()) && "tweet".equals(uri.getHost());
        }

        @Override // com.mopub.common.UrlAction
        protected void performAction(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler) throws IntentNotResolvableException {
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(uri);
            String errorMessage = "Could not handle share tweet intent with URI " + uri;
            try {
                Intent shareTweetIntent = Intents.intentForShareTweet(uri);
                Intent chooserIntent = Intent.createChooser(shareTweetIntent, "Share via");
                Intents.launchIntentForUserClick(context, chooserIntent, errorMessage);
            } catch (UrlParseException e) {
                throw new IntentNotResolvableException(errorMessage + "\n\t" + e.getMessage());
            }
        }
    },
    FOLLOW_DEEP_LINK_WITH_FALLBACK(1 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.8
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return "deeplink+".equalsIgnoreCase(uri.getScheme());
        }

        @Override // com.mopub.common.UrlAction
        protected void performAction(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler) throws IntentNotResolvableException {
            if (!"navigate".equalsIgnoreCase(uri.getHost())) {
                throw new IntentNotResolvableException("Deeplink+ URL did not have 'navigate' as the host.");
            }
            try {
                String primaryUrl = uri.getQueryParameter("primaryUrl");
                List<String> primaryTrackingUrls = uri.getQueryParameters("primaryTrackingUrl");
                String fallbackUrl = uri.getQueryParameter("fallbackUrl");
                List<String> fallbackTrackingUrls = uri.getQueryParameters("fallbackTrackingUrl");
                if (primaryUrl == null) {
                    throw new IntentNotResolvableException("Deeplink+ did not have 'primaryUrl' query param.");
                }
                Uri primaryUri = Uri.parse(primaryUrl);
                if (shouldTryHandlingUrl(primaryUri)) {
                    throw new IntentNotResolvableException("Deeplink+ had another Deeplink+ as the 'primaryUrl'.");
                }
                try {
                    Intents.launchApplicationUrl(context, primaryUri);
                    TrackingRequest.makeTrackingHttpRequest(primaryTrackingUrls, context, BaseEvent.Name.CLICK_REQUEST);
                } catch (IntentNotResolvableException e) {
                    if (fallbackUrl == null) {
                        throw new IntentNotResolvableException("Unable to handle 'primaryUrl' for Deeplink+ and 'fallbackUrl' was missing.");
                    }
                    if (shouldTryHandlingUrl(Uri.parse(fallbackUrl))) {
                        throw new IntentNotResolvableException("Deeplink+ URL had another Deeplink+ URL as the 'fallbackUrl'.");
                    }
                    urlHandler.handleUrl(context, fallbackUrl, true, fallbackTrackingUrls);
                }
            } catch (UnsupportedOperationException e2) {
                throw new IntentNotResolvableException("Deeplink+ URL was not a hierarchical URI.");
            }
        }
    },
    FOLLOW_DEEP_LINK(1 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.9
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            String scheme = uri.getScheme();
            String host = uri.getHost();
            return (TextUtils.isEmpty(scheme) || TextUtils.isEmpty(host)) ? false : true;
        }

        @Override // com.mopub.common.UrlAction
        protected void performAction(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler) throws IntentNotResolvableException {
            Intents.launchApplicationUrl(context, uri);
        }
    },
    NOOP(0 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.10
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return false;
        }

        @Override // com.mopub.common.UrlAction
        protected void performAction(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler) throws IntentNotResolvableException {
        }
    };

    private final boolean mRequiresUserInteraction;

    protected abstract void performAction(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler) throws IntentNotResolvableException;

    public abstract boolean shouldTryHandlingUrl(@NonNull Uri uri);

    public void handleUrl(UrlHandler urlHandler, @NonNull Context context, @NonNull Uri destinationUri, boolean fromUserInteraction) throws IntentNotResolvableException {
        MoPubLog.d("Ad event URL: " + destinationUri);
        if (this.mRequiresUserInteraction && !fromUserInteraction) {
            throw new IntentNotResolvableException("Attempted to handle action without user interaction.");
        }
        performAction(context, destinationUri, urlHandler);
    }

    UrlAction(boolean requiresUserInteraction) {
        this.mRequiresUserInteraction = requiresUserInteraction;
    }
}

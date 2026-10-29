package com.mopub.common.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.drive.DriveFile;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.logging.MoPubLog;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.exceptions.UrlParseException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Intents {
    private Intents() {
    }

    public static void startActivity(@NonNull Context context, @NonNull Intent intent) throws IntentNotResolvableException {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(intent);
        if (!(context instanceof Activity)) {
            intent.addFlags(DriveFile.MODE_READ_ONLY);
        }
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            throw new IntentNotResolvableException(e);
        }
    }

    public static Intent getStartActivityIntent(@NonNull Context context, @NonNull Class clazz, @Nullable Bundle extras) {
        Intent intent = new Intent(context, (Class<?>) clazz);
        if (!(context instanceof Activity)) {
            intent.addFlags(DriveFile.MODE_READ_ONLY);
        }
        if (extras != null) {
            intent.putExtras(extras);
        }
        return intent;
    }

    public static boolean deviceCanHandleIntent(@NonNull Context context, @NonNull Intent intent) {
        try {
            PackageManager packageManager = context.getPackageManager();
            List<ResolveInfo> activities = packageManager.queryIntentActivities(intent, 0);
            return !activities.isEmpty();
        } catch (NullPointerException e) {
            return false;
        }
    }

    public static boolean canHandleApplicationUrl(Context context, Uri uri) {
        return canHandleApplicationUrl(context, uri, true);
    }

    public static boolean canHandleApplicationUrl(Context context, Uri uri, boolean logError) {
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        if (deviceCanHandleIntent(context, intent)) {
            return true;
        }
        if (logError) {
            MoPubLog.w("Could not handle application specific action: " + uri + ". You may be running in the emulator or another device which does not have the required application.");
        }
        return false;
    }

    public static Intent intentForNativeBrowserScheme(@NonNull Uri uri) throws UrlParseException {
        Preconditions.checkNotNull(uri);
        if (!UrlAction.OPEN_NATIVE_BROWSER.shouldTryHandlingUrl(uri)) {
            throw new UrlParseException("URL does not have mopubnativebrowser:// scheme.");
        }
        if (!"navigate".equals(uri.getHost())) {
            throw new UrlParseException("URL missing 'navigate' host parameter.");
        }
        try {
            String urlToOpenInNativeBrowser = uri.getQueryParameter("url");
            if (urlToOpenInNativeBrowser == null) {
                throw new UrlParseException("URL missing 'url' query parameter.");
            }
            Uri intentUri = Uri.parse(urlToOpenInNativeBrowser);
            return new Intent("android.intent.action.VIEW", intentUri);
        } catch (UnsupportedOperationException e) {
            MoPubLog.w("Could not handle url: " + uri);
            throw new UrlParseException("Passed-in URL did not create a hierarchical URI.");
        }
    }

    public static Intent intentForShareTweet(@NonNull Uri uri) throws UrlParseException {
        if (!UrlAction.HANDLE_SHARE_TWEET.shouldTryHandlingUrl(uri)) {
            throw new UrlParseException("URL does not have mopubshare://tweet? format.");
        }
        try {
            String screenName = uri.getQueryParameter("screen_name");
            String tweetId = uri.getQueryParameter("tweet_id");
            if (TextUtils.isEmpty(screenName)) {
                throw new UrlParseException("URL missing non-empty 'screen_name' query parameter.");
            }
            if (TextUtils.isEmpty(tweetId)) {
                throw new UrlParseException("URL missing non-empty 'tweet_id' query parameter.");
            }
            String tweetUrl = String.format("https://twitter.com/%s/status/%s", screenName, tweetId);
            String shareMessage = String.format("Check out @%s's Tweet: %s", screenName, tweetUrl);
            Intent shareTweetIntent = new Intent("android.intent.action.SEND");
            shareTweetIntent.setType("text/plain");
            shareTweetIntent.putExtra("android.intent.extra.SUBJECT", shareMessage);
            shareTweetIntent.putExtra("android.intent.extra.TEXT", shareMessage);
            return shareTweetIntent;
        } catch (UnsupportedOperationException e) {
            MoPubLog.w("Could not handle url: " + uri);
            throw new UrlParseException("Passed-in URL did not create a hierarchical URI.");
        }
    }

    public static void showMoPubBrowserForUrl(@NonNull Context context, @NonNull Uri uri) throws IntentNotResolvableException {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(uri);
        MoPubLog.d("Final URI to show in browser: " + uri);
        Bundle extras = new Bundle();
        extras.putString(MoPubBrowser.DESTINATION_URL_KEY, uri.toString());
        Intent intent = getStartActivityIntent(context, MoPubBrowser.class, extras);
        String errorMessage = "Could not show MoPubBrowser for url: " + uri + "\n\tPerhaps you forgot to declare com.mopub.common.MoPubBrowser in your Android manifest file.";
        launchIntentForUserClick(context, intent, errorMessage);
    }

    public static void launchActionViewIntent(Context context, @NonNull Uri uri, @NonNull String errorMessage) throws IntentNotResolvableException {
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        if (!(context instanceof Activity)) {
            intent.addFlags(DriveFile.MODE_READ_ONLY);
        }
        launchIntentForUserClick(context, intent, errorMessage);
    }

    public static void launchIntentForUserClick(@NonNull Context context, @NonNull Intent intent, @Nullable String errorMessage) throws IntentNotResolvableException {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        try {
            startActivity(context, intent);
        } catch (IntentNotResolvableException e) {
            throw new IntentNotResolvableException(errorMessage + "\n" + e.getMessage());
        }
    }

    public static void launchApplicationUrl(@NonNull Context context, @NonNull Uri uri) throws IntentNotResolvableException {
        if (canHandleApplicationUrl(context, uri)) {
            String errorMessage = "Unable to open intent for: " + uri;
            launchActionViewIntent(context, uri, errorMessage);
            return;
        }
        throw new IntentNotResolvableException("Could not handle application specific action: " + uri + "\n\tYou may be running in the emulator or another device which does not have the required application.");
    }
}

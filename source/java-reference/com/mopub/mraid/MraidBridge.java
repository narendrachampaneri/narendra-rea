package com.mopub.mraid;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.amazon.device.ads.DeviceInfo;
import com.amazon.device.ads.WebRequest;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.google.android.gms.drive.DriveFile;
import com.mopub.common.AdReport;
import com.mopub.common.CloseableLayout;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.BaseWebView;
import com.mopub.mobileads.ViewGestureDetector;
import com.mopub.mobileads.resource.MraidJavascript;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MraidBridge {
    private final String FILTERED_JAVASCRIPT_SOURCE;
    private final AdReport mAdReport;
    private boolean mHasLoaded;
    private boolean mIsClicked;

    @Nullable
    private MraidBridgeListener mMraidBridgeListener;

    @NonNull
    private final MraidNativeCommandHandler mMraidNativeCommandHandler;

    @Nullable
    private MraidWebView mMraidWebView;
    private final WebViewClient mMraidWebViewClient;

    @NonNull
    private final PlacementType mPlacementType;

    public interface MraidBridgeListener {
        void onClose();

        boolean onConsoleMessage(@NonNull ConsoleMessage consoleMessage);

        void onExpand(URI uri, boolean z) throws MraidCommandException;

        boolean onJsAlert(@NonNull String str, @NonNull JsResult jsResult);

        void onOpen(URI uri);

        void onPageFailedToLoad();

        void onPageLoaded();

        void onPlayVideo(URI uri);

        void onResize(int i, int i2, int i3, int i4, @NonNull CloseableLayout.ClosePosition closePosition, boolean z) throws MraidCommandException;

        void onSetOrientationProperties(boolean z, MraidOrientation mraidOrientation) throws MraidCommandException;

        void onUseCustomClose(boolean z);

        void onVisibilityChanged(boolean z);
    }

    MraidBridge(@Nullable AdReport adReport, @NonNull PlacementType placementType) {
        this(adReport, placementType, new MraidNativeCommandHandler());
    }

    @VisibleForTesting
    MraidBridge(@Nullable AdReport adReport, @NonNull PlacementType placementType, @NonNull MraidNativeCommandHandler mraidNativeCommandHandler) {
        this.FILTERED_JAVASCRIPT_SOURCE = MraidJavascript.JAVASCRIPT_SOURCE.replaceAll("(?m)^\\s+", "").replaceAll("(?m)^//.*(?=\\n)", "");
        this.mMraidWebViewClient = new WebViewClient() { // from class: com.mopub.mraid.MraidBridge.5
            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
                MoPubLog.d("Error: " + description);
                super.onReceivedError(view, errorCode, description, failingUrl);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(@NonNull WebView view, @NonNull String url) {
                return MraidBridge.this.handleShouldOverrideUrl(url);
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(@NonNull WebView view, @NonNull String url) {
                MraidBridge.this.handlePageFinished();
            }
        };
        this.mAdReport = adReport;
        this.mPlacementType = placementType;
        this.mMraidNativeCommandHandler = mraidNativeCommandHandler;
    }

    void setMraidBridgeListener(@Nullable MraidBridgeListener listener) {
        this.mMraidBridgeListener = listener;
    }

    void attachView(@NonNull MraidWebView mraidWebView) {
        this.mMraidWebView = mraidWebView;
        this.mMraidWebView.getSettings().setJavaScriptEnabled(true);
        if (Build.VERSION.SDK_INT >= 17 && this.mPlacementType == PlacementType.INTERSTITIAL) {
            mraidWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        this.mMraidWebView.loadUrl("javascript:" + this.FILTERED_JAVASCRIPT_SOURCE);
        this.mMraidWebView.setScrollContainer(false);
        this.mMraidWebView.setVerticalScrollBarEnabled(false);
        this.mMraidWebView.setHorizontalScrollBarEnabled(false);
        this.mMraidWebView.setBackgroundColor(-16777216);
        this.mMraidWebView.setWebViewClient(this.mMraidWebViewClient);
        this.mMraidWebView.setWebChromeClient(new WebChromeClient() { // from class: com.mopub.mraid.MraidBridge.1
            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView view, String url, String message, JsResult result) {
                return MraidBridge.this.mMraidBridgeListener != null ? MraidBridge.this.mMraidBridgeListener.onJsAlert(message, result) : super.onJsAlert(view, url, message, result);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(@NonNull ConsoleMessage consoleMessage) {
                return MraidBridge.this.mMraidBridgeListener != null ? MraidBridge.this.mMraidBridgeListener.onConsoleMessage(consoleMessage) : super.onConsoleMessage(consoleMessage);
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
                super.onShowCustomView(view, callback);
            }
        });
        final ViewGestureDetector gestureDetector = new ViewGestureDetector(this.mMraidWebView.getContext(), this.mMraidWebView, this.mAdReport);
        gestureDetector.setUserClickListener(new ViewGestureDetector.UserClickListener() { // from class: com.mopub.mraid.MraidBridge.2
            @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
            public void onUserClick() {
                MraidBridge.this.mIsClicked = true;
            }

            @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
            public void onResetUserClick() {
                MraidBridge.this.mIsClicked = false;
            }

            @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
            public boolean wasClicked() {
                return MraidBridge.this.mIsClicked;
            }
        });
        this.mMraidWebView.setOnTouchListener(new View.OnTouchListener() { // from class: com.mopub.mraid.MraidBridge.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                gestureDetector.sendTouchEvent(event);
                switch (event.getAction()) {
                    case 0:
                    case 1:
                        if (!v.hasFocus()) {
                            v.requestFocus();
                        }
                        break;
                }
                return false;
            }
        });
        this.mMraidWebView.setVisibilityChangedListener(new MraidWebView.OnVisibilityChangedListener() { // from class: com.mopub.mraid.MraidBridge.4
            @Override // com.mopub.mraid.MraidBridge.MraidWebView.OnVisibilityChangedListener
            public void onVisibilityChanged(boolean isVisible) {
                if (MraidBridge.this.mMraidBridgeListener != null) {
                    MraidBridge.this.mMraidBridgeListener.onVisibilityChanged(isVisible);
                }
            }
        });
    }

    void detach() {
        this.mMraidWebView = null;
    }

    public void setContentHtml(@NonNull String htmlData) {
        if (this.mMraidWebView == null) {
            MoPubLog.d("MRAID bridge called setContentHtml before WebView was attached");
        } else {
            this.mHasLoaded = false;
            this.mMraidWebView.loadDataWithBaseURL("http://ads.mopub.com/", htmlData, WebRequest.CONTENT_TYPE_HTML, "UTF-8", null);
        }
    }

    public void setContentUrl(String url) {
        if (this.mMraidWebView == null) {
            MoPubLog.d("MRAID bridge called setContentHtml while WebView was not attached");
        } else {
            this.mHasLoaded = false;
            this.mMraidWebView.loadUrl(url);
        }
    }

    void injectJavaScript(@NonNull String javascript) {
        if (this.mMraidWebView == null) {
            MoPubLog.d("Attempted to inject Javascript into MRAID WebView while was not attached:\n\t" + javascript);
        } else {
            MoPubLog.v("Injecting Javascript into MRAID WebView:\n\t" + javascript);
            this.mMraidWebView.loadUrl("javascript:" + javascript);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fireErrorEvent(@NonNull MraidJavascriptCommand command, @NonNull String message) {
        injectJavaScript("window.mraidbridge.notifyErrorEvent(" + JSONObject.quote(command.toJavascriptString()) + ", " + JSONObject.quote(message) + ")");
    }

    private void fireNativeCommandCompleteEvent(@NonNull MraidJavascriptCommand command) {
        injectJavaScript("window.mraidbridge.nativeCallComplete(" + JSONObject.quote(command.toJavascriptString()) + ")");
    }

    public static class MraidWebView extends BaseWebView {
        private boolean mIsVisible;

        @Nullable
        private OnVisibilityChangedListener mOnVisibilityChangedListener;

        public interface OnVisibilityChangedListener {
            void onVisibilityChanged(boolean z);
        }

        public MraidWebView(Context context) {
            super(context);
            this.mIsVisible = getVisibility() == 0;
        }

        void setVisibilityChangedListener(@Nullable OnVisibilityChangedListener listener) {
            this.mOnVisibilityChangedListener = listener;
        }

        @Override // android.webkit.WebView, android.view.View
        protected void onVisibilityChanged(@NonNull View changedView, int visibility) {
            super.onVisibilityChanged(changedView, visibility);
            boolean newIsVisible = visibility == 0;
            if (newIsVisible != this.mIsVisible) {
                this.mIsVisible = newIsVisible;
                if (this.mOnVisibilityChangedListener != null) {
                    this.mOnVisibilityChangedListener.onVisibilityChanged(this.mIsVisible);
                }
            }
        }

        public boolean isVisible() {
            return this.mIsVisible;
        }
    }

    @VisibleForTesting
    boolean handleShouldOverrideUrl(@NonNull String url) {
        try {
            URI uri = new URI(url);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            if ("mopub".equals(scheme)) {
                if (!"failLoad".equals(host) || this.mPlacementType != PlacementType.INLINE || this.mMraidBridgeListener == null) {
                    return true;
                }
                this.mMraidBridgeListener.onPageFailedToLoad();
                return true;
            }
            if ("mraid".equals(scheme)) {
                Map<String, String> params = new HashMap<>();
                for (NameValuePair pair : URLEncodedUtils.parse(uri, "UTF-8")) {
                    params.put(pair.getName(), pair.getValue());
                }
                MraidJavascriptCommand command = MraidJavascriptCommand.fromJavascriptString(host);
                try {
                    runCommand(command, params);
                } catch (MraidCommandException exception) {
                    fireErrorEvent(command, exception.getMessage());
                }
                fireNativeCommandCompleteEvent(command);
                return true;
            }
            if (!this.mIsClicked) {
                return false;
            }
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(url));
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            try {
                if (this.mMraidWebView == null) {
                    MoPubLog.d("WebView was detached. Unable to load a URL");
                } else {
                    this.mMraidWebView.getContext().startActivity(intent);
                }
                return true;
            } catch (ActivityNotFoundException e) {
                MoPubLog.d("No activity found to handle this URL " + url);
                return false;
            }
        } catch (URISyntaxException e2) {
            MoPubLog.w("Invalid MRAID URL: " + url);
            fireErrorEvent(MraidJavascriptCommand.UNSPECIFIED, "Mraid command sent an invalid URL");
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @VisibleForTesting
    public void handlePageFinished() {
        if (!this.mHasLoaded) {
            this.mHasLoaded = true;
            if (this.mMraidBridgeListener != null) {
                this.mMraidBridgeListener.onPageLoaded();
            }
        }
    }

    @VisibleForTesting
    void runCommand(@NonNull final MraidJavascriptCommand command, @NonNull Map<String, String> params) throws MraidCommandException {
        if (command.requiresClick(this.mPlacementType) && !this.mIsClicked) {
            throw new MraidCommandException("Cannot execute this command unless the user clicks");
        }
        if (this.mMraidBridgeListener == null) {
            throw new MraidCommandException("Invalid state to execute this command");
        }
        if (this.mMraidWebView == null) {
            throw new MraidCommandException("The current WebView is being destroyed");
        }
        switch (command) {
            case CLOSE:
                this.mMraidBridgeListener.onClose();
                return;
            case RESIZE:
                int width = checkRange(parseSize(params.get("width")), 0, 100000);
                int height = checkRange(parseSize(params.get("height")), 0, 100000);
                int offsetX = checkRange(parseSize(params.get("offsetX")), -100000, 100000);
                int offsetY = checkRange(parseSize(params.get("offsetY")), -100000, 100000);
                CloseableLayout.ClosePosition closePosition = parseClosePosition(params.get("customClosePosition"), CloseableLayout.ClosePosition.TOP_RIGHT);
                boolean allowOffscreen = parseBoolean(params.get("allowOffscreen"), true);
                this.mMraidBridgeListener.onResize(width, height, offsetX, offsetY, closePosition, allowOffscreen);
                return;
            case EXPAND:
                URI uri = parseURI(params.get("url"), null);
                boolean shouldUseCustomClose = parseBoolean(params.get("shouldUseCustomClose"), false);
                this.mMraidBridgeListener.onExpand(uri, shouldUseCustomClose);
                return;
            case USE_CUSTOM_CLOSE:
                boolean shouldUseCustomClose2 = parseBoolean(params.get("shouldUseCustomClose"), false);
                this.mMraidBridgeListener.onUseCustomClose(shouldUseCustomClose2);
                return;
            case OPEN:
                URI uri2 = parseURI(params.get("url"));
                this.mMraidBridgeListener.onOpen(uri2);
                return;
            case SET_ORIENTATION_PROPERTIES:
                boolean allowOrientationChange = parseBoolean(params.get("allowOrientationChange"));
                MraidOrientation forceOrientation = parseOrientation(params.get("forceOrientation"));
                this.mMraidBridgeListener.onSetOrientationProperties(allowOrientationChange, forceOrientation);
                return;
            case PLAY_VIDEO:
                URI uri3 = parseURI(params.get("uri"));
                this.mMraidBridgeListener.onPlayVideo(uri3);
                return;
            case STORE_PICTURE:
                URI uri4 = parseURI(params.get("uri"));
                this.mMraidNativeCommandHandler.storePicture(this.mMraidWebView.getContext(), uri4.toString(), new MraidNativeCommandHandler.MraidCommandFailureListener() { // from class: com.mopub.mraid.MraidBridge.6
                    @Override // com.mopub.mraid.MraidNativeCommandHandler.MraidCommandFailureListener
                    public void onFailure(MraidCommandException exception) {
                        MraidBridge.this.fireErrorEvent(command, exception.getMessage());
                    }
                });
                return;
            case CREATE_CALENDAR_EVENT:
                this.mMraidNativeCommandHandler.createCalendarEvent(this.mMraidWebView.getContext(), params);
                return;
            case UNSPECIFIED:
                throw new MraidCommandException("Unspecified MRAID Javascript command");
            default:
                return;
        }
    }

    private CloseableLayout.ClosePosition parseClosePosition(@NonNull String text, @NonNull CloseableLayout.ClosePosition defaultValue) throws MraidCommandException {
        if (!TextUtils.isEmpty(text)) {
            if (text.equals("top-left")) {
                CloseableLayout.ClosePosition defaultValue2 = CloseableLayout.ClosePosition.TOP_LEFT;
                return defaultValue2;
            }
            if (text.equals("top-right")) {
                CloseableLayout.ClosePosition defaultValue3 = CloseableLayout.ClosePosition.TOP_RIGHT;
                return defaultValue3;
            }
            if (text.equals("center")) {
                CloseableLayout.ClosePosition defaultValue4 = CloseableLayout.ClosePosition.CENTER;
                return defaultValue4;
            }
            if (text.equals("bottom-left")) {
                CloseableLayout.ClosePosition defaultValue5 = CloseableLayout.ClosePosition.BOTTOM_LEFT;
                return defaultValue5;
            }
            if (text.equals("bottom-right")) {
                CloseableLayout.ClosePosition defaultValue6 = CloseableLayout.ClosePosition.BOTTOM_RIGHT;
                return defaultValue6;
            }
            if (text.equals("top-center")) {
                CloseableLayout.ClosePosition defaultValue7 = CloseableLayout.ClosePosition.TOP_CENTER;
                return defaultValue7;
            }
            if (text.equals("bottom-center")) {
                CloseableLayout.ClosePosition defaultValue8 = CloseableLayout.ClosePosition.BOTTOM_CENTER;
                return defaultValue8;
            }
            throw new MraidCommandException("Invalid close position: " + text);
        }
        return defaultValue;
    }

    private int parseSize(@NonNull String text) throws MraidCommandException {
        try {
            int result = Integer.parseInt(text, 10);
            return result;
        } catch (NumberFormatException e) {
            throw new MraidCommandException("Invalid numeric parameter: " + text);
        }
    }

    private MraidOrientation parseOrientation(String text) throws MraidCommandException {
        if (DeviceInfo.ORIENTATION_PORTRAIT.equals(text)) {
            return MraidOrientation.PORTRAIT;
        }
        if (DeviceInfo.ORIENTATION_LANDSCAPE.equals(text)) {
            return MraidOrientation.LANDSCAPE;
        }
        if ("none".equals(text)) {
            return MraidOrientation.NONE;
        }
        throw new MraidCommandException("Invalid orientation: " + text);
    }

    private int checkRange(int value, int min, int max) throws MraidCommandException {
        if (value < min || value > max) {
            throw new MraidCommandException("Integer parameter out of range: " + value);
        }
        return value;
    }

    private boolean parseBoolean(@Nullable String text, boolean defaultValue) throws MraidCommandException {
        if (text == null) {
            return defaultValue;
        }
        boolean defaultValue2 = parseBoolean(text);
        return defaultValue2;
    }

    private boolean parseBoolean(String text) throws MraidCommandException {
        if ("true".equals(text)) {
            return true;
        }
        if ("false".equals(text)) {
            return false;
        }
        throw new MraidCommandException("Invalid boolean parameter: " + text);
    }

    @NonNull
    private URI parseURI(@Nullable String encodedText, URI defaultValue) throws MraidCommandException {
        if (encodedText == null) {
            return defaultValue;
        }
        URI defaultValue2 = parseURI(encodedText);
        return defaultValue2;
    }

    @NonNull
    private URI parseURI(@Nullable String encodedText) throws MraidCommandException {
        if (encodedText == null) {
            throw new MraidCommandException("Parameter cannot be null");
        }
        try {
            return new URI(encodedText);
        } catch (URISyntaxException e) {
            throw new MraidCommandException("Invalid URL parameter: " + encodedText);
        }
    }

    void notifyViewability(boolean isViewable) {
        injectJavaScript("mraidbridge.setIsViewable(" + isViewable + ")");
    }

    void notifyPlacementType(PlacementType placementType) {
        injectJavaScript("mraidbridge.setPlacementType(" + JSONObject.quote(placementType.toJavascriptString()) + ")");
    }

    void notifyViewState(ViewState state) {
        injectJavaScript("mraidbridge.setState(" + JSONObject.quote(state.toJavascriptString()) + ")");
    }

    void notifySupports(boolean sms, boolean telephone, boolean calendar, boolean storePicture, boolean inlineVideo) {
        injectJavaScript("mraidbridge.setSupports(" + sms + AppInfo.DELIM + telephone + AppInfo.DELIM + calendar + AppInfo.DELIM + storePicture + AppInfo.DELIM + inlineVideo + ")");
    }

    @NonNull
    private String stringifyRect(Rect rect) {
        return rect.left + AppInfo.DELIM + rect.top + AppInfo.DELIM + rect.width() + AppInfo.DELIM + rect.height();
    }

    @NonNull
    private String stringifySize(Rect rect) {
        return rect.width() + AppInfo.DELIM + rect.height();
    }

    public void notifyScreenMetrics(@NonNull MraidScreenMetrics screenMetrics) {
        injectJavaScript("mraidbridge.setScreenSize(" + stringifySize(screenMetrics.getScreenRectDips()) + ");mraidbridge.setMaxSize(" + stringifySize(screenMetrics.getRootViewRectDips()) + ");mraidbridge.setCurrentPosition(" + stringifyRect(screenMetrics.getCurrentAdRectDips()) + ");mraidbridge.setDefaultPosition(" + stringifyRect(screenMetrics.getDefaultAdRectDips()) + ")");
        injectJavaScript("mraidbridge.notifySizeChangeEvent(" + stringifySize(screenMetrics.getCurrentAdRect()) + ")");
    }

    void notifyReady() {
        injectJavaScript("mraidbridge.notifyReadyEvent();");
    }

    boolean isClicked() {
        return this.mIsClicked;
    }

    boolean isVisible() {
        return this.mMraidWebView != null && this.mMraidWebView.isVisible();
    }

    boolean isAttached() {
        return this.mMraidWebView != null;
    }

    boolean isLoaded() {
        return this.mHasLoaded;
    }

    @VisibleForTesting
    MraidWebView getMraidWebView() {
        return this.mMraidWebView;
    }

    @VisibleForTesting
    void setClicked(boolean clicked) {
        this.mIsClicked = clicked;
    }
}

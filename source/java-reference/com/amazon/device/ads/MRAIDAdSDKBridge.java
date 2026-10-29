package com.amazon.device.ads;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.media.MediaScannerConnection;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.appinvite.PreviewActivity;
import com.mopub.mraid.MraidNativeCommandHandler;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class MRAIDAdSDKBridge implements AdSDKBridge {
    private static final int CLOSE_BUTTON_SIZE = 50;
    private static final String CONTENT_DESCRIPTION_AD_CONTAINER_VIEW = "adContainerView";
    private static final String CONTENT_DESCRIPTION_DIMMING_VIEW = "dimmingView";
    private static final String CONTENT_DESCRIPTION_EXPANSION_VIEW = "expansionView";
    private static final String CONTENT_DESCRIPTION_RESIZED_VIEW = "resizedView";
    private static final String ERROR_EVENT_FORMAT = "mraidBridge.error('%s', '%s');";
    private static final String MRAID_BRIDGE_NAME = "mraidObject";
    private static final String PLACEMENT_TYPE_INLINE = "inline";
    private static final String PLACEMENT_TYPE_INTERSTITIAL = "interstitial";
    private ViewGroup adContainerView;
    private final AdControlAccessor adControlAccessor;
    private final AdUtils2 adUtils;
    private final AlertDialogFactory alertDialogFactory;
    private final Position defaultPosition;
    private final ExpandProperties expandProperties;
    private boolean expandedWithUrl;
    private ViewGroup expansionView;
    private final GraphicsUtils graphicsUtils;
    private final JavascriptInteractor javascriptInteractor;
    private final MobileAdsLogger logger;
    private final OrientationProperties orientationProperties;
    private final PermissionChecker permissionChecker;
    private ResizeProperties resizeProperties;
    private ViewGroup resizedView;
    private FrameLayout rootView;
    private SDKEventListener sdkEventListener;
    private final ThreadUtils.ThreadRunner threadRunner;
    private final WebRequest.WebRequestFactory webRequestFactory;
    private final WebUtils2 webUtils;
    private static final String LOGTAG = MRAIDAdSDKBridge.class.getSimpleName();
    private static final String JAVASCRIPT = "(function (window, console) {\n    var is_array = function (obj) {\n        return Object.prototype.toString.call(obj) === '[object Array]';\n    },\n    forEach = function (array, fn) {\n        var i;\n        for (i = 0; i < array.length; i++) {\n            if (i in array) {\n                fn.call(null, array[i], i);\n            }\n        }\n    },\n    events = {\n            error: 'error',\n            ready: 'ready',\n            sizeChange: 'sizeChange',\n            stateChange: 'stateChange',\n            viewableChange: 'viewableChange'\n    },\n    states = [\"loading\",\"default\",\"expanded\",\"resized\",\"hidden\"],\n    placementTypes = [\"inline\", \"interstitial\"],\n    listeners = [],\n    version = '2.0',\n    currentState = \"loading\",\n    supportedFeatures = null,\n    orientationProperties = {\"allowOrientationChange\":true,\"forceOrientation\":\"none\"},\n    // Error Event fires listeners\n    invokeListeners = function(event, args) {\n        var eventListeners = listeners[event] || [];\n        // fire all the listeners\n        forEach(eventListeners, function(listener){\n            try {\n                listener.apply(null, args);\n            }catch(e){\n                debug(\"Error executing \" + event + \" listener\");\n                debug(e);\n            }\n        });\n    },\n    debug = function(msg) {\n        console.log(\"MRAID log: \" + msg);\n    },\n    readyEvent = function() {\n        debug(\"MRAID ready\");\n        invokeListeners(\"ready\");\n    },\n    errorEvent = function(message, action) {\n        debug(\"error: \" + message + \" action: \" + action);\n        var args = [message, action];\n        invokeListeners(\"error\", args);\n    },\n    stateChangeEvent = function(state) {\n        debug(\"stateChange: \" + state);\n        var args = [state];\n        currentState = state;\n        invokeListeners(\"stateChange\", args);\n    },\n    viewableChangeEvent = function(viewable) {\n        debug(\"viewableChange: \" + viewable);\n        var args = [viewable];\n        invokeListeners(\"viewableChange\", args);\n    }, \n    sizeChangeEvent = function(width, height) {\n        debug(\"sizeChange: \" + width + \"x\" + height);\n        var args = [width, height];\n        invokeListeners(\"sizeChange\", args);\n    };\n    window.mraidBridge = {\n            error : errorEvent,\n            ready : readyEvent,\n            stateChange : stateChangeEvent,\n            sizeChange : sizeChangeEvent,\n            viewableChange : viewableChangeEvent\n    };\n    // Define the mraid object\n    window.mraid = {\n            // Command Flow\n            addEventListener : function(event, listener){\n                var eventListeners = listeners[event] || [],\n                alreadyRegistered = false;\n                \n                //verify the event is one that will actually occur\n                if (!events.hasOwnProperty(event)){\n                    return;\n                }\n                \n                //register first set of listeners for this event\n                if (!is_array(listeners[event])) {\n                    listeners[event] = eventListeners;\n                }\n                \n                forEach(eventListeners, function(l){ \n                    // Listener already registered, so no need to add it.\n                        if (listener === l){\n                            alreadyRegistered = true;\n                        }\n                    }\n                );\n                if (!alreadyRegistered){\n                    listeners[event].push(listener);\n                }\n            },\n            removeEventListener : function(event, listener){\n                if (listeners.hasOwnProperty(event)) {\n                    var eventListeners = listeners[event];\n                    if (eventListeners) {\n                        var idx = eventListeners.indexOf(listener);\n                        if (idx !== -1) {\n                            eventListeners.splice(idx, 1);\n                        }\n                    }\n                }\n            },\n            useCustomClose: function(bool){\n                mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"UseCustomClose\", JSON.stringify({useCustomClose: bool}));\n            },\n            // Support\n            supports: function(feature){\n                if (!supportedFeatures)\n                {\n                    supportedFeatures = JSON.parse(mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"Supports\", null));\n                }\n                return supportedFeatures[feature];\n            },\n            // Properties\n            getVersion: function(){\n                return version;\n            },\n            getState: function(){\n                return currentState;\n            },\n            getPlacementType: function(){\n                var json = JSON.parse(mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"GetPlacementType\", null));\n                return json.placementType;\n            },\n            isViewable: function(){\n                // TODO - should we ask the OS if the widget is visible.\n                return currentState !== \"hidden\" && currentState !== \"loading\";\n            },\n            getExpandProperties: function(){\n                return JSON.parse(mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"GetExpandProperties\", null));\n            },\n            setExpandProperties: function(properties){\n                var currentProperties = mraid.getExpandProperties(),\n                //properties aren't all required, map to existing value if not set.\n                width = properties.hasOwnProperty('width') ? properties.width : currentProperties.width,\n                height = properties.hasOwnProperty('height') ? properties.height : currentProperties.height,\n                useClose = properties.hasOwnProperty('useCustomClose') ? properties.useCustomClose : currentProperties.useCustomClose;\n                //Backwards compatibility with MRAID 1.0 creatives\n                if (!!properties.lockOrientation){\n                    mraid.setOrientationProperties({\"allowOrientationChange\":false});\n                }\n                mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"SetExpandProperties\", JSON.stringify({\n                        width: width, \n                        height: height, \n                        useClose: useClose}));\n            },\n            getOrientationProperties: function(){\n                return orientationProperties;\n            },\n            setOrientationProperties: function(properties){\n                if (properties.hasOwnProperty(\"allowOrientationChange\")) {\n                    orientationProperties.allowOrientationChange = properties.allowOrientationChange;\n                }\n                if (properties.hasOwnProperty(\"forceOrientation\")) {\n                    orientationProperties.forceOrientation = properties.forceOrientation;\n                }\n                mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"SetOrientationProperties\", JSON.stringify({\n                        allowOrientationChange: orientationProperties.allowOrientationChange, \n                        forceOrientation: orientationProperties.forceOrientation}));\n            },\n            getResizeProperties: function(){\n                return JSON.parse(mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"GetResizeProperties\", null));\n            },\n            setResizeProperties: function(properties){\n                if (!properties.customClosePosition){\n                   properties.customClosePosition = null;\n                }\n                if (!properties.hasOwnProperty('allowOffscreen')){\n                   properties.allowOffscreen = true;\n                }\n                mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"SetResizeProperties\", JSON.stringify({\n                        width: properties.width, \n                        height: properties.height, \n                        offsetX: properties.offsetX, \n                        offsetY: properties.offsetY, \n                        customClosePosition: properties.customClosePosition, \n                        allowOffscreen: properties.allowOffscreen}));\n            },\n            getCurrentPosition: function(){\n                return JSON.parse(mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"GetCurrentPosition\", null));\n            },\n            getMaxSize: function(){\n                return JSON.parse(mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"GetMaxSize\", null));\n            },\n            getDefaultPosition: function(){\n                return JSON.parse(mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"GetDefaultPosition\", null));\n            },\n            getScreenSize: function(){\n                return JSON.parse(mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"GetScreenSize\", null));\n            },\n            // Operations\n            open: function(url) {\n                mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"Open\", JSON.stringify({url: url}));\n            },\n            close: function() {\n                mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"Close\", null);\n            },\n            expand: function(url) {\n                if (url !== undefined) {\n                    mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"Expand\", JSON.stringify({url: url}));\n                } else {\n                    mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"Expand\", JSON.stringify({url: \"\"}));\n                }\n            },\n            resize: function() {\n                mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"Resize\", null);\n            },\n            createCalendarEvent: function(eventObject) {\n                mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"CreateCalendarEvent\", JSON.stringify({\n                        description: eventObject.description || null, \n                        location: eventObject.customClosePosition || null, \n                        summary: eventObject.summary || null, \n                        start: eventObject.start || null, \n                        end: eventObject.end || null}));\n            },\n            playVideo: function(url){\n                mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"PlayVideo\", JSON.stringify({url: url}));\n            },\n            storePicture: function(url){\n                mraidObject." + JavascriptInteractor.getExecutorMethodName() + "(\"StorePicture\", JSON.stringify({url: url}));\n            }\n    };\n})(window, console);\n";

    MRAIDAdSDKBridge(AdControlAccessor adControlAccessor, JavascriptInteractor javascriptInteractor) {
        this(adControlAccessor, javascriptInteractor, new PermissionChecker(), new MobileAdsLoggerFactory(), new WebRequest.WebRequestFactory(), ThreadUtils.getThreadRunner(), new GraphicsUtils(), new AlertDialogFactory(), new WebUtils2(), new AdUtils2());
    }

    MRAIDAdSDKBridge(AdControlAccessor adControlAccessor, JavascriptInteractor javascriptInteractor, PermissionChecker permissionChecker, MobileAdsLoggerFactory loggerFactory, WebRequest.WebRequestFactory webRequestFactory, ThreadUtils.ThreadRunner threadRunner, GraphicsUtils graphicsUtils, AlertDialogFactory alertDialogFactory, WebUtils2 webUtils, AdUtils2 adUtils) {
        this.orientationProperties = new OrientationProperties();
        this.expandProperties = new ExpandProperties();
        this.defaultPosition = new Position();
        this.expandedWithUrl = true;
        this.adControlAccessor = adControlAccessor;
        this.javascriptInteractor = javascriptInteractor;
        this.logger = loggerFactory.createMobileAdsLogger(LOGTAG);
        this.permissionChecker = permissionChecker;
        this.webRequestFactory = webRequestFactory;
        this.threadRunner = threadRunner;
        this.graphicsUtils = graphicsUtils;
        this.alertDialogFactory = alertDialogFactory;
        this.webUtils = webUtils;
        this.adUtils = adUtils;
        populateJavascriptExecutorsInInteractor();
    }

    private void populateJavascriptExecutorsInInteractor() {
        this.javascriptInteractor.addMethodExecutor(new CloseJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new CreateCalendarEventJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new ExpandJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new GetCurrentPositionJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new GetDefaultPositionJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new GetExpandPropertiesJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new GetMaxSizeJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new GetPlacementTypeJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new GetResizePropertiesJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new GetScreenSizeJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new OpenJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new PlayVideoJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new ResizeJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new SetExpandPropertiesJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new SetOrientationPropertiesJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new SetResizePropertiesJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new StorePictureJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new SupportsJSIF(this));
        this.javascriptInteractor.addMethodExecutor(new UseCustomCloseJSIF(this));
    }

    @Override // com.amazon.device.ads.AdSDKBridge
    public boolean hasNativeExecution() {
        return true;
    }

    @Override // com.amazon.device.ads.AdSDKBridge
    public JavascriptInteractor.Executor getJavascriptInteractorExecutor() {
        return this.javascriptInteractor.getExecutor();
    }

    @Override // com.amazon.device.ads.AdSDKBridge
    public String getName() {
        return MRAID_BRIDGE_NAME;
    }

    @Override // com.amazon.device.ads.AdSDKBridge
    public String getJavascript() {
        return JAVASCRIPT;
    }

    @Override // com.amazon.device.ads.AdSDKBridge
    public SDKEventListener getSDKEventListener() {
        if (this.sdkEventListener == null) {
            this.sdkEventListener = new MRAIDAdSDKEventListener(this);
        }
        return this.sdkEventListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext() {
        return this.adControlAccessor.getContext();
    }

    void updateExpandProperties(int width, int height) {
        this.expandProperties.setWidth(width);
        this.expandProperties.setHeight(height);
    }

    void updateDefaultPosition(int width, int height, int offsetX, int offsetY) {
        this.defaultPosition.setSize(new Size(width, height));
        this.defaultPosition.setX(offsetX);
        this.defaultPosition.setY(offsetY);
    }

    public JSONObject getCurrentPosition() {
        Position currentPosition = this.adControlAccessor.getCurrentPosition();
        if (currentPosition != null) {
            return this.adControlAccessor.getCurrentPosition().toJSONObject();
        }
        fireErrorEvent("Current position is unavailable because the ad has not yet been displayed.", "getCurrentPosition");
        return new Position(new Size(0, 0), 0, 0).toJSONObject();
    }

    public JSONObject getDefaultPosition() {
        return this.defaultPosition.toJSONObject();
    }

    public JSONObject getMaxSize() {
        Size maxSize = this.adControlAccessor.getMaxSize();
        return maxSize == null ? new Size(0, 0).toJSONObject() : maxSize.toJSONObject();
    }

    public JSONObject getScreenSize() {
        Size screenSize = this.adControlAccessor.getScreenSize();
        return screenSize == null ? new Size(0, 0).toJSONObject() : screenSize.toJSONObject();
    }

    public String getPlacementType() {
        return this.adControlAccessor.isInterstitial() ? "interstitial" : PLACEMENT_TYPE_INLINE;
    }

    public String getOrientationProperties() {
        return this.orientationProperties.toString();
    }

    public void setOrientationProperties(boolean allowOrientationChange, String forceOrientation) {
        if (this.adControlAccessor.isInterstitial() && !this.adControlAccessor.isModal()) {
            this.adControlAccessor.orientationChangeAttemptedWhenNotAllowed();
        }
        this.orientationProperties.setAllowOrientationChange(Boolean.valueOf(allowOrientationChange));
        if (!StringUtils.isNullOrEmpty(forceOrientation)) {
            try {
                ForceOrientation forceOrientationEnum = ForceOrientation.valueOf(forceOrientation.toUpperCase(Locale.US));
                this.orientationProperties.setForceOrientation(forceOrientationEnum);
            } catch (IllegalArgumentException e) {
                this.logger.w("Not a valid orientation to force:" + forceOrientation);
            }
        }
        orientationPropertyChange();
    }

    public JSONObject getExpandProperties() {
        return this.expandProperties.toJSONObject();
    }

    public void setExpandProperties(int width, int height, boolean useCustomClose) {
        this.expandProperties.setWidth(width);
        this.expandProperties.setHeight(height);
        setUseCustomClose(useCustomClose);
    }

    public JSONObject getResizeProperties() {
        return this.resizeProperties.toJSONObject();
    }

    public void setResizeProperties(int width, int height, int offsetX, int offsetY, String customClosePosition, boolean allowOffscreen) {
        if (this.resizeProperties == null) {
            this.resizeProperties = new ResizeProperties();
        }
        this.resizeProperties.setAllowOffscreen(Boolean.valueOf(allowOffscreen));
        this.resizeProperties.setCustomClosePosition(customClosePosition);
        this.resizeProperties.setWidth(width);
        this.resizeProperties.setHeight(height);
        this.resizeProperties.setOffsetX(offsetX);
        this.resizeProperties.setOffsetY(offsetY);
    }

    public void setUseCustomClose(boolean useCustomClose) {
        this.expandProperties.setUseCustomClose(Boolean.valueOf(useCustomClose));
        this.adControlAccessor.showNativeCloseButtonImage(!useCustomClose);
    }

    public void close() {
        if (!this.adControlAccessor.closeAd()) {
            fireErrorEvent("Unable to close ad in its current state.", PreviewActivity.ON_CLICK_LISTENER_CLOSE);
        }
    }

    public void expand(String url) {
        if (this.adControlAccessor.isInterstitial()) {
            fireErrorEvent("Unable to expand an interstitial ad placement", "expand");
            return;
        }
        if (this.adControlAccessor.isModal()) {
            fireErrorEvent("Unable to expand while expanded.", "expand");
            return;
        }
        if (!this.adControlAccessor.isVisible()) {
            fireErrorEvent("Unable to expand ad while it is not visible.", "expand");
            return;
        }
        if (this.expandProperties.getWidth() < 50 || this.expandProperties.getHeight() < 50) {
            fireErrorEvent("Expand size is too small, must leave room for close.", "expand");
            return;
        }
        final ExpandProperties expandProperties = this.expandProperties;
        if (!StringUtils.isNullOrWhiteSpace(url)) {
            if (this.webUtils.isUrlValid(url)) {
                this.adControlAccessor.preloadUrl(url, new PreloadCallback() { // from class: com.amazon.device.ads.MRAIDAdSDKBridge.1
                    @Override // com.amazon.device.ads.PreloadCallback
                    public void onPreloadComplete(String url2) {
                        MRAIDAdSDKBridge.this.adControlAccessor.injectJavascriptPreload("mraidBridge.stateChange('expanded');");
                        MRAIDAdSDKBridge.this.adControlAccessor.injectJavascriptPreload("mraidBridge.ready();");
                        MRAIDAdSDKBridge.this.expandAd(expandProperties, url2);
                    }
                });
                return;
            } else {
                fireErrorEvent("Unable to expand with invalid URL.", "expand");
                return;
            }
        }
        expandAd(expandProperties, null);
    }

    public void resize() {
        if (this.adControlAccessor.isInterstitial()) {
            fireErrorEvent("Unable to resize an interstitial ad placement.", "resize");
            return;
        }
        if (this.adControlAccessor.isModal()) {
            fireErrorEvent("Unable to resize while expanded.", "resize");
            return;
        }
        if (!this.adControlAccessor.isVisible()) {
            fireErrorEvent("Unable to resize ad while it is not visible.", "resize");
            return;
        }
        if (this.resizeProperties == null) {
            fireErrorEvent("Resize properties must be set before calling resize.", "resize");
        } else if (this.resizeProperties.getWidth() < 50 || this.resizeProperties.getHeight() < 50) {
            fireErrorEvent("Resize width and height must be at least 50 dp in order to fit the close button.", "resize");
        } else {
            resizeAd(this.resizeProperties);
        }
    }

    public void playVideo(String url) {
        if (!this.adControlAccessor.isVisible()) {
            fireErrorEvent("Unable to play a video while the ad is not visible", "playVideo");
            return;
        }
        if (StringUtils.isNullOrEmpty(url)) {
            fireErrorEvent("Unable to play a video without a URL", "playVideo");
            return;
        }
        try {
            Bundle data = new Bundle();
            data.putString("url", url);
            Intent intent = new Intent(getContext(), (Class<?>) AdActivity.class);
            intent.putExtra("adapter", VideoActionHandler.class.getName());
            intent.putExtras(data);
            getContext().startActivity(intent);
        } catch (ActivityNotFoundException e) {
            this.logger.d("Failed to open VideoAction activity");
            fireErrorEvent("Internal SDK Failure. Unable to launch VideoActionHandler", "playVideo");
        }
    }

    public void open(String url) {
        if (!this.adControlAccessor.isVisible()) {
            fireErrorEvent("Unable to open a URL while the ad is not visible", "open");
            return;
        }
        this.logger.d("Opening URL " + url);
        if (this.webUtils.isUrlValid(url)) {
            String scheme = WebUtils.getScheme(url);
            if ("http".equals(scheme) || "https".equals(scheme)) {
                new InAppBrowser.InAppBrowserBuilder().withContext(getContext()).withExternalBrowserButton().withUrl(url).show();
                return;
            } else {
                this.adControlAccessor.loadUrl(url);
                return;
            }
        }
        String message = "URL " + url + " is not a valid URL";
        this.logger.d(message);
        fireErrorEvent(message, "open");
    }

    public JSONObject getSupportedFeatures() {
        JSONObject json = new JSONObject();
        try {
            boolean canSms = getContext().getPackageManager().hasSystemFeature("android.hardware.telephony");
            json.put(AdWebViewClient.SMS, canSms);
            boolean canTel = getContext().getPackageManager().hasSystemFeature("android.hardware.telephony");
            json.put(AdWebViewClient.TELEPHONE, canTel);
            boolean canCalendar = AndroidTargetUtils.isAtLeastAndroidAPI(14);
            json.put("calendar", canCalendar);
            boolean canStorePicture = this.permissionChecker.hasWriteExternalStoragePermission(getContext());
            json.put("storePicture", canStorePicture);
            boolean canInlineVideo = AndroidTargetUtils.isAtLeastAndroidAPI(11);
            json.put("inlineVideo", canInlineVideo);
        } catch (JSONException e) {
        }
        return json;
    }

    public void createCalendarEvent(String description, String location, String summary, String start, String end) {
        if (!AndroidTargetUtils.isAtLeastAndroidAPI(14)) {
            this.logger.d("API version does not support calendar operations.");
            fireErrorEvent("API version does not support calendar operations.", "createCalendarEvent");
            return;
        }
        try {
            CalendarEventParameters parameters = new CalendarEventParameters(description, location, summary, start, end);
            createCalendarIntent(parameters);
        } catch (IllegalArgumentException e) {
            this.logger.d(e.getMessage());
            fireErrorEvent(e.getMessage(), "createCalendarEvent");
        }
    }

    @TargetApi(14)
    private void createCalendarIntent(CalendarEventParameters parameters) {
        Intent calendarIntent = new Intent("android.intent.action.INSERT").setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE);
        calendarIntent.putExtra("title", parameters.getDescription());
        if (!StringUtils.isNullOrEmpty(parameters.getLocation())) {
            calendarIntent.putExtra("eventLocation", parameters.getLocation());
        }
        if (!StringUtils.isNullOrEmpty(parameters.getSummary())) {
            calendarIntent.putExtra("description", parameters.getSummary());
        }
        calendarIntent.putExtra("beginTime", parameters.getStart().getTime());
        if (parameters.getEnd() != null) {
            calendarIntent.putExtra("endTime", parameters.getEnd().getTime());
        }
        getContext().startActivity(calendarIntent);
    }

    public void storePicture(final String url) {
        if (!this.permissionChecker.hasWriteExternalStoragePermission(getContext())) {
            fireErrorEvent("Picture could not be stored because permission was denied.", "storePicture");
        } else {
            this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.MRAIDAdSDKBridge.2
                @Override // java.lang.Runnable
                public void run() {
                    MRAIDAdSDKBridge.this.fetchPicture(url);
                }
            }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.BACKGROUND_THREAD);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchPicture(String url) {
        WebRequest webRequest = this.webRequestFactory.createWebRequest();
        webRequest.enableLog(true);
        webRequest.setUrlString(url);
        try {
            WebRequest.WebResponse response = webRequest.makeCall();
            if (response == null) {
                fireErrorEvent("Server could not be contacted to download picture.", "storePicture");
                return;
            }
            final Bitmap bitmap = new ImageResponseReader(response.getResponseReader(), this.graphicsUtils).readAsBitmap();
            if (bitmap == null) {
                fireErrorEvent("Picture could not be retrieved from server.", "storePicture");
            } else {
                this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.MRAIDAdSDKBridge.3
                    @Override // java.lang.Runnable
                    public void run() {
                        MRAIDAdSDKBridge.this.savePicture(bitmap);
                    }
                }, ThreadUtils.ExecutionStyle.SCHEDULE, ThreadUtils.ExecutionThread.MAIN_THREAD);
            }
        } catch (WebRequest.WebRequestException e) {
            fireErrorEvent("Server could not be contacted to download picture.", "storePicture");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void savePicture(final Bitmap bitmap) {
        AlertDialog.Builder alert = this.alertDialogFactory.createBuilder(getContext());
        alert.setTitle("Would you like to save the image to your gallery?");
        alert.setPositiveButton("Yes", new DialogInterface.OnClickListener() { // from class: com.amazon.device.ads.MRAIDAdSDKBridge.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                String insertUrl = MRAIDAdSDKBridge.this.graphicsUtils.insertImageInMediaStore(MRAIDAdSDKBridge.this.getContext(), bitmap, "AdImage", "Image created by rich media ad.");
                if (StringUtils.isNullOrEmpty(insertUrl)) {
                    MRAIDAdSDKBridge.this.fireErrorEvent("Picture could not be stored to device.", "storePicture");
                } else {
                    MediaScannerConnection.scanFile(MRAIDAdSDKBridge.this.getContext(), new String[]{insertUrl}, null, null);
                }
            }
        });
        alert.setNegativeButton("No", new DialogInterface.OnClickListener() { // from class: com.amazon.device.ads.MRAIDAdSDKBridge.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
            }
        });
        alert.show();
    }

    void collapseExpandedAd(final AdControlAccessor adControlAccessor) {
        this.logger.d("Collapsing expanded ad " + this);
        this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.MRAIDAdSDKBridge.6
            @Override // java.lang.Runnable
            public void run() {
                MRAIDAdSDKBridge.this.collapseExpandedAdOnThread(adControlAccessor);
            }
        }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.MAIN_THREAD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"InlinedApi"})
    public void collapseExpandedAdOnThread(final AdControlAccessor adControlAccessor) {
        this.rootView = (FrameLayout) ((Activity) getContext()).findViewById(R.id.content);
        if (this.expandedWithUrl) {
            this.logger.d("Expanded With URL");
            adControlAccessor.popView();
        } else {
            this.logger.d("Not Expanded with URL");
        }
        lookupExpansionView();
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1, 17);
        adControlAccessor.moveViewBackToParent(layoutParams2);
        adControlAccessor.removeCloseButton();
        if (this.expansionView != null) {
            this.rootView.removeView(this.expansionView);
        }
        if (this.resizedView != null) {
            this.rootView.removeView(this.resizedView);
        }
        ViewTreeObserver vto = this.rootView.getViewTreeObserver();
        vto.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.amazon.device.ads.MRAIDAdSDKBridge.7
            private boolean triggered = false;

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (!this.triggered) {
                    this.triggered = true;
                    adControlAccessor.fireAdEvent(new AdEvent(AdEvent.AdEventType.CLOSED));
                    adControlAccessor.injectJavascript("mraidBridge.stateChange('default');");
                    MRAIDAdSDKBridge.this.reportSizeChangeEvent();
                }
            }
        });
    }

    private void lookupExpansionView() {
        ViewGroup adContainerView;
        ViewGroup expansionView;
        if (this.expansionView == null && (adContainerView = this.adControlAccessor.getViewParentIfExpanded()) != null && CONTENT_DESCRIPTION_AD_CONTAINER_VIEW.equals(adContainerView.getContentDescription()) && (expansionView = (ViewGroup) adContainerView.getParent()) != null && CONTENT_DESCRIPTION_EXPANSION_VIEW.equals(expansionView.getContentDescription())) {
            this.expansionView = expansionView;
        }
    }

    private Size computeExpandedSizeInPixels(ExpandProperties expandProperties, String url) {
        Size maxSize = this.adControlAccessor.getMaxSize();
        int widthToCompute = (url == null || maxSize == null) ? expandProperties.getWidth() : maxSize.getWidth();
        int heightToCompute = (url == null || maxSize == null) ? expandProperties.getHeight() : maxSize.getHeight();
        this.logger.d("Expanding Ad to " + widthToCompute + "x" + heightToCompute);
        int pixelWidth = this.adUtils.deviceIndependentPixelToPixel(widthToCompute);
        int pixelHeight = this.adUtils.deviceIndependentPixelToPixel(heightToCompute);
        return new Size(pixelWidth, pixelHeight);
    }

    private void createExpandedView() {
        this.rootView = (FrameLayout) ((Activity) getContext()).findViewById(R.id.content);
        this.expansionView = new RelativeLayout(getContext());
        this.expansionView.setContentDescription(CONTENT_DESCRIPTION_EXPANSION_VIEW);
        View dimmingView = new View(getContext());
        dimmingView.setBackgroundColor(0);
        dimmingView.setContentDescription(CONTENT_DESCRIPTION_DIMMING_VIEW);
        dimmingView.setOnTouchListener(new View.OnTouchListener() { // from class: com.amazon.device.ads.MRAIDAdSDKBridge.8
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                return true;
            }
        });
        this.expansionView.addView(dimmingView, new RelativeLayout.LayoutParams(-1, -1));
        this.adContainerView = new FrameLayout(getContext());
        this.adContainerView.setContentDescription(CONTENT_DESCRIPTION_AD_CONTAINER_VIEW);
    }

    void expandAd(final ExpandProperties expandProperties, final String url) {
        this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.MRAIDAdSDKBridge.9
            @Override // java.lang.Runnable
            public void run() {
                MRAIDAdSDKBridge.this.expandAdOnThread(expandProperties, url);
            }
        }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.MAIN_THREAD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"InlinedApi"})
    public void expandAdOnThread(ExpandProperties expandProperties, String url) {
        if (url != null) {
            this.adControlAccessor.stashView();
            this.expandedWithUrl = true;
        } else {
            this.expandedWithUrl = false;
        }
        Size expandSize = computeExpandedSizeInPixels(expandProperties, url);
        createExpandedView();
        this.adControlAccessor.moveViewToViewGroup(this.adContainerView, new RelativeLayout.LayoutParams(-1, -1), true);
        RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(expandSize.getWidth(), expandSize.getHeight());
        lp.addRule(13);
        this.expansionView.addView(this.adContainerView, lp);
        this.rootView.addView(this.expansionView, new RelativeLayout.LayoutParams(-1, -1));
        this.adControlAccessor.enableCloseButton(expandProperties.getUseCustomClose().booleanValue() ? false : true);
        ViewTreeObserver vto = this.rootView.getViewTreeObserver();
        vto.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.amazon.device.ads.MRAIDAdSDKBridge.10
            private boolean triggered = false;

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (!this.triggered) {
                    this.triggered = true;
                    MRAIDAdSDKBridge.this.logger.d("Expand ViewTreeObserver fired");
                    MRAIDAdSDKBridge.this.adControlAccessor.fireAdEvent(new AdEvent(AdEvent.AdEventType.EXPANDED));
                    MRAIDAdSDKBridge.this.adControlAccessor.injectJavascript("mraidBridge.stateChange('expanded');");
                    MRAIDAdSDKBridge.this.reportSizeChangeEvent();
                    MRAIDAdSDKBridge.this.orientationPropertyChange();
                }
            }
        });
    }

    void resizeAd(final ResizeProperties resizeProperties) {
        final Size resizeSize = computeResizeSizeInPixels(resizeProperties);
        this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.MRAIDAdSDKBridge.11
            @Override // java.lang.Runnable
            public void run() {
                MRAIDAdSDKBridge.this.resizeAdOnThread(resizeProperties, resizeSize);
            }
        }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.MAIN_THREAD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resizeAdOnThread(ResizeProperties resizeProperties, Size resizeSize) {
        createResizedView();
        int leftMargin = this.adUtils.deviceIndependentPixelToPixel(this.defaultPosition.getX() + resizeProperties.getOffsetX());
        int topMargin = this.adUtils.deviceIndependentPixelToPixel(this.defaultPosition.getY() + resizeProperties.getOffsetY());
        RelativePosition closePosition = RelativePosition.fromString(resizeProperties.getCustomClosePosition());
        Size maxSize = this.adControlAccessor.getMaxSize();
        int maxWidth = this.adUtils.deviceIndependentPixelToPixel(maxSize.getWidth());
        int maxHeight = this.adUtils.deviceIndependentPixelToPixel(maxSize.getHeight());
        if (!resizeProperties.getAllowOffscreen().booleanValue()) {
            if (resizeSize.getWidth() > maxWidth) {
                resizeSize.setWidth(maxWidth);
            }
            if (resizeSize.getHeight() > maxHeight) {
                resizeSize.setHeight(maxHeight);
            }
            if (leftMargin < 0) {
                leftMargin = 0;
            } else if (resizeSize.getWidth() + leftMargin > maxWidth) {
                leftMargin = maxWidth - resizeSize.getWidth();
            }
            if (topMargin < 0) {
                topMargin = 0;
            } else if (resizeSize.getHeight() + topMargin > maxHeight) {
                topMargin = maxHeight - resizeSize.getHeight();
            }
        } else if (!isValidClosePosition(closePosition, topMargin, leftMargin, resizeSize, maxWidth, maxHeight)) {
            fireErrorEvent("Resize failed because close event area must be entirely on screen.", "resize");
            return;
        }
        RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(resizeSize.getWidth(), resizeSize.getHeight());
        this.adControlAccessor.moveViewToViewGroup(this.resizedView, lp, false);
        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(resizeSize.getWidth(), resizeSize.getHeight());
        params.gravity = 48;
        params.leftMargin = leftMargin;
        params.topMargin = topMargin;
        if (this.rootView.equals(this.resizedView.getParent())) {
            this.resizedView.setLayoutParams(params);
        } else {
            this.rootView.addView(this.resizedView, params);
        }
        this.adControlAccessor.enableCloseButton(false, closePosition);
        ViewTreeObserver vto = this.rootView.getViewTreeObserver();
        vto.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.amazon.device.ads.MRAIDAdSDKBridge.12
            private boolean triggered = false;

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (!this.triggered) {
                    this.triggered = true;
                    int[] onScreen = new int[2];
                    MRAIDAdSDKBridge.this.resizedView.getLocationOnScreen(onScreen);
                    Rect positionOnScreen = new Rect(onScreen[0], onScreen[1], onScreen[0] + MRAIDAdSDKBridge.this.resizedView.getWidth(), onScreen[1] + MRAIDAdSDKBridge.this.resizedView.getHeight());
                    AdEvent adEvent = new AdEvent(AdEvent.AdEventType.RESIZED);
                    adEvent.setParameter(AdEvent.POSITION_ON_SCREEN, positionOnScreen);
                    MRAIDAdSDKBridge.this.adControlAccessor.fireAdEvent(adEvent);
                    MRAIDAdSDKBridge.this.adControlAccessor.injectJavascript("mraidBridge.stateChange('resized');");
                    MRAIDAdSDKBridge.this.reportSizeChangeEvent();
                }
            }
        });
    }

    private boolean isValidClosePosition(RelativePosition closePosition, int topMargin, int leftMargin, Size resizeSize, int maxWidth, int maxHeight) {
        int closeButtonSize = this.adUtils.deviceIndependentPixelToPixel(50);
        int top = 0;
        int bottom = 0;
        int left = 0;
        int right = 0;
        switch (closePosition) {
            case TOP_LEFT:
                top = topMargin;
                left = leftMargin;
                bottom = top + closeButtonSize;
                right = left + closeButtonSize;
                break;
            case TOP_RIGHT:
                top = topMargin;
                right = leftMargin + resizeSize.getWidth();
                bottom = top + closeButtonSize;
                left = right - closeButtonSize;
                break;
            case TOP_CENTER:
                top = topMargin;
                left = ((resizeSize.getWidth() / 2) + leftMargin) - (closeButtonSize / 2);
                bottom = top + closeButtonSize;
                right = left + closeButtonSize;
                break;
            case BOTTOM_LEFT:
                bottom = topMargin + resizeSize.getHeight();
                left = leftMargin;
                top = bottom - closeButtonSize;
                right = left + closeButtonSize;
                break;
            case BOTTOM_RIGHT:
                bottom = topMargin + resizeSize.getHeight();
                right = leftMargin + resizeSize.getWidth();
                top = bottom - closeButtonSize;
                left = right - closeButtonSize;
                break;
            case BOTTOM_CENTER:
                bottom = topMargin + resizeSize.getHeight();
                left = ((resizeSize.getWidth() / 2) + leftMargin) - (closeButtonSize / 2);
                top = bottom - closeButtonSize;
                right = left + closeButtonSize;
                break;
            case CENTER:
                top = ((resizeSize.getHeight() / 2) + topMargin) - (closeButtonSize / 2);
                left = ((resizeSize.getWidth() / 2) + leftMargin) - (closeButtonSize / 2);
                bottom = top + closeButtonSize;
                right = left + closeButtonSize;
                break;
        }
        if (top < 0 || left < 0 || bottom > maxHeight || right > maxWidth) {
            return false;
        }
        return true;
    }

    private Size computeResizeSizeInPixels(ResizeProperties resizeProperties) {
        int widthToCompute = resizeProperties.getWidth();
        int heightToCompute = resizeProperties.getHeight();
        int pixelWidth = this.adUtils.deviceIndependentPixelToPixel(widthToCompute);
        int pixelHeight = this.adUtils.deviceIndependentPixelToPixel(heightToCompute);
        return new Size(pixelWidth, pixelHeight);
    }

    private void createResizedView() {
        if (this.resizedView == null) {
            if (this.rootView == null) {
                this.rootView = (FrameLayout) ((Activity) getContext()).findViewById(R.id.content);
            }
            this.resizedView = new RelativeLayout(getContext());
            this.resizedView.setContentDescription(CONTENT_DESCRIPTION_RESIZED_VIEW);
        }
    }

    void reportSizeChangeEvent() {
        Position currentPosition = this.adControlAccessor.getCurrentPosition();
        if (currentPosition != null) {
            this.adControlAccessor.injectJavascript("mraidBridge.sizeChange(" + currentPosition.getSize().getWidth() + com.amazon.identity.auth.device.dataobject.AppInfo.DELIM + currentPosition.getSize().getHeight() + ");");
        }
    }

    void orientationPropertyChange() {
        if (this.adControlAccessor.isVisible() && this.adControlAccessor.isModal()) {
            Activity activity = (Activity) getContext();
            int originalOrientation = activity.getRequestedOrientation();
            Position currentPosition = this.adControlAccessor.getCurrentPosition();
            this.logger.d("Current Orientation: " + originalOrientation);
            if (!AdState.EXPANDED.equals(this.adControlAccessor.getAdState())) {
                switch (this.orientationProperties.getForceOrientation()) {
                    case PORTRAIT:
                        activity.setRequestedOrientation(1);
                        break;
                    case LANDSCAPE:
                        activity.setRequestedOrientation(0);
                        break;
                }
            }
            if (AdState.EXPANDED.equals(this.adControlAccessor.getAdState()) || ForceOrientation.NONE.equals(this.orientationProperties.getForceOrientation())) {
                if (this.orientationProperties.isAllowOrientationChange().booleanValue()) {
                    int currentOrientation = ((Activity) this.adControlAccessor.getContext()).getRequestedOrientation();
                    if (currentOrientation != -1) {
                        ((Activity) this.adControlAccessor.getContext()).setRequestedOrientation(-1);
                    }
                } else if (this.adControlAccessor.isModal()) {
                    activity.setRequestedOrientation(DisplayUtils.determineCanonicalScreenOrientation(activity));
                }
            }
            int newOrientation = activity.getRequestedOrientation();
            this.logger.d("New Orientation: " + newOrientation);
            if (newOrientation != originalOrientation && currentPosition != null) {
                Position newPosition = this.adControlAccessor.getCurrentPosition();
                if (currentPosition.getSize().getWidth() != newPosition.getSize().getWidth()) {
                    reportSizeChangeEvent();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fireErrorEvent(String message, String action) {
        this.adControlAccessor.injectJavascript(String.format(Locale.US, ERROR_EVENT_FORMAT, message, action));
    }

    private static class GetCurrentPositionJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "GetCurrentPosition";
        private final MRAIDAdSDKBridge bridge;

        public GetCurrentPositionJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            return this.bridge.getCurrentPosition();
        }
    }

    private static class GetDefaultPositionJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "GetDefaultPosition";
        private final MRAIDAdSDKBridge bridge;

        public GetDefaultPositionJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            return this.bridge.getDefaultPosition();
        }
    }

    private static class GetMaxSizeJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "GetMaxSize";
        private final MRAIDAdSDKBridge bridge;

        public GetMaxSizeJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            return this.bridge.getMaxSize();
        }
    }

    private static class GetScreenSizeJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "GetScreenSize";
        private final MRAIDAdSDKBridge bridge;

        public GetScreenSizeJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            return this.bridge.getScreenSize();
        }
    }

    private static class GetPlacementTypeJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "GetPlacementType";
        private final MRAIDAdSDKBridge bridge;

        public GetPlacementTypeJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            JSONObject json = new JSONObject();
            JSONUtils.put(json, "placementType", this.bridge.getPlacementType());
            return json;
        }
    }

    private static class SetOrientationPropertiesJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "SetOrientationProperties";
        private final MRAIDAdSDKBridge bridge;

        public SetOrientationPropertiesJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            this.bridge.setOrientationProperties(JSONUtils.getBooleanFromJSON(parameters, "allowOrientationChange", false), JSONUtils.getStringFromJSON(parameters, "forceOrientation", null));
            return null;
        }
    }

    private static class GetExpandPropertiesJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "GetExpandProperties";
        private final MRAIDAdSDKBridge bridge;

        public GetExpandPropertiesJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            return this.bridge.getExpandProperties();
        }
    }

    private static class SetExpandPropertiesJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "SetExpandProperties";
        private final MRAIDAdSDKBridge bridge;

        public SetExpandPropertiesJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            this.bridge.setExpandProperties(JSONUtils.getIntegerFromJSON(parameters, "width", 0), JSONUtils.getIntegerFromJSON(parameters, "height", 0), JSONUtils.getBooleanFromJSON(parameters, "useCustomClose", false));
            return null;
        }
    }

    private static class GetResizePropertiesJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "GetResizeProperties";
        private final MRAIDAdSDKBridge bridge;

        public GetResizePropertiesJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            return this.bridge.getResizeProperties();
        }
    }

    private static class SetResizePropertiesJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "SetResizeProperties";
        private final MRAIDAdSDKBridge bridge;

        public SetResizePropertiesJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            this.bridge.setResizeProperties(JSONUtils.getIntegerFromJSON(parameters, "width", 0), JSONUtils.getIntegerFromJSON(parameters, "height", 0), JSONUtils.getIntegerFromJSON(parameters, "offsetX", 0), JSONUtils.getIntegerFromJSON(parameters, "offsetY", 0), JSONUtils.getStringFromJSON(parameters, "customClosePosition", null), JSONUtils.getBooleanFromJSON(parameters, "allowOffscreen", false));
            return null;
        }
    }

    private static class UseCustomCloseJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "UseCustomClose";
        private final MRAIDAdSDKBridge bridge;

        public UseCustomCloseJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            this.bridge.setUseCustomClose(JSONUtils.getBooleanFromJSON(parameters, "useCustomClose", false));
            return null;
        }
    }

    private static class CloseJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "Close";
        private final MRAIDAdSDKBridge bridge;

        public CloseJSIF(MRAIDAdSDKBridge bridge) {
            super("Close");
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            this.bridge.close();
            return null;
        }
    }

    private static class ExpandJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "Expand";
        private final MRAIDAdSDKBridge bridge;

        public ExpandJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            this.bridge.expand(JSONUtils.getStringFromJSON(parameters, "url", null));
            return null;
        }
    }

    private static class ResizeJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "Resize";
        private final MRAIDAdSDKBridge bridge;

        public ResizeJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            this.bridge.resize();
            return null;
        }
    }

    private static class PlayVideoJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "PlayVideo";
        private final MRAIDAdSDKBridge bridge;

        public PlayVideoJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            this.bridge.playVideo(JSONUtils.getStringFromJSON(parameters, "url", null));
            return null;
        }
    }

    private static class OpenJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "Open";
        private final MRAIDAdSDKBridge bridge;

        public OpenJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            this.bridge.open(JSONUtils.getStringFromJSON(parameters, "url", null));
            return null;
        }
    }

    private static class SupportsJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "Supports";
        private final MRAIDAdSDKBridge bridge;

        public SupportsJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            return this.bridge.getSupportedFeatures();
        }
    }

    private static class CreateCalendarEventJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "CreateCalendarEvent";
        private final MRAIDAdSDKBridge bridge;

        public CreateCalendarEventJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            this.bridge.createCalendarEvent(JSONUtils.getStringFromJSON(parameters, "description", null), JSONUtils.getStringFromJSON(parameters, "location", null), JSONUtils.getStringFromJSON(parameters, "summary", null), JSONUtils.getStringFromJSON(parameters, "start", null), JSONUtils.getStringFromJSON(parameters, "end", null));
            return null;
        }
    }

    private static class StorePictureJSIF extends JavascriptInteractor.JavascriptMethodExecutor {
        private static final String name = "StorePicture";
        private final MRAIDAdSDKBridge bridge;

        public StorePictureJSIF(MRAIDAdSDKBridge bridge) {
            super(name);
            this.bridge = bridge;
        }

        @Override // com.amazon.device.ads.JavascriptInteractor.JavascriptMethodExecutor
        public JSONObject execute(JSONObject parameters) {
            this.bridge.storePicture(JSONUtils.getStringFromJSON(parameters, "url", null));
            return null;
        }
    }

    static class AlertDialogFactory {
        AlertDialogFactory() {
        }

        public AlertDialog.Builder createBuilder(Context context) {
            return new AlertDialog.Builder(context);
        }
    }
}

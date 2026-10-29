package com.amazon.ags.html5.overlay;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.OverlayBindingKeys;
import com.amazon.ags.html5.factory.ServiceFactory;
import com.amazon.ags.html5.javascript.JavascriptRepository;
import com.amazon.ags.html5.javascript.domain.CloseOverlayListener;
import com.amazon.ags.html5.javascript.domain.JavascriptInterface;
import com.amazon.ags.html5.javascript.domain.MessageHandlerReadyListener;
import com.amazon.ags.html5.util.JSONUtils;
import com.amazon.ags.html5.util.ResourceUtils;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import com.newrelic.agent.android.tracing.TraceMachine;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public class GameCircleUserInterface extends Activity implements CloseOverlayListener, TraceFieldInterface {
    private static final String TAG = "GC_" + GameCircleUserInterface.class.getSimpleName();

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

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        TraceMachine.startTracing("GameCircleUserInterface");
        try {
            TraceMachine.enterMethod(this._nr_trace, "GameCircleUserInterface#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "GameCircleUserInterface#onCreate", null);
        }
        super.onCreate(bundle);
        try {
            final ServiceFactory serviceFactory = ServiceFactory.getInstance();
            final WebView webView = serviceFactory.getWebViewFactory().newOverlayWebView(this);
            webView.getSettings().setLoadWithOverviewMode(true);
            webView.getSettings().setUseWideViewPort(true);
            webView.getSettings().setSupportZoom(false);
            webView.getSettings().setBuiltInZoomControls(false);
            JavascriptInterface javascriptInterface = serviceFactory.getJavascriptInterface(webView, "overlaywebview");
            javascriptInterface.addCloseOverlayListener(this);
            webView.addJavascriptInterface(javascriptInterface, "hostinterface");
            JavascriptRepository javascriptRepository = serviceFactory.getJavascriptRepository();
            javascriptInterface.addMessageHandlerReadyListener(new MessageHandlerReadyListener() { // from class: com.amazon.ags.html5.overlay.GameCircleUserInterface.1
                @Override // com.amazon.ags.html5.javascript.domain.MessageHandlerReadyListener
                public void messageHandlerReady() {
                    String overlayData = GameCircleUserInterface.this.getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_DATA_BUNDLE_KEY);
                    String overlaySessionGameCircleVersion = GameCircleUserInterface.this.getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_GAMECIRCLE_VERSION_KEY);
                    String overlaySessionClientVersion = GameCircleUserInterface.this.getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_CLIENT_VERSION_KEY);
                    String overlaySessionContentVersion = GameCircleUserInterface.this.getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_CONTENT_VERSION_KEY);
                    String overlaySessionAppName = GameCircleUserInterface.this.getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_APPLICATION_NAME_KEY);
                    String overlaySessionLanguageCode = GameCircleUserInterface.this.getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_LANGUAGE_CODE_KEY);
                    String overlaySessionCountryCode = GameCircleUserInterface.this.getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_COUNTRY_CODE_KEY);
                    String overlaySessionDeviceId = GameCircleUserInterface.this.getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_IDENTIFIER_KEY);
                    String overlaySessionDeviceManufacturer = GameCircleUserInterface.this.getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_MANUFACTURER_KEY);
                    String overlaySessionDeviceModel = GameCircleUserInterface.this.getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_MODEL_KEY);
                    String overlaySessionDeviceType = GameCircleUserInterface.this.getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_TYPE_KEY);
                    String overlaySessionVariations = GameCircleUserInterface.this.getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_VARIATION_CACHE);
                    String sanitizedOverlayData = JSONUtils.sanitize(overlayData);
                    try {
                        JSONObject overlayDataJson = JSONObjectInstrumentation.init(sanitizedOverlayData);
                        overlayDataJson.put("gameCircleVersion", overlaySessionGameCircleVersion);
                        overlayDataJson.put("clientVersion", overlaySessionClientVersion);
                        overlayDataJson.put("contentVersion", overlaySessionContentVersion);
                        overlayDataJson.put(AnalyticAttribute.APP_NAME_ATTRIBUTE, overlaySessionAppName);
                        overlayDataJson.put(NativeCallKeys.LANGUAGE_CODE, overlaySessionLanguageCode);
                        overlayDataJson.put(NativeCallKeys.COUNTRY_CODE, overlaySessionCountryCode);
                        overlayDataJson.put("deviceId", overlaySessionDeviceId);
                        overlayDataJson.put(AnalyticAttribute.DEVICE_MANUFACTURER_ATTRIBUTE, overlaySessionDeviceManufacturer);
                        overlayDataJson.put(AnalyticAttribute.DEVICE_MODEL_ATTRIBUTE, overlaySessionDeviceModel);
                        overlayDataJson.put("deviceType", overlaySessionDeviceType);
                        overlayDataJson.put("canSendMail", true);
                        JSONObject overlayExperiments = JSONObjectInstrumentation.init(overlaySessionVariations);
                        overlayDataJson.put("experiments", overlayExperiments);
                        if (overlayDataJson != null) {
                            sanitizedOverlayData = !(overlayDataJson instanceof JSONObject) ? overlayDataJson.toString() : JSONObjectInstrumentation.toString(overlayDataJson);
                        }
                    } catch (Exception e2) {
                        Log.e(GameCircleUserInterface.TAG, "Error occurred while adding client version to overlay initialization", e2);
                    }
                    final String overlayInputData = sanitizedOverlayData;
                    try {
                        serviceFactory.getUiThreadHandler().post(new Runnable() { // from class: com.amazon.ags.html5.overlay.GameCircleUserInterface.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    webView.loadUrl("javascript:handleOverlayData(" + overlayInputData + ");");
                                } catch (Exception e3) {
                                    Log.w(GameCircleUserInterface.TAG, "Unexpected error occurred while loading data into overlay.  Overlay will close.", e3);
                                    GameCircleUserInterface.this.finish();
                                }
                            }
                        });
                    } catch (Exception e3) {
                        Log.w(GameCircleUserInterface.TAG, "Unexpected error occurred while processing overlay message.  Overlay will close.", e3);
                        GameCircleUserInterface.this.finish();
                    }
                }
            });
            javascriptRepository.loadOverlayJavascript(webView);
            setViewWithSize(webView);
        } catch (Exception e2) {
            Log.w(TAG, "Unexpected error occurred while displaying overlay.  Overlay will close.", e2);
            finish();
        } catch (IllegalAccessError iae) {
            Log.w(TAG, "ServiceFactory isn't ready.  Overlay will close.", iae);
            finish();
        }
        TraceMachine.exitMethod();
    }

    private void setViewWithSize(View webView) {
        float wScale;
        float hScale;
        int statusBarHeight = getStatusBarHeight();
        Display display = ((WindowManager) getSystemService("window")).getDefaultDisplay();
        Point size = new Point(display.getWidth(), display.getHeight());
        Resources res = getResources();
        int screenSize = res.getConfiguration().screenLayout & 15;
        if (screenSize == 3 || screenSize == 4) {
            if (size.x > size.y) {
                wScale = 0.5f;
                hScale = 0.8f;
            } else {
                wScale = 0.8f;
                hScale = 0.7f;
            }
            setContentView(ResourceUtils.getLayoutId(getBaseContext(), "modal_overlay_container"));
            LinearLayout container = (LinearLayout) findViewById(ResourceUtils.getIdentifier(getBaseContext(), AnalyticsEvent.EVENT_ID, "modal_overlay_container"));
            container.addView(webView);
            size.set((int) (size.x * wScale), (int) (size.y * hScale));
        } else {
            RelativeLayout relativeLayout = new RelativeLayout(getBaseContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(12, 1);
            relativeLayout.addView(webView, layoutParams);
            setContentView(relativeLayout);
            size.set(size.x, size.y - statusBarHeight);
            ViewGroup.LayoutParams rLayoutParams = relativeLayout.getLayoutParams();
            rLayoutParams.width = size.x;
        }
        ViewGroup.LayoutParams params = webView.getLayoutParams();
        AnimationDrawable spinner = (AnimationDrawable) getResources().getDrawable(ResourceUtils.getDrawableId(getBaseContext(), "gc_overlay_spinner"));
        InsetDrawable background = new InsetDrawable((Drawable) spinner, (size.x - 32) / 2, (size.y - 32) / 2, (size.x - 32) / 2, (size.y - 32) / 2);
        webView.setBackgroundColor(0);
        webView.setBackgroundDrawable(background);
        spinner.start();
        params.width = size.x;
        params.height = size.y;
        Log.d(TAG, "View size set to width: " + params.width + " height: " + params.height);
    }

    private int getStatusBarHeight() {
        int resourceId = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (resourceId <= 0) {
            return 0;
        }
        int result = getResources().getDimensionPixelSize(resourceId);
        return result;
    }

    @Override // com.amazon.ags.html5.javascript.domain.CloseOverlayListener
    public void closeOverlay() {
        finish();
    }
}

package com.amazon.ags.html5.overlay;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.LinearLayout;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.OverlayBindingKeys;
import com.amazon.ags.html5.factory.ServiceFactory;
import com.amazon.ags.html5.javascript.JavascriptRepository;
import com.amazon.ags.html5.javascript.domain.CloseAlertListener;
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
public class GameCircleAlertUserInterface extends Activity implements CloseAlertListener, TraceFieldInterface {
    private static final String TAG = "GC_" + GameCircleAlertUserInterface.class.getSimpleName();

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
        TraceMachine.startTracing("GameCircleAlertUserInterface");
        try {
            TraceMachine.enterMethod(this._nr_trace, "GameCircleAlertUserInterface#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "GameCircleAlertUserInterface#onCreate", null);
        }
        super.onCreate(bundle);
        String overlayData = getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_DATA_BUNDLE_KEY);
        String overlaySessionGameCircleVersion = getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_GAMECIRCLE_VERSION_KEY);
        String overlaySessionClientVersion = getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_CLIENT_VERSION_KEY);
        String overlaySessionContentVersion = getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_CONTENT_VERSION_KEY);
        String overlaySessionAppName = getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_APPLICATION_NAME_KEY);
        String overlaySessionLanguageCode = getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_LANGUAGE_CODE_KEY);
        String overlaySessionCountryCode = getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_COUNTRY_CODE_KEY);
        String overlaySessionDeviceId = getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_IDENTIFIER_KEY);
        String overlaySessionDeviceManufacturer = getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_MANUFACTURER_KEY);
        String overlaySessionDeviceModel = getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_MODEL_KEY);
        String overlaySessionDeviceType = getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_TYPE_KEY);
        String overlaySessionVariations = getIntent().getExtras().getString(OverlayBindingKeys.OVERLAY_SESSION_VARIATION_CACHE);
        String sanitizedOverlayData = JSONUtils.sanitize(overlayData);
        try {
            JSONObject overlayDataJson = JSONObjectInstrumentation.init(overlayData);
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
            Log.e(TAG, "Error occurred while preparing alert initialization data", e2);
        }
        final String processedOverlayData = sanitizedOverlayData;
        try {
            final ServiceFactory serviceFactory = ServiceFactory.getInstance();
            final WebView webView = serviceFactory.getWebViewFactory().newOverlayWebView(this);
            webView.getSettings().setLoadWithOverviewMode(true);
            webView.getSettings().setUseWideViewPort(true);
            webView.getSettings().setSupportZoom(false);
            webView.getSettings().setBuiltInZoomControls(false);
            JavascriptInterface javascriptInterface = serviceFactory.getJavascriptInterface(webView, "overlaywebview");
            javascriptInterface.addCloseAlertListener(this);
            JavascriptRepository javascriptRepository = serviceFactory.getJavascriptRepository();
            javascriptInterface.addMessageHandlerReadyListener(new MessageHandlerReadyListener() { // from class: com.amazon.ags.html5.overlay.GameCircleAlertUserInterface.1
                @Override // com.amazon.ags.html5.javascript.domain.MessageHandlerReadyListener
                public void messageHandlerReady() {
                    final String overlayInputData = processedOverlayData;
                    try {
                        serviceFactory.getUiThreadHandler().post(new Runnable() { // from class: com.amazon.ags.html5.overlay.GameCircleAlertUserInterface.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    webView.loadUrl("javascript:handleOverlayData(" + overlayInputData + ");");
                                } catch (Exception e3) {
                                    Log.w(GameCircleAlertUserInterface.TAG, "Unexpected error occurred while loading data into alert.  Alert will close.", e3);
                                    GameCircleAlertUserInterface.this.finish();
                                }
                            }
                        });
                    } catch (Exception e3) {
                        Log.w(GameCircleAlertUserInterface.TAG, "Unexpected error occurred while processing alert message.  Alert will close.", e3);
                        GameCircleAlertUserInterface.this.finish();
                    }
                }
            });
            javascriptRepository.loadAlertJavascript(webView);
            setContentView(ResourceUtils.getLayoutId(getBaseContext(), "modal_alert_container"));
            LinearLayout container = (LinearLayout) findViewById(ResourceUtils.getIdentifier(getBaseContext(), AnalyticsEvent.EVENT_ID, "modal_alert_container"));
            webView.setBackgroundColor(0);
            container.addView(webView);
            Display display = ((WindowManager) getSystemService("window")).getDefaultDisplay();
            ViewGroup.LayoutParams params = webView.getLayoutParams();
            params.width = display.getWidth();
            params.height = display.getHeight();
            webView.addJavascriptInterface(javascriptInterface, "hostinterface");
        } catch (Exception e3) {
            Log.w(TAG, "Unexpected error occurred while displaying alert.  Alert will close.", e3);
            finish();
        }
        TraceMachine.exitMethod();
    }

    @Override // com.amazon.ags.html5.javascript.domain.CloseAlertListener
    public void closeAlert() {
        finish();
    }
}

package com.amazon.ags.html5.overlay.toasts;

import android.app.Activity;
import android.os.Handler;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.LinearLayout;
import com.amazon.ags.api.overlay.PopUpLocation;
import com.amazon.ags.client.JSONRequest;
import com.amazon.ags.constants.BindingKeys;
import com.amazon.ags.constants.ServiceActionCode;
import com.amazon.ags.constants.ToastKeys;
import com.amazon.ags.html5.javascript.JavascriptRepository;
import com.amazon.ags.html5.overlay.PopUpPrefs;
import com.amazon.ags.html5.service.ServiceHelper;
import com.amazon.ags.html5.util.JSONUtils;
import com.amazon.ags.html5.util.LocalizationUtil;
import com.amazon.ags.html5.util.WebViewFactory;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ClickableWebViewToast extends ClickableToastImpl {
    private static final String TAG = "GC_" + ClickableWebViewToast.class.getSimpleName();
    private String data;
    private final JavascriptRepository jsRepository;
    private LocalizationUtil localizationUtil;
    private ServiceHelper serviceHelper;
    private final Handler uiPoster;
    private final WebView webView;

    public ClickableWebViewToast(Activity activity, Handler uiPoster, ClickableToastImpl.ToastParams params, WebViewFactory webViewFactory, JavascriptRepository jsRepository, ServiceHelper serviceHelper, LocalizationUtil localizationUtil) {
        super(activity, params);
        this.serviceHelper = serviceHelper;
        this.uiPoster = uiPoster;
        this.jsRepository = jsRepository;
        this.webView = webViewFactory.newToastWebView();
        this.webView.getSettings().setRenderPriority(WebSettings.RenderPriority.LOW);
        this.webView.setBackgroundColor(0);
        this.jsRepository.loadToastJavascript(this.webView);
        this.localizationUtil = localizationUtil;
        this.data = "{}";
        addView(this.webView);
        setViewParams(this.webView);
    }

    @Override // com.amazon.ags.html5.overlay.toasts.ClickableToastImpl
    protected View initView() {
        String languageCode = this.localizationUtil.getLanguageCode();
        String countryCode = this.localizationUtil.getCountryCode();
        Boolean isFireTV = Boolean.valueOf(this.toastParams.getIsFireTV());
        try {
            JSONObject toastParams = JSONObjectInstrumentation.init(this.data);
            Integer toastDurationFadeIn = Integer.valueOf(toastParams.getInt("toastDurationFadeIn"));
            Integer toastDurationShow = Integer.valueOf(toastParams.getInt("toastDurationShow"));
            Integer toastDurationFadeOut = Integer.valueOf(toastParams.getInt("toastDurationFadeOut"));
            String locationIsGCDefault = toastParams.getString("locationIsGCDefault");
            if (toastDurationFadeIn != null) {
                this.toastParams.setFadeInDuration(toastDurationFadeIn.intValue());
            }
            if (toastDurationShow != null) {
                this.toastParams.setDuration(toastDurationShow.intValue());
            }
            if (toastDurationFadeOut != null) {
                this.toastParams.setFadeOutDuration(toastDurationFadeOut.intValue());
            }
            if ("true".equals(locationIsGCDefault)) {
                this.toastParams.setPopUpLocation(PopUpLocation.BOTTOM_CENTER);
            } else {
                this.toastParams.setPopUpLocation(PopUpPrefs.INSTANCE.getLocation());
            }
            String jsRequest = "javascript:var data = {params:" + this.data + ", aggregateCount:0, languageCode:'" + languageCode + "', countryCode:'" + countryCode + "', isFireTV: " + isFireTV + "};renderData(data);";
            this.webView.loadUrl(jsRequest);
        } catch (Exception e) {
            Log.e(TAG, "Unable to prepare toast content.  Toast parameters not valid JSON", e);
        }
        return this.webView;
    }

    @Override // com.amazon.ags.html5.overlay.toasts.ClickableToastImpl, com.amazon.ags.html5.overlay.toasts.ClickableToast
    public void update(String json, int aggregateCount) {
        final String jsRequest = "javascript:var data = {params:" + JSONUtils.sanitize(json) + ", aggregateCount:" + Integer.toString(aggregateCount) + "};renderData(data);";
        this.uiPoster.post(new Runnable() { // from class: com.amazon.ags.html5.overlay.toasts.ClickableWebViewToast.1
            @Override // java.lang.Runnable
            public void run() {
                ClickableWebViewToast.this.webView.loadUrl(jsRequest);
            }
        });
    }

    private void setViewParams(View view) {
        LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) view.getLayoutParams();
        params.width = (int) TypedValue.applyDimension(1, 320.0f, getResources().getDisplayMetrics());
        params.height = -2;
        params.gravity = 1;
    }

    @Override // com.amazon.ags.html5.overlay.toasts.ClickableToast
    public void setToastData(String jsonData) {
        this.data = jsonData;
    }

    @Override // com.amazon.ags.html5.overlay.toasts.ClickableToastImpl, com.amazon.ags.html5.overlay.toasts.ClickableToast
    public void show(Handler handler) {
        super.show(handler);
        JSONRequest jsonRequest = new JSONRequest() { // from class: com.amazon.ags.html5.overlay.toasts.ClickableWebViewToast.2
            @Override // com.amazon.ags.client.JSONRequest
            public void setResponse(JSONObject response) {
            }

            @Override // com.amazon.ags.client.JSONRequest
            public JSONObject getRequest() {
                JSONObject request = new JSONObject();
                try {
                    JSONObject originalToastRequest = JSONObjectInstrumentation.init(ClickableWebViewToast.this.data);
                    request.put(ServiceActionCode.ACTION_CODE_KEY, ServiceActionCode.HANDLE_TOAST_DISPLAY_METRIC);
                    request.put(BindingKeys.REQUEST_ID_KEY, UUID.randomUUID().toString());
                    request.put(ToastKeys.TOAST_REQUEST_DISPLAYED, originalToastRequest);
                } catch (JSONException e) {
                    Log.w(ClickableWebViewToast.TAG, "Error building toast metric request", e);
                }
                return request;
            }
        };
        if (this.serviceHelper != null) {
            this.serviceHelper.handleRequestAsync(jsonRequest);
        } else {
            Log.w(TAG, "Error submitting toast metric request");
        }
    }

    public void setServiceHelper(ServiceHelper serviceHelper) {
        this.serviceHelper = serviceHelper;
    }
}

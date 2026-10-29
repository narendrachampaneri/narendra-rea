package com.amazon.ags.html5.overlay.toasts;

import android.app.Activity;
import android.os.Handler;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.amazon.ags.api.overlay.PopUpLocation;
import com.amazon.ags.client.JSONRequest;
import com.amazon.ags.constants.BindingKeys;
import com.amazon.ags.constants.ServiceActionCode;
import com.amazon.ags.constants.ToastKeys;
import com.amazon.ags.html5.factory.AGSClientInstanceCoordinator;
import com.amazon.ags.html5.factory.AGSClientInstanceCoordinatorListener;
import com.amazon.ags.html5.javascript.JavascriptRepository;
import com.amazon.ags.html5.overlay.PopUpPrefs;
import com.amazon.ags.html5.service.ServiceHelper;
import com.amazon.ags.html5.util.LocalizationUtil;
import com.amazon.ags.html5.util.WebViewFactory;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ClickableToastFactoryImpl implements ClickableToastFactory, AGSClientInstanceCoordinatorListener {
    private static final String TAG = "GC_" + ClickableToastFactoryImpl.class.getSimpleName();
    private static final float TOAST_HORIZONTAL_MARGIN = 0.025f;
    private static final float TOAST_VERTICAL_MARGIN = 0.03f;
    private final JavascriptRepository jsRepository;
    private LocalizationUtil localizationUtil;
    private ClickableWebViewToast toast;
    private final Handler uiPoster;
    private final WebViewFactory webViewFactory;
    private ServiceHelper serviceHelper = null;
    private volatile Activity activity = AGSClientInstanceCoordinator.getInstance().getCurrentActivity();

    public ClickableToastFactoryImpl(Handler uiPoster, WebViewFactory webViewFactory, JavascriptRepository jsRepository, LocalizationUtil localizationUtil) {
        AGSClientInstanceCoordinator.getInstance().addAGSClientInstanceCoordinatorListener(this);
        this.uiPoster = uiPoster;
        this.webViewFactory = webViewFactory;
        this.jsRepository = jsRepository;
        this.localizationUtil = localizationUtil;
        this.toast = new ClickableWebViewToast(this.activity, uiPoster, getToastParams(PopUpPrefs.INSTANCE.getLocation()), webViewFactory, jsRepository, this.serviceHelper, localizationUtil);
    }

    @Override // com.amazon.ags.html5.overlay.toasts.ClickableToastFactory
    public ClickableToast getClickableWebViewToast(final String jsonData) {
        this.toast.setToastData(jsonData);
        this.toast.setToastOnTouchListener(new View.OnTouchListener() { // from class: com.amazon.ags.html5.overlay.toasts.ClickableToastFactoryImpl.1
            boolean touched = false;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                if (!this.touched) {
                    this.touched = true;
                    ClickableToastFactoryImpl.this.toast.destroy();
                    try {
                        JSONObject data = JSONObjectInstrumentation.init(jsonData);
                        final JSONArray actions = data.getJSONArray(ToastKeys.ACTION_MAPPINGS_KEY);
                        if (actions != null && actions.length() > 0 && ClickableToastFactoryImpl.this.serviceHelper != null) {
                            final JSONObject touchedToastData = new JSONObject();
                            touchedToastData.put(ToastKeys.TOAST_TOUCH_X_KEY, (int) event.getX());
                            touchedToastData.put(ToastKeys.TOAST_TOUCH_Y_KEY, (int) event.getY());
                            touchedToastData.put(ToastKeys.TOAST_WIDTH_KEY, v.getWidth());
                            touchedToastData.put(ToastKeys.TOAST_HEIGHT_KEY, v.getHeight());
                            JSONRequest jsonRequest = new JSONRequest() { // from class: com.amazon.ags.html5.overlay.toasts.ClickableToastFactoryImpl.1.1
                                @Override // com.amazon.ags.client.JSONRequest
                                public void setResponse(JSONObject response) {
                                }

                                @Override // com.amazon.ags.client.JSONRequest
                                public JSONObject getRequest() {
                                    JSONObject request = new JSONObject();
                                    try {
                                        request.put(ServiceActionCode.ACTION_CODE_KEY, ServiceActionCode.HANDLE_TOAST_CLICK);
                                        request.put(BindingKeys.REQUEST_ID_KEY, UUID.randomUUID().toString());
                                        request.put(ToastKeys.ACTION_MAPPINGS_KEY, actions);
                                        request.put(ToastKeys.TOAST_CLICK_DATA_KEY, touchedToastData);
                                    } catch (JSONException e) {
                                        Log.e(ClickableToastFactoryImpl.TAG, "Error building toast click request", e);
                                    }
                                    return request;
                                }
                            };
                            ClickableToastFactoryImpl.this.serviceHelper.handleRequestAsync(jsonRequest);
                        }
                    } catch (JSONException e) {
                        Log.e(ClickableToastFactoryImpl.TAG, "Error carrying out toast touch event due to JSON error", e);
                    } catch (Exception e2) {
                        Log.e(ClickableToastFactoryImpl.TAG, "Unexpected error carrying out toast touch event", e2);
                    }
                }
                return true;
            }
        });
        this.toast.setClickable(true);
        return this.toast;
    }

    private ClickableToastImpl.ToastParams getToastParams(PopUpLocation popUpLocation) {
        ClickableToastImpl.ToastParams params = new ClickableToastImpl.ToastParams();
        params.setPopUpLocation(popUpLocation);
        params.setVerticalMarginLandscape(TOAST_VERTICAL_MARGIN);
        params.setVerticalMarginPortrait(TOAST_VERTICAL_MARGIN);
        if (popUpLocation != PopUpLocation.BOTTOM_CENTER && popUpLocation != PopUpLocation.TOP_CENTER) {
            params.setHorizontalMarginLandscape(TOAST_HORIZONTAL_MARGIN);
            params.setHorizontalMarginPortrait(TOAST_HORIZONTAL_MARGIN);
        } else {
            params.setHorizontalMarginLandscape(0.0f);
            params.setHorizontalMarginPortrait(0.0f);
        }
        return params;
    }

    public void setServiceHelper(ServiceHelper serviceHelper) {
        this.serviceHelper = serviceHelper;
        if (this.toast != null) {
            this.toast.setServiceHelper(serviceHelper);
        }
    }

    private synchronized void refreshActivity() {
        if (this.activity != AGSClientInstanceCoordinator.getInstance().getCurrentActivity()) {
            this.activity = AGSClientInstanceCoordinator.getInstance().getCurrentActivity();
            this.toast = new ClickableWebViewToast(this.activity, this.uiPoster, getToastParams(PopUpPrefs.INSTANCE.getLocation()), this.webViewFactory, this.jsRepository, this.serviceHelper, this.localizationUtil);
        }
    }

    @Override // com.amazon.ags.html5.factory.AGSClientInstanceCoordinatorListener
    public void notifyCurrentActivityChanged(Activity activity) {
        refreshActivity();
    }

    public void dismissCurrentToast() {
        if (this.toast != null) {
            this.toast.dismiss();
        }
    }
}

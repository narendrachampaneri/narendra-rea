package com.amazon.ags.html5.javascript;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.amazon.ags.client.player.PlayerClientImpl;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.NativeCallResultCode;
import com.amazon.ags.constants.NativeCallTypes;
import com.amazon.ags.constants.ProfilesBindingKeys;
import com.amazon.ags.html5.content.GCVariationManager;
import com.amazon.ags.html5.util.BrowserUtil;
import com.amazon.ags.html5.util.EmailUtil;
import com.amazon.ags.html5.util.ImageManager;
import com.amazon.ags.html5.util.LocalizationUtil;
import com.amazon.ags.html5.util.NetworkUtil;
import com.amazon.ags.storage.OfflineEvent;
import com.amazon.ags.storage.OfflineEventManager;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NativeCallHandler extends CallHandlerBase {
    private static final Set<String> supportedCalls = new HashSet(Arrays.asList(NativeCallTypes.GET_NETWORK_INFO, NativeCallTypes.GET_PACKAGE_NAME, NativeCallTypes.OPEN_EMAIL_EDITOR, NativeCallTypes.QUEUE_OFFLINE_EVENT, NativeCallTypes.DOWNLOAD_IMAGES, NativeCallTypes.GET_LOCALE_INFO, NativeCallTypes.GET_VARIATION_VARIABLE, NativeCallTypes.NOTIFY_SIGN_IN_STATE_CHANGE));
    private final BrowserUtil browserUtil;
    private final Context context;
    private final EmailUtil emailUtil;
    private final GCVariationManager gcVariationManager;
    private final ImageManager imageManager;
    private final LocalizationUtil localizationUtil;
    private final NetworkUtil networkUtil;
    private final OfflineEventManager offlineEventManager;

    public NativeCallHandler(Context context, Handler uiThreadHandler, NetworkUtil networkUtil, BrowserUtil browserUtil, EmailUtil emailUtil, OfflineEventManager offlineEventManager, ImageManager imageManager, LocalizationUtil localizationUtil, GCVariationManager gcVariationManager) {
        super(uiThreadHandler, supportedCalls);
        this.context = context;
        this.offlineEventManager = offlineEventManager;
        this.networkUtil = networkUtil;
        this.browserUtil = browserUtil;
        this.emailUtil = emailUtil;
        this.imageManager = imageManager;
        this.localizationUtil = localizationUtil;
        this.gcVariationManager = gcVariationManager;
    }

    @Override // com.amazon.ags.html5.javascript.CallHandlerBase
    protected boolean handleMessage(String rid, String nativeCallType, JSONObject request) {
        if (NativeCallTypes.GET_NETWORK_INFO.equals(nativeCallType)) {
            getNetworkInfo(rid);
            return true;
        }
        if (NativeCallTypes.GET_PACKAGE_NAME.equals(nativeCallType)) {
            getPackageName(rid);
            return true;
        }
        if (NativeCallTypes.OPEN_BROWSER.equals(nativeCallType)) {
            openBrowser(rid, request);
            return true;
        }
        if (NativeCallTypes.OPEN_EMAIL_EDITOR.equals(nativeCallType)) {
            openEmailEditor(rid, request);
            return true;
        }
        if (NativeCallTypes.QUEUE_OFFLINE_EVENT.equals(nativeCallType)) {
            queueOfflineEvent(rid, request);
            return true;
        }
        if (NativeCallTypes.DOWNLOAD_IMAGES.equals(nativeCallType)) {
            downloadImages(rid, request);
            return true;
        }
        if (NativeCallTypes.GET_LOCALE_INFO.equals(nativeCallType)) {
            retrieveLocaleInfo(rid);
            return true;
        }
        if (NativeCallTypes.GET_VARIATION_VARIABLE.equals(nativeCallType)) {
            retrieveVariationVariable(rid, request);
            return true;
        }
        if (NativeCallTypes.NOTIFY_SIGN_IN_STATE_CHANGE.equals(nativeCallType)) {
            notifySignedInStateChange(rid, request);
            return true;
        }
        return false;
    }

    private void retrieveVariationVariable(String rid, JSONObject request) {
        JSONObject variationInfo = new JSONObject();
        try {
            JSONObject parameters = request.getJSONObject(NativeCallKeys.PARAMETERS);
            String variationName = parameters.getString(NativeCallKeys.VARIATION);
            String defaultVariationVariableValue = parameters.getString(NativeCallKeys.VARIATION_VARIABLE_DEFAULT_VALUE);
            Map<String, String> gcVariations = this.gcVariationManager.getCachedVariations();
            String treatment = gcVariations.get(variationName);
            if (treatment != null) {
                variationInfo.put(NativeCallKeys.VARIATION, treatment);
            } else {
                variationInfo.put(NativeCallKeys.VARIATION, defaultVariationVariableValue);
            }
            sendReply(rid, !(variationInfo instanceof JSONObject) ? variationInfo.toString() : JSONObjectInstrumentation.toString(variationInfo), NativeCallResultCode.SUCCESS);
        } catch (JSONException e) {
            Log.w(this.TAG, "Unable to get variation data from request " + request, e);
            sendReply(rid, "{}", NativeCallResultCode.REQUEST_ERROR);
        } catch (Exception e2) {
            Log.w(this.TAG, "Cannot process getVariationVariable request: " + request, e2);
            sendReply(rid, "{}", "ERROR");
        }
    }

    private void retrieveLocaleInfo(String rid) {
        JSONObject localeInfo = new JSONObject();
        try {
            localeInfo.put(NativeCallKeys.LANGUAGE_CODE, this.localizationUtil.getLanguageCode());
            localeInfo.put(NativeCallKeys.COUNTRY_CODE, this.localizationUtil.getCountryCode());
            sendReply(rid, !(localeInfo instanceof JSONObject) ? localeInfo.toString() : JSONObjectInstrumentation.toString(localeInfo), NativeCallResultCode.SUCCESS);
        } catch (Exception e) {
            Log.w(this.TAG, "Unable to get locale information", e);
            sendReply(rid, "{}", "ERROR");
        }
    }

    private void downloadImages(String rid, JSONObject request) {
        Set<String> processedURLS = new HashSet<>();
        try {
            JSONObject parameters = request.getJSONObject(NativeCallKeys.PARAMETERS);
            JSONObject imageData = parameters.getJSONObject("imageData");
            JSONArray imagesJSON = imageData.getJSONArray("images");
            if (imagesJSON != null && imagesJSON.length() > 0) {
                for (int i = 0; i < imagesJSON.length(); i++) {
                    try {
                        JSONObject imageJSON = imagesJSON.getJSONObject(i);
                        String imageURL = imageJSON.getString("imageUrl");
                        if (!processedURLS.contains(imageURL)) {
                            this.imageManager.downloadImage(imageURL);
                            processedURLS.add(imageURL);
                        }
                    } catch (JSONException e) {
                        Log.w(this.TAG, "Unable to get image data for specific image", e);
                    } catch (Exception e2) {
                        Log.w(this.TAG, "Cannot process specific image download", e2);
                    }
                }
            }
            sendReply(rid, "{}", NativeCallResultCode.SUCCESS);
        } catch (JSONException e3) {
            Log.w(this.TAG, "Unable to get image data from request " + request, e3);
            sendReply(rid, "{}", NativeCallResultCode.REQUEST_ERROR);
        } catch (Exception e4) {
            Log.w(this.TAG, "Cannot process downloadImages request: " + request, e4);
            sendReply(rid, "{}", "ERROR");
        }
    }

    private void queueOfflineEvent(String rid, JSONObject request) {
        try {
            JSONObject parameters = request.getJSONObject(NativeCallKeys.PARAMETERS);
            String eventJsonString = parameters.getString("eventJson");
            JSONObject eventJson = JSONObjectInstrumentation.init(eventJsonString);
            OfflineEvent event = new OfflineEvent(eventJson);
            this.offlineEventManager.submitEvent(event);
            sendReply(rid, "{}", NativeCallResultCode.SUCCESS);
        } catch (JSONException e) {
            Log.e(this.TAG, "Unable to get event parameters from request " + request, e);
            sendReply(rid, "{}", NativeCallResultCode.REQUEST_ERROR);
        } catch (Exception e2) {
            Log.e(this.TAG, "Cannot process queue offline event request: " + request, e2);
            sendReply(rid, "{}", "ERROR");
        }
    }

    private void openBrowser(String rid, JSONObject request) {
        try {
            JSONObject parameters = request.getJSONObject(NativeCallKeys.PARAMETERS);
            String url = parameters.getString("url");
            this.browserUtil.launchBrowser(url);
            sendReply(rid, "{}", NativeCallResultCode.SUCCESS);
        } catch (JSONException e) {
            Log.e(this.TAG, "Unable to get browser parameters from request " + request, e);
            sendReply(rid, "{}", NativeCallResultCode.REQUEST_ERROR);
        } catch (Exception e2) {
            Log.e(this.TAG, "Cannot process launch browser request: " + request, e2);
            sendReply(rid, "{}", "ERROR");
        }
    }

    private void openEmailEditor(String rid, JSONObject request) {
        try {
            JSONObject parameters = request.getJSONObject(NativeCallKeys.PARAMETERS);
            String mailTo = parameters.getString(NativeCallKeys.MAIL_TO);
            String subject = parameters.getString(NativeCallKeys.SUBJECT);
            String body = parameters.getString("body");
            this.emailUtil.launchEmailEditor(mailTo, subject, body);
            sendReply(rid, "{}", NativeCallResultCode.SUCCESS);
        } catch (JSONException e) {
            Log.e(this.TAG, "Unable to get email parameters from request " + request, e);
            sendReply(rid, "{}", NativeCallResultCode.REQUEST_ERROR);
        } catch (Exception e2) {
            Log.e(this.TAG, "Cannot process open email request: " + request, e2);
            sendReply(rid, "{}", "ERROR");
        }
    }

    private void getNetworkInfo(String rid) {
        JSONObject networkInfo = new JSONObject();
        try {
            networkInfo.put(NativeCallKeys.CONNECTED, this.networkUtil.isNetworkConnected());
        } catch (JSONException e) {
            Log.w(this.TAG, "Unable to get network state", e);
        }
        sendReply(rid, !(networkInfo instanceof JSONObject) ? networkInfo.toString() : JSONObjectInstrumentation.toString(networkInfo), NativeCallResultCode.SUCCESS);
    }

    private void getPackageName(String rid) {
        JSONObject reply = new JSONObject();
        try {
            reply.put("PACKAGE_NAME", this.context.getPackageName());
            sendReply(rid, !(reply instanceof JSONObject) ? reply.toString() : JSONObjectInstrumentation.toString(reply), NativeCallResultCode.SUCCESS);
        } catch (JSONException e) {
            Log.w(this.TAG, "Error building response for getPackageName");
            sendReply(rid, "{}", "ERROR");
        }
    }

    private void notifySignedInStateChange(String rid, JSONObject request) {
        JSONObject reply = new JSONObject();
        try {
            JSONObject parameters = request.getJSONObject(NativeCallKeys.PARAMETERS);
            PlayerClientImpl.notifySignedInListener(parameters.getBoolean(ProfilesBindingKeys.IS_SIGNED_IN_KEY));
            sendReply(rid, !(reply instanceof JSONObject) ? reply.toString() : JSONObjectInstrumentation.toString(reply), NativeCallResultCode.SUCCESS);
        } catch (JSONException e) {
            Log.w(this.TAG, "Error notifying sign in state change: " + e.toString());
            sendReply(rid, "{}", "ERROR");
        }
    }
}

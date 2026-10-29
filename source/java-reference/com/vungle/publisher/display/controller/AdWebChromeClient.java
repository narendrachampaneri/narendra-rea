package com.vungle.publisher.display.controller;

import android.webkit.JsPromptResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.google.android.gms.appinvite.PreviewActivity;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import com.vungle.log.Logger;
import com.vungle.publisher.ac;
import com.vungle.publisher.db.model.EventTracking;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.g;
import com.vungle.publisher.x;
import com.vungle.publisher.y;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AdWebChromeClient extends WebChromeClient {

    @Inject
    EventBus a;

    @Inject
    public AdWebChromeClient() {
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String message, String str2, JsPromptResult result) {
        Logger.v(Logger.AD_TAG, "js prompt: " + message);
        boolean zStartsWith = message.startsWith("vungle:");
        if (zStartsWith) {
            String strSubstring = null;
            try {
                strSubstring = message.substring(7);
                JSONObject jSONObjectInit = JSONObjectInstrumentation.init(strSubstring);
                String string = jSONObjectInit.getString("method");
                jSONObjectInit.getString("params");
                if (PreviewActivity.ON_CLICK_LISTENER_CLOSE.equalsIgnoreCase(string)) {
                    this.a.a(new x());
                } else if (AdTrackerConstants.GOAL_DOWNLOAD.equalsIgnoreCase(string)) {
                    this.a.a(new g(EventTracking.a.postroll_click));
                } else if ("replay".equalsIgnoreCase(string)) {
                    this.a.a(new y());
                } else if ("privacy".equalsIgnoreCase(string)) {
                    this.a.a(new ac());
                } else {
                    Logger.w(Logger.AD_TAG, "unknown javascript method: " + string);
                }
            } catch (IndexOutOfBoundsException e) {
                Logger.w(Logger.AD_TAG, "no javascript method call");
            } catch (JSONException e2) {
                Logger.w(Logger.AD_TAG, "invalid json " + strSubstring, e2);
            } catch (Exception e3) {
                Logger.e(Logger.AD_TAG, e3);
            }
            result.cancel();
        }
        return zStartsWith;
    }
}

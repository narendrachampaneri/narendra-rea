package com.inmobi.commons.analytics.iat.impl.net;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.iat.impl.Goal;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"SetJavaScriptEnabled"})
public class AdTrackerWebViewLoader {
    private WebView a;
    private Goal b;
    private String c;
    private long d = 0;
    private long e = 0;

    public AdTrackerWebViewLoader() {
        AdTrackerNetworkInterface.getUIHandler().post(new Runnable() { // from class: com.inmobi.commons.analytics.iat.impl.net.AdTrackerWebViewLoader.1
            @Override // java.lang.Runnable
            public void run() {
                AdTrackerWebViewLoader.this.a = new WebView(InternalSDKUtil.getContext());
                AdTrackerWebViewLoader.this.a.setWebViewClient(AdTrackerWebViewLoader.this.new AdTrackerWebViewClient());
                AdTrackerWebViewLoader.this.a.getSettings().setJavaScriptEnabled(true);
                AdTrackerWebViewLoader.this.a.getSettings().setCacheMode(2);
                AdTrackerWebViewLoader.this.a.addJavascriptInterface(new JSInterface(), AdTrackerConstants.IATNAMESPACE);
            }
        });
    }

    public boolean loadWebview(String str, Goal goal) {
        this.b = goal;
        this.c = str;
        AdTrackerNetworkInterface.getUIHandler().post(new Runnable() { // from class: com.inmobi.commons.analytics.iat.impl.net.AdTrackerWebViewLoader.2
            @Override // java.lang.Runnable
            public void run() {
                AdTrackerWebViewLoader.this.d = System.currentTimeMillis();
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Load Webview: " + AdTrackerNetworkInterface.b());
                AdTrackerWebViewLoader.this.a.loadUrl(AdTrackerNetworkInterface.b());
            }
        });
        return true;
    }

    public void deinit(int i) {
        AdTrackerNetworkInterface.getUIHandler().postDelayed(new Runnable() { // from class: com.inmobi.commons.analytics.iat.impl.net.AdTrackerWebViewLoader.3
            @Override // java.lang.Runnable
            public void run() {
                if (AdTrackerWebViewLoader.this.a != null) {
                    AdTrackerWebViewLoader.this.a.stopLoading();
                    AdTrackerWebViewLoader.this.a.destroy();
                }
            }
        }, i);
    }

    protected final class AdTrackerWebViewClient extends WebViewClient {
        protected AdTrackerWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Handler handlerC = AdTrackerNetworkInterface.c();
            if (handlerC.hasMessages(9)) {
                handlerC.removeMessages(9);
                AdTrackerWebViewLoader.this.e = System.currentTimeMillis() - AdTrackerWebViewLoader.this.d;
                if (str.contains("iat")) {
                    a aVarA = AdTrackerWebViewLoader.this.a(str.substring(7));
                    FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.ERRORCODE, Integer.toString(aVarA.a));
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 10;
                    messageObtain.arg2 = aVarA.a;
                    messageObtain.obj = AdTrackerWebViewLoader.this.b;
                    Bundle bundle = new Bundle();
                    bundle.putString("appId", AdTrackerWebViewLoader.this.c);
                    messageObtain.setData(bundle);
                    if (5000 == aVarA.a) {
                        int iB = AdTrackerWebViewLoader.this.b(aVarA.b);
                        if (6000 == iB) {
                            messageObtain.what = 8;
                            messageObtain.arg2 = (int) AdTrackerWebViewLoader.this.e;
                        } else {
                            messageObtain.arg2 = iB;
                        }
                    }
                    handlerC.sendMessage(messageObtain);
                }
            }
            webView.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            Handler handlerC = AdTrackerNetworkInterface.c();
            if (handlerC != null && handlerC.hasMessages(9)) {
                handlerC.removeMessages(9);
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Webview Received Error");
                Message messageObtain = Message.obtain();
                messageObtain.what = 10;
                messageObtain.arg2 = i;
                messageObtain.obj = AdTrackerWebViewLoader.this.b;
                handlerC.sendMessage(messageObtain);
            }
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(8)
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            Handler handlerC = AdTrackerNetworkInterface.c();
            if (handlerC.hasMessages(9)) {
                handlerC.removeMessages(9);
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Webview Received SSL Error");
                Message messageObtain = Message.obtain();
                messageObtain.what = 10;
                messageObtain.arg2 = sslError.getPrimaryError();
                messageObtain.obj = AdTrackerWebViewLoader.this.b;
                handlerC.sendMessage(messageObtain);
            }
        }
    }

    protected static class JSInterface {
        protected JSInterface() {
        }

        @JavascriptInterface
        public String getParams() {
            String preferences = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER);
            String webViewRequestParam = AdTrackerRequestResponseBuilder.getWebViewRequestParam();
            if (preferences != null) {
                webViewRequestParam = webViewRequestParam + "&referrer=" + preferences;
            }
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Request param for webview" + webViewRequestParam);
            return webViewRequestParam;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a a(String str) {
        String str2 = null;
        a aVar = new a();
        try {
            int i = 0;
            for (String str3 : str.split("&")) {
                String[] strArrSplit = str3.split("=");
                for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                    if ("err".equals(strArrSplit[i2])) {
                        i = Integer.parseInt(strArrSplit[i2 + 1]);
                    } else if (AdTrackerConstants.RESPONSE.equals(strArrSplit[i2])) {
                        str2 = strArrSplit[i2 + 1];
                    }
                }
            }
            aVar.a = i;
            aVar.b = str2;
            if (5003 == i) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Webview Timeout " + str2);
            } else if (5001 == i) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Invalid params passed " + str2);
            } else if (5002 == i) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "XMLHTTP request not supported " + str2);
            } else if (5005 == i) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Invalid JSON Response " + str2);
            } else if (5004 == i) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Webview Server Error " + str2);
            } else if (5000 == i) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Webview response " + URLDecoder.decode(str2, "utf-8"));
            }
            return aVar;
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Check content Exception", e);
            return aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b(String str) {
        JSONException jSONException;
        int i;
        UnsupportedEncodingException unsupportedEncodingException;
        try {
            JSONObject jSONObjectInit = JSONObjectInstrumentation.init(URLDecoder.decode(str, "utf-8"));
            JSONObject jSONObject = jSONObjectInit.getJSONObject(AdTrackerConstants.VALIDIDS);
            String string = jSONObjectInit.getString(AdTrackerConstants.ERRORMSG);
            int i2 = jSONObjectInit.getInt(AdTrackerConstants.TIMETOLIVE);
            int i3 = jSONObjectInit.getInt(AdTrackerConstants.ERRORCODE);
            try {
                if (i3 != 6000) {
                    Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to upload goal in webview" + string);
                    return i3;
                }
                String string2 = !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
                if (i3 == 6001) {
                    string2 = null;
                }
                FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.VALIDIDS, string2);
                FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.TIMETOLIVE, Integer.toString(i2));
                i = i3;
                return i;
            } catch (UnsupportedEncodingException e) {
                i = i3;
                unsupportedEncodingException = e;
                unsupportedEncodingException.printStackTrace();
            } catch (JSONException e2) {
                i = i3;
                jSONException = e2;
                jSONException.printStackTrace();
            }
        } catch (UnsupportedEncodingException e3) {
            unsupportedEncodingException = e3;
            i = 6000;
        } catch (JSONException e4) {
            jSONException = e4;
            i = 6000;
        }
    }

    private static class a {
        private int a = 0;
        private String b = null;
    }
}

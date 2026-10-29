package org.go3k.utilities;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ZYWebView {
    private static Activity m_activity;
    private static ZYWebView m_instance;
    private LinearLayout m_webLayout;
    private WebView m_webView;

    public static void setActivity(Activity ac) {
        m_activity = ac;
    }

    public static Object getZYWebView() {
        try {
            if (m_instance == null) {
                m_instance = new ZYWebView();
            }
            return m_instance;
        } catch (Exception e) {
            Log.d("DA2.WebView", "getZYWebView failed. Exception message: " + e.getMessage());
            return null;
        }
    }

    public void displayWebView(final int x, final int y, final int width, final int height) {
        Log.d("DA2.WebView", "Android::showWebView");
        if (m_activity == null) {
            Log.e("DA2.WebView", "showWebView m_activity is null.");
            return;
        }
        try {
            m_activity.runOnUiThread(new Runnable() { // from class: org.go3k.utilities.ZYWebView.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (ZYWebView.this.m_webLayout == null) {
                            ZYWebView.this.m_webLayout = new LinearLayout(ZYWebView.m_activity);
                            ZYWebView.m_activity.addContentView(ZYWebView.this.m_webLayout, new LinearLayout.LayoutParams(-1, -1));
                        }
                        if (ZYWebView.this.m_webView == null) {
                            ZYWebView.this.m_webView = new WebView(ZYWebView.m_activity);
                            ZYWebView.this.m_webLayout.addView(ZYWebView.this.m_webView);
                        }
                        LinearLayout.LayoutParams linearParams = (LinearLayout.LayoutParams) ZYWebView.this.m_webView.getLayoutParams();
                        linearParams.leftMargin = x;
                        linearParams.topMargin = y;
                        linearParams.width = width;
                        linearParams.height = height;
                        ZYWebView.this.m_webView.setLayoutParams(linearParams);
                        ZYWebView.this.m_webView.setBackgroundColor(0);
                        ZYWebView.this.m_webView.getSettings().setCacheMode(2);
                        ZYWebView.this.m_webView.getSettings().setAppCacheEnabled(false);
                        ZYWebView.this.m_webView.getSettings().setJavaScriptEnabled(true);
                        ZYWebView.this.m_webView.setWebViewClient(new WebViewClient() { // from class: org.go3k.utilities.ZYWebView.1.1
                            @Override // android.webkit.WebViewClient
                            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                                if (url.startsWith("market://")) {
                                    view.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
                                    return true;
                                }
                                if (url.startsWith("mailto:")) {
                                    try {
                                        List<String> to = new ArrayList<>();
                                        List<String> cc = new ArrayList<>();
                                        List<String> bcc = new ArrayList<>();
                                        String subject = null;
                                        String body = null;
                                        String url2 = url.replaceFirst("mailto:", "");
                                        String[] urlSections = url2.split("\\?|&");
                                        if (urlSections.length >= 2) {
                                            to.addAll(Arrays.asList(urlSections[0].split(AppInfo.DELIM)));
                                            for (int i = 1; i < urlSections.length; i++) {
                                                String urlSection = urlSections[i];
                                                String[] keyValue = urlSection.split("=");
                                                if (keyValue.length == 2) {
                                                    String key = keyValue[0];
                                                    String value = URLDecoder.decode(keyValue[1], "UTF-8");
                                                    if (key.equals("cc")) {
                                                        cc.addAll(Arrays.asList(url2.split(AppInfo.DELIM)));
                                                    } else if (key.equals("bcc")) {
                                                        bcc.addAll(Arrays.asList(url2.split(AppInfo.DELIM)));
                                                    } else if (key.equals(NativeCallKeys.SUBJECT)) {
                                                        subject = value;
                                                    } else if (key.equals("body")) {
                                                        body = value;
                                                    }
                                                }
                                            }
                                        } else {
                                            to.addAll(Arrays.asList(url2.split(AppInfo.DELIM)));
                                        }
                                        Intent emailIntent = new Intent("android.intent.action.SEND");
                                        emailIntent.setType("message/rfc822");
                                        String[] dummyStringArray = new String[0];
                                        emailIntent.putExtra("android.intent.extra.EMAIL", (String[]) to.toArray(dummyStringArray));
                                        if (cc.size() > 0) {
                                            emailIntent.putExtra("android.intent.extra.CC", (String[]) cc.toArray(dummyStringArray));
                                        }
                                        if (bcc.size() > 0) {
                                            emailIntent.putExtra("android.intent.extra.BCC", (String[]) bcc.toArray(dummyStringArray));
                                        }
                                        if (subject != null) {
                                            emailIntent.putExtra("android.intent.extra.SUBJECT", subject);
                                        }
                                        if (body != null) {
                                            emailIntent.putExtra("android.intent.extra.TEXT", body);
                                        }
                                        view.getContext().startActivity(emailIntent);
                                        return true;
                                    } catch (UnsupportedEncodingException e) {
                                        Log.e("DA2.WebView", "displayWebView->run()->shouldOverrideUrlLoading() call was \"Unsupported\". Exception message: " + e.getMessage());
                                    }
                                }
                                return false;
                            }
                        });
                    } catch (Exception e) {
                        Log.e("DA2.WebView", "displayWebView->run() unable to be shown. Exception message: " + e.getMessage());
                    }
                }
            });
        } catch (Exception e) {
            Log.e("DA2.WebView", "displayWebView unable to be shown. Exception message: " + e.getMessage());
        }
    }

    public void updateURL(final String url) {
        m_activity.runOnUiThread(new Runnable() { // from class: org.go3k.utilities.ZYWebView.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ZYWebView.this.m_webView.loadUrl(url);
                } catch (Exception e) {
                    Log.d("DA2.WebView", "runOnUiThread->run() unable to update url. Exception message: " + e.getMessage());
                }
            }
        });
    }

    public void removeWebView() {
        if (this.m_webLayout != null && this.m_webView != null) {
            m_activity.runOnUiThread(new Runnable() { // from class: org.go3k.utilities.ZYWebView.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ZYWebView.this.m_webLayout.removeView(ZYWebView.this.m_webView);
                        ZYWebView.this.m_webView.destroy();
                    } catch (Exception e) {
                        Log.d("DA2.WebView", "runOnUiThread->run() unable to update url. Exception message: " + e.getMessage());
                    }
                    ZYWebView.this.m_webView = null;
                }
            });
        }
    }
}

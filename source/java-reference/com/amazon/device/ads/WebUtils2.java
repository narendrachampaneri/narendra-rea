package com.amazon.device.ads;

import android.content.Context;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: compiled from: WebUtils.java */
/* JADX INFO: loaded from: classes.dex */
class WebUtils2 {
    private final WebUtilsStatic webUtilsAdapter = new WebUtilsStatic();

    WebUtils2() {
    }

    boolean isUrlValid(String url) {
        try {
            new URI(url);
            return true;
        } catch (NullPointerException e) {
            return false;
        } catch (URISyntaxException e2) {
            return false;
        }
    }

    boolean launchActivityForIntentLink(String url, Context context) {
        return this.webUtilsAdapter.launchActivityForIntentLink(url, context);
    }

    String getURLEncodedString(String s) {
        return this.webUtilsAdapter.getURLEncodedString(s);
    }

    String getURLDecodedString(String s) {
        return this.webUtilsAdapter.getURLDecodedString(s);
    }

    String getScheme(String url) {
        return this.webUtilsAdapter.getScheme(url);
    }

    String encloseHtml(String html, boolean isHTML5) {
        return this.webUtilsAdapter.encloseHtml(html, isHTML5);
    }

    void executeWebRequestInThread(String url, boolean disconnectEnabled) {
        this.webUtilsAdapter.executeWebRequestInThread(url, disconnectEnabled);
    }

    /* JADX INFO: compiled from: WebUtils.java */
    private static class WebUtilsStatic {
        private WebUtilsStatic() {
        }

        boolean launchActivityForIntentLink(String url, Context context) {
            return WebUtils.launchActivityForIntentLink(url, context);
        }

        String getURLEncodedString(String s) {
            return WebUtils.getURLEncodedString(s);
        }

        String getURLDecodedString(String s) {
            return WebUtils.getURLDecodedString(s);
        }

        String getScheme(String url) {
            return WebUtils.getScheme(url);
        }

        String encloseHtml(String html, boolean isHTML5) {
            return WebUtils.encloseHtml(html, isHTML5);
        }

        void executeWebRequestInThread(String url, boolean disconnectEnabled) {
            WebUtils.executeWebRequestInThread(url, disconnectEnabled);
        }
    }
}

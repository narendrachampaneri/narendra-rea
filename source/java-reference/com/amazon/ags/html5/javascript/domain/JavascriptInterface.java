package com.amazon.ags.html5.javascript.domain;

import android.util.Log;
import android.webkit.WebView;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.ToastKeys;
import com.amazon.ags.html5.factory.ServiceFactory;
import com.amazon.ags.html5.javascript.CallHandlerBase;
import com.amazon.ags.html5.overlay.OverlayManager;
import com.amazon.ags.html5.service.AsynchronousReplyMessenger;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX INFO: loaded from: classes.dex */
public class JavascriptInterface {
    private static final String TAG = "GC_" + JavascriptInterface.class.getSimpleName();
    private final ExecutorService executorService;
    private final String id;
    private final List<CallHandlerBase> nativeCallHandlers;
    private final OverlayManager overlayLauncher;
    private final AsynchronousReplyMessenger replyMessenger;
    private final Object toastLock;
    private final WebView webView;
    private final List<MessageHandlerReadyListener> notifyOnReadyListeners = new ArrayList();
    private final List<CloseOverlayListener> closeOverlayListeners = new ArrayList();
    private final List<CloseAlertListener> closeAlertListeners = new ArrayList();
    private boolean isJavascriptReadyToHandleMessages = false;

    public JavascriptInterface(String id, AsynchronousReplyMessenger replyMessenger, OverlayManager overlayLauncher, List<CallHandlerBase> nativeCallHandlers, ExecutorService executorService, WebView webView, Object toastLock) {
        this.id = id;
        this.replyMessenger = replyMessenger;
        this.overlayLauncher = overlayLauncher;
        this.nativeCallHandlers = nativeCallHandlers;
        this.executorService = executorService;
        this.webView = webView;
        this.toastLock = toastLock;
    }

    public void addMessageHandlerReadyListener(MessageHandlerReadyListener messageHandlerReadyListener) {
        this.notifyOnReadyListeners.add(messageHandlerReadyListener);
    }

    public void addCloseOverlayListener(CloseOverlayListener closeOverlayListener) {
        this.closeOverlayListeners.add(closeOverlayListener);
    }

    public void addCloseAlertListener(CloseAlertListener closeAlertListener) {
        this.closeAlertListeners.add(closeAlertListener);
    }

    public void sendJSReply(String rid, String resultJson, String resultCode, String httpResponseCode) {
        JSONObject root = new JSONObject();
        try {
            root.put("__requestId", rid);
            root.put("resultCode", resultCode);
            root.put("httpResponseCode", httpResponseCode);
            if (resultJson != null && resultJson.length() != 0) {
                try {
                    root.put("params", new JSONTokener(resultJson).nextValue());
                } catch (Exception e) {
                    Log.e(TAG, "Failed to construct response for " + rid, e);
                }
            }
            this.webView.loadUrl("javascript:receiveReply(" + (!(root instanceof JSONObject) ? root.toString() : JSONObjectInstrumentation.toString(root)) + ");");
        } catch (Exception e2) {
            Log.e(TAG, "Failed to convey response for rid [" + rid + "]: " + e2.toString(), e2);
        }
    }

    public String getId() {
        return this.id;
    }

    @android.webkit.JavascriptInterface
    public void sendReply(final String json) {
        this.executorService.execute(new Runnable() { // from class: com.amazon.ags.html5.javascript.domain.JavascriptInterface.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JSONObject reply = JSONObjectInstrumentation.init(json);
                    JavascriptInterface.this.replyMessenger.sendReply(reply);
                } catch (JSONException e) {
                    Log.e(JavascriptInterface.TAG, "Unable to parse request: " + json, e);
                }
            }
        });
    }

    @android.webkit.JavascriptInterface
    public void showOverlay(final String json) {
        this.executorService.execute(new Runnable() { // from class: com.amazon.ags.html5.javascript.domain.JavascriptInterface.2
            @Override // java.lang.Runnable
            public void run() {
                JavascriptInterface.this.overlayLauncher.showOverlay(json);
            }
        });
    }

    @android.webkit.JavascriptInterface
    public void showAlert(final String json) {
        this.executorService.execute(new Runnable() { // from class: com.amazon.ags.html5.javascript.domain.JavascriptInterface.3
            @Override // java.lang.Runnable
            public void run() {
                JavascriptInterface.this.overlayLauncher.showAlert(json);
            }
        });
    }

    @android.webkit.JavascriptInterface
    public void logMessage(String logMessage) {
        if (ServiceFactory.isDebugLoggingEnabled()) {
            Log.d(TAG, "JS Log: " + logMessage);
        }
    }

    @android.webkit.JavascriptInterface
    public void showToast(final String json) {
        this.executorService.execute(new Runnable() { // from class: com.amazon.ags.html5.javascript.domain.JavascriptInterface.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (ServiceFactory.getShowToastsString().equals(ToastKeys.SHOW_TOASTS_UNDEFINED)) {
                        synchronized (JavascriptInterface.this.toastLock) {
                            try {
                                JavascriptInterface.this.toastLock.wait();
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                if (ServiceFactory.getShowToastsString().equals(ToastKeys.SHOW_TOASTS_TRUE)) {
                    JavascriptInterface.this.overlayLauncher.showToast(json);
                }
            }
        });
    }

    @android.webkit.JavascriptInterface
    public boolean isReady() {
        return this.isJavascriptReadyToHandleMessages;
    }

    @android.webkit.JavascriptInterface
    public void setReadyForMessages() {
        this.isJavascriptReadyToHandleMessages = true;
        this.executorService.execute(new Runnable() { // from class: com.amazon.ags.html5.javascript.domain.JavascriptInterface.5
            @Override // java.lang.Runnable
            public void run() {
                for (MessageHandlerReadyListener recipient : JavascriptInterface.this.notifyOnReadyListeners) {
                    recipient.messageHandlerReady();
                }
            }
        });
    }

    @android.webkit.JavascriptInterface
    public void closeOverlay() {
        this.executorService.execute(new Runnable() { // from class: com.amazon.ags.html5.javascript.domain.JavascriptInterface.6
            @Override // java.lang.Runnable
            public void run() {
                for (CloseOverlayListener recipient : JavascriptInterface.this.closeOverlayListeners) {
                    recipient.closeOverlay();
                }
            }
        });
    }

    @android.webkit.JavascriptInterface
    public void closeAlert() {
        this.executorService.execute(new Runnable() { // from class: com.amazon.ags.html5.javascript.domain.JavascriptInterface.7
            @Override // java.lang.Runnable
            public void run() {
                for (CloseAlertListener recipient : JavascriptInterface.this.closeAlertListeners) {
                    recipient.closeAlert();
                }
            }
        });
    }

    @android.webkit.JavascriptInterface
    public void handleMessage(final String json) {
        this.executorService.execute(new Runnable() { // from class: com.amazon.ags.html5.javascript.domain.JavascriptInterface.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JSONObject request = JSONObjectInstrumentation.init(json);
                    for (CallHandlerBase handler : JavascriptInterface.this.nativeCallHandlers) {
                        if (handler.handleMessage(JavascriptInterface.this, request)) {
                            return;
                        }
                    }
                    String nativeCall = request.getString(NativeCallKeys.NATIVE_CALL);
                    Log.e(JavascriptInterface.TAG, "No handler found for native call type " + nativeCall);
                } catch (JSONException e) {
                    Log.e(JavascriptInterface.TAG, "Unable to parse request from javascript: " + json, e);
                }
            }
        });
    }
}

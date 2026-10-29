package com.amazon.ags.html5.service;

import android.content.Context;
import android.os.Handler;
import android.webkit.WebView;
import com.amazon.ags.client.JSONRequest;
import com.amazon.ags.html5.javascript.JavascriptRepository;
import com.amazon.ags.html5.javascript.domain.JavascriptInterface;
import com.amazon.ags.html5.javascript.domain.MessageHandlerReadyListener;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class WebViewServiceHelper implements ServiceHelper, MessageHandlerReadyListener {
    private final Context context;
    private final JavascriptInterface javascriptInterface;
    private final List<JSONObject> messageQueue = new ArrayList();
    private final AsynchronousReplyMessenger replyMessenger;
    private final Handler uiThreadHandler;
    final WebView webView;

    public WebViewServiceHelper(Context context, JavascriptRepository javascriptRepository, JavascriptInterface javascriptInterface, AsynchronousReplyMessenger replyMessenger, WebView webView, Handler uiThreadHandler) {
        this.javascriptInterface = javascriptInterface;
        this.javascriptInterface.addMessageHandlerReadyListener(this);
        this.context = context;
        this.webView = webView;
        this.replyMessenger = replyMessenger;
        this.uiThreadHandler = uiThreadHandler;
    }

    @Override // com.amazon.ags.html5.service.ServiceHelper
    public void handleRequestAsync(JSONRequest asyncRequest) {
        this.replyMessenger.addAsyncRequest(asyncRequest);
        deliverOrQueueMessage(asyncRequest.getRequest());
    }

    private void deliverOrQueueMessage(JSONObject msg) {
        if (this.javascriptInterface.isReady()) {
            deliverMessageToJavascript(msg);
            return;
        }
        synchronized (this.messageQueue) {
            if (this.javascriptInterface.isReady()) {
                deliverMessageToJavascript(msg);
            } else {
                this.messageQueue.add(msg);
            }
        }
    }

    private void deliverMessageToJavascript(final JSONObject msg) {
        this.uiThreadHandler.post(new Runnable() { // from class: com.amazon.ags.html5.service.WebViewServiceHelper.1
            @Override // java.lang.Runnable
            public void run() {
                WebView webView = WebViewServiceHelper.this.webView;
                StringBuilder sbAppend = new StringBuilder().append("javascript:handleMessage(");
                JSONObject jSONObject = msg;
                webView.loadUrl(sbAppend.append(!(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject)).append(")").toString());
            }
        });
    }

    @Override // com.amazon.ags.html5.javascript.domain.MessageHandlerReadyListener
    public void messageHandlerReady() {
        synchronized (this.messageQueue) {
            for (JSONObject msg : this.messageQueue) {
                deliverMessageToJavascript(msg);
            }
        }
    }
}

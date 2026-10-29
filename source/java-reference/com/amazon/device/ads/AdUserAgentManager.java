package com.amazon.device.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
class AdUserAgentManager extends BasicUserAgentManager {
    private final ThreadUtils.ThreadRunner threadRunner;

    public AdUserAgentManager() {
        this(new ThreadUtils.ThreadRunner());
    }

    AdUserAgentManager(ThreadUtils.ThreadRunner threadRunner) {
        this.threadRunner = threadRunner;
    }

    @Override // com.amazon.device.ads.BasicUserAgentManager
    void buildAndSetUserAgentString(final Context context) {
        this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.AdUserAgentManager.1
            @Override // java.lang.Runnable
            public void run() {
                AdUserAgentManager.this.setUserAgentString(WebViewFactory.getInstance().createWebView(context).getSettings().getUserAgentString());
            }
        }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.MAIN_THREAD);
    }
}

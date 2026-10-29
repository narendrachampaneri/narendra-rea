package com.applovin.impl.adview;

import com.amazon.device.ads.WebRequest;

/* JADX INFO: loaded from: classes.dex */
class j implements Runnable {
    final /* synthetic */ AdViewControllerImpl a;

    private j(AdViewControllerImpl adViewControllerImpl) {
        this.a = adViewControllerImpl;
    }

    /* synthetic */ j(AdViewControllerImpl adViewControllerImpl, a aVar) {
        this(adViewControllerImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.a.h.loadDataWithBaseURL("/", "<html></html>", WebRequest.CONTENT_TYPE_HTML, null, "");
        } catch (Exception e) {
        }
    }
}

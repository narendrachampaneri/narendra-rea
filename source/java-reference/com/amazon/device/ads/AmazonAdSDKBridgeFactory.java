package com.amazon.device.ads;

/* JADX INFO: loaded from: classes.dex */
public class AmazonAdSDKBridgeFactory implements AdSDKBridgeFactory {
    @Override // com.amazon.device.ads.AdSDKBridgeFactory
    public AdSDKBridge createAdSDKBridge(AdControlAccessor accessor) {
        JavascriptInteractor javascriptInteractor = new JavascriptInteractor();
        return new AmazonAdSDKBridge(accessor, javascriptInteractor);
    }
}

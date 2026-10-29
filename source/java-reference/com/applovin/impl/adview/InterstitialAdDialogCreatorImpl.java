package com.applovin.impl.adview;

import android.app.Activity;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.adview.InterstitialAdDialogCreator;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class InterstitialAdDialogCreatorImpl implements InterstitialAdDialogCreator {
    private static final Object a = new Object();
    private static WeakReference b = new WeakReference(null);
    private static WeakReference c = new WeakReference(null);

    @Override // com.applovin.adview.InterstitialAdDialogCreator
    public AppLovinInterstitialAdDialog createInterstitialAdDialog(AppLovinSdk appLovinSdk, Activity activity) {
        af afVar;
        if (appLovinSdk == null) {
            appLovinSdk = AppLovinSdk.getInstance(activity);
        }
        synchronized (a) {
            afVar = (af) b.get();
            if (afVar != null && afVar.isShowing() && c.get() == activity) {
                appLovinSdk.getLogger().w("InterstitialAdDialogCreator", "An interstitial dialog is already showing, returning it");
            } else {
                afVar = new af(appLovinSdk, activity);
                b = new WeakReference(afVar);
                c = new WeakReference(activity);
            }
        }
        return afVar;
    }
}

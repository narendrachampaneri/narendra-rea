package com.applovin.adview;

import android.content.Context;
import android.graphics.Color;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.applovin.impl.sdk.ca;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
public class ClickTrackingOverlayView extends RelativeLayout {
    public ClickTrackingOverlayView(Context context, AppLovinSdk appLovinSdk) {
        super(context, null, new ca(appLovinSdk).K());
        a(context, appLovinSdk);
    }

    private void a(Context context, AppLovinSdk appLovinSdk) {
        RelativeLayout.LayoutParams layoutParams;
        ca caVar = new ca(appLovinSdk);
        ProgressBar progressBar = new ProgressBar(context);
        progressBar.setIndeterminate(true);
        int iJ = caVar.J();
        if (iJ == -2 || iJ == -1) {
            layoutParams = new RelativeLayout.LayoutParams(iJ, iJ);
        } else {
            int iDpToPx = AppLovinSdkUtils.dpToPx(context, iJ);
            layoutParams = new RelativeLayout.LayoutParams(iDpToPx, iDpToPx);
        }
        layoutParams.addRule(13);
        progressBar.setLayoutParams(layoutParams);
        setBackgroundColor(Color.parseColor(caVar.I()));
        addView(progressBar);
    }
}

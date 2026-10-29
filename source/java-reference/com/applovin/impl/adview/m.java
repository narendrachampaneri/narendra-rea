package com.applovin.impl.adview;

import android.util.AttributeSet;
import com.applovin.adview.AppLovinAdView;
import com.applovin.sdk.AppLovinAdSize;

/* JADX INFO: loaded from: classes.dex */
class m {
    static AppLovinAdSize a(AttributeSet attributeSet) {
        String attributeValue;
        if (attributeSet == null || (attributeValue = attributeSet.getAttributeValue(AppLovinAdView.NAMESPACE, "size")) == null) {
            return null;
        }
        return AppLovinAdSize.fromString(attributeValue);
    }

    static boolean b(AttributeSet attributeSet) {
        return attributeSet != null && attributeSet.getAttributeBooleanValue(AppLovinAdView.NAMESPACE, "loadAdOnCreate", false);
    }
}

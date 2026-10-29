package com.android.util;

import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class SkuDetails {
    String mDescription;
    String mItemType;
    String mJson;
    String mPrice;
    String mSku;
    String mTitle;
    String mType;

    public SkuDetails(String jsonSkuDetails) throws JSONException {
        this("inapp", jsonSkuDetails);
    }

    public SkuDetails(String itemType, String jsonSkuDetails) throws JSONException {
        this.mItemType = itemType;
        this.mJson = jsonSkuDetails;
        JSONObject o = JSONObjectInstrumentation.init(this.mJson);
        this.mSku = o.optString(AnalyticsSQLiteHelper.TRANSACTION_PRODUCT_ID);
        this.mType = o.optString("type");
        this.mPrice = o.optString("price");
        this.mTitle = o.optString("title");
        this.mDescription = o.optString("description");
    }

    public String getSku() {
        return this.mSku;
    }

    public String getType() {
        return this.mType;
    }

    public String getPrice() {
        return this.mPrice;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public String toString() {
        return "SkuDetails:" + this.mJson;
    }
}

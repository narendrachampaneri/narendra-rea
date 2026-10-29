package com.inmobi.commons.analytics.db;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.android.util.IabHelper;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import com.inmobi.commons.internal.Log;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class FunctionTagTransaction extends AnalyticsFunctions {
    private Context a;
    private Intent b;
    private Bundle c;

    public FunctionTagTransaction(Context context, Intent intent, Bundle bundle) {
        this.a = context;
        this.b = intent;
        this.c = bundle;
    }

    private AnalyticsEvent a() {
        int value;
        AnalyticsEvent analyticsEventA;
        Exception e;
        AnalyticsEvent analyticsEvent;
        try {
            if (SessionInfo.getSessionId(this.a) != null && this.b != null) {
                AnalyticsEvent analyticsEvent2 = new AnalyticsEvent(AnalyticsEvent.TYPE_TAG_TRANSACTION);
                int intExtra = this.b.getIntExtra("RESPONSE_CODE", 0);
                String stringExtra = this.b.getStringExtra(IabHelper.RESPONSE_INAPP_PURCHASE_DATA);
                if (intExtra == 0) {
                    try {
                        JSONObject jSONObjectInit = JSONObjectInstrumentation.init(stringExtra);
                        analyticsEvent2.setTransactionId(jSONObjectInit.getString("orderId"));
                        analyticsEvent2.setTransactionProductId(jSONObjectInit.getString(AnalyticsSQLiteHelper.TRANSACTION_PRODUCT_ID));
                        long jCurrentTimeMillis = jSONObjectInit.getLong("purchaseTime");
                        if (0 == jCurrentTimeMillis) {
                            jCurrentTimeMillis = System.currentTimeMillis();
                        }
                        analyticsEvent2.setEventTimeStamp(jCurrentTimeMillis / 1000);
                        int i = jSONObjectInit.getInt("purchaseState");
                        if (AnalyticsEvent.TRANSACTION_STATUS_GOOGLE_API_VALUES.PURCHASED.getValue() == i) {
                            value = AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.PURCHASED.getValue();
                        } else if (AnalyticsEvent.TRANSACTION_STATUS_GOOGLE_API_VALUES.FAILED.getValue() == i) {
                            value = AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.FAILED.getValue();
                        } else if (AnalyticsEvent.TRANSACTION_STATUS_GOOGLE_API_VALUES.REFUNDED.getValue() == i) {
                            value = AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.REFUNDED.getValue();
                        } else {
                            value = AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.RESTORED.getValue();
                        }
                        analyticsEvent2.setTransactionStatus(value);
                        try {
                            analyticsEventA = a(analyticsEvent2);
                            try {
                                analyticsEventA.setEventSessionId(SessionInfo.getSessionId(this.a));
                                analyticsEventA.setEventSessionTimeStamp(SessionInfo.getSessionTime(this.a));
                                analyticsEvent = analyticsEventA;
                            } catch (Exception e2) {
                                e = e2;
                                Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Error sending transaction info. Bundle details invalid");
                                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Failed to send extra params transaction", e);
                                analyticsEvent = analyticsEventA;
                            }
                        } catch (Exception e3) {
                            analyticsEventA = analyticsEvent2;
                            e = e3;
                        }
                        insertInDatabase(analyticsEvent);
                        return analyticsEvent;
                    } catch (JSONException e4) {
                        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Error sending transaction info. Transaction details invalid");
                        Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Failed transaction", e4);
                        return null;
                    }
                }
                return analyticsEvent2;
            }
        } catch (Exception e5) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception in tag transaction", e5);
        }
        return null;
    }

    private AnalyticsEvent a(AnalyticsEvent analyticsEvent) {
        try {
            if (this.c.getInt("RESPONSE_CODE") == 0) {
                ArrayList<String> stringArrayList = this.c.getStringArrayList(IabHelper.RESPONSE_GET_SKU_DETAILS_LIST);
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= stringArrayList.size()) {
                        break;
                    }
                    JSONObject jSONObjectInit = JSONObjectInstrumentation.init(stringArrayList.get(i2));
                    String string = jSONObjectInit.getString(AnalyticsSQLiteHelper.TRANSACTION_PRODUCT_ID);
                    long j = jSONObjectInit.getLong("price_amount_micros");
                    String string2 = jSONObjectInit.getString("price_currency_code");
                    String strOptString = jSONObjectInit.optString("type");
                    String strOptString2 = jSONObjectInit.optString("title");
                    String strOptString3 = jSONObjectInit.optString("description");
                    if (!string.equals(analyticsEvent.getTransactionProductId())) {
                        i = i2 + 1;
                    } else {
                        analyticsEvent.setTransactionItemCount(1);
                        analyticsEvent.setTransactionItemDescription(strOptString3);
                        analyticsEvent.setTransactionItemName(strOptString2);
                        if ("inapp".equals(strOptString)) {
                            analyticsEvent.setTransactionItemType(AnalyticsEvent.TRANSACTION_ITEM_TYPE.INAPP.getValue());
                        } else if ("subs".equals(strOptString)) {
                            analyticsEvent.setTransactionItemType(AnalyticsEvent.TRANSACTION_ITEM_TYPE.SUBSCRIPTION.getValue());
                        }
                        analyticsEvent.setTransactionItemPrice(j / 1000000.0d);
                        analyticsEvent.setTransactionCurrencyCode(string2);
                        break;
                    }
                }
            }
        } catch (Exception e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Failed to set purchase bundle info", e);
        }
        return analyticsEvent;
    }

    @Override // com.inmobi.commons.analytics.db.AnalyticsFunctions
    public AnalyticsEvent processFunction() {
        return a();
    }
}

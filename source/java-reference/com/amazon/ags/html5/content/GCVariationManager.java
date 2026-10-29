package com.amazon.ags.html5.content;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.amazon.insights.ABTestClient;
import com.amazon.insights.AmazonInsights;
import com.amazon.insights.InsightsCallback;
import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.Variation;
import com.amazon.insights.VariationSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class GCVariationManager {
    private static final String APPLICATION_KEY = "M3CGOMO6ILJQ65";
    private static final String DEFAULT_MASTER_VARIATION_LIST_NAME = "Universal Experiment List";
    private static final String DEFAULT_MASTER_VARIATION_LIST_VARIABLE = "experiments";
    private static final String DEFAULT_VARIATION_VARIABLE = "treatment";
    private static final String EMPTY_VARIATION_LIST_VALUE = "";
    private static final String EXPERIMENT_DELIMITER = ";;";
    private static final String NO_VARIABLE_FOUND = "GCNoVariableFound";
    private static final String PRIVATE_KEY = "jqyngW96w5vk9a3gLSPP0srNdRpFkRi2+Fjl6qMoPrg=";
    private static final String TAG = "GC_" + GCVariationManager.class.getSimpleName();
    private static final String TREATMENT_DELIMITER = ";";
    private static final String VARIATION_LIST_DELIMITER = ":";
    private final InsightsCredentials credentials;
    private final String masterVariationListName;
    private final String masterVariationListVariable;
    private Map<String, String> variationCache;

    public interface GCVariationManagerRefreshCallback {
        void onRefreshCompleted();
    }

    public GCVariationManager() {
        this(DEFAULT_MASTER_VARIATION_LIST_NAME, DEFAULT_MASTER_VARIATION_LIST_VARIABLE);
    }

    public GCVariationManager(String masterVariationListName, String masterVariationListVariable) {
        this.masterVariationListName = masterVariationListName;
        this.masterVariationListVariable = masterVariationListVariable;
        this.variationCache = Collections.synchronizedMap(new HashMap());
        this.credentials = AmazonInsights.newCredentials(APPLICATION_KEY, PRIVATE_KEY);
    }

    public void refreshVariations(Context context, final GCVariationManagerRefreshCallback callback) {
        AmazonInsights insightsInstance = null;
        try {
            insightsInstance = AmazonInsights.getInstance(this.credentials);
        } catch (Exception e) {
            Log.w(TAG, "Unable to retrieve AmazonInsights instance.  No A/B tests will be available.", e);
        }
        if (insightsInstance == null) {
            insightsInstance = AmazonInsights.newInstance(this.credentials, context);
        }
        if (insightsInstance != null) {
            final ABTestClient abClient = insightsInstance.getABTestClient();
            if (abClient == null) {
                Log.w(TAG, "Unable to obtain reference to Insights ABTestClient");
                if (callback != null) {
                    callback.onRefreshCompleted();
                    return;
                }
                return;
            }
            abClient.getVariations(this.masterVariationListName).setCallback(new InsightsCallback<VariationSet>() { // from class: com.amazon.ags.html5.content.GCVariationManager.1
                @Override // com.amazon.insights.InsightsCallback
                public void onComplete(VariationSet variations) {
                    if (variations != null) {
                        Variation variation = variations.getVariation(GCVariationManager.this.masterVariationListName);
                        String variationListVariableValue = variation.getVariableAsString(GCVariationManager.this.masterVariationListVariable, "");
                        String[] variationListVariableNames = variationListVariableValue.split(GCVariationManager.VARIATION_LIST_DELIMITER);
                        abClient.getVariations(variationListVariableNames).setCallback(new InsightsCallback<VariationSet>() { // from class: com.amazon.ags.html5.content.GCVariationManager.1.1
                            @Override // com.amazon.insights.InsightsCallback
                            public void onComplete(VariationSet vars) {
                                if (vars != null) {
                                    for (Variation var : vars) {
                                        String experimentName = var.getProjectName();
                                        String experimentTreatment = var.getVariableAsString(GCVariationManager.DEFAULT_VARIATION_VARIABLE, GCVariationManager.NO_VARIABLE_FOUND);
                                        if (!TextUtils.isEmpty(experimentName) && !GCVariationManager.NO_VARIABLE_FOUND.equals(experimentTreatment)) {
                                            GCVariationManager.this.variationCache.put(experimentName, experimentTreatment);
                                        }
                                    }
                                }
                                if (callback != null) {
                                    callback.onRefreshCompleted();
                                }
                            }
                        });
                        return;
                    }
                    if (callback != null) {
                        callback.onRefreshCompleted();
                    }
                }
            });
            return;
        }
        Log.w(TAG, "Unable to obtain reference to Insights");
        if (callback != null) {
            callback.onRefreshCompleted();
        }
    }

    public Map<String, String> getCachedVariations() {
        return this.variationCache;
    }
}

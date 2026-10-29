package com.inmobi.commons.internal;

import android.content.Context;
import android.telephony.NeighboringCellInfo;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.bootstrapper.ThinICEConfig;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.data.DemogInfo;
import com.inmobi.commons.data.LocationInfo;
import com.inmobi.commons.thinICE.cellular.CellOperatorInfo;
import com.inmobi.commons.thinICE.cellular.CellTowerInfo;
import com.inmobi.commons.thinICE.cellular.CellUtil;
import com.inmobi.commons.thinICE.icedatacollector.Sample;
import com.inmobi.commons.thinICE.icedatacollector.ThinICEConfigSettings;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.inmobi.commons.uid.UID;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class JSONPayloadCreator implements PayloadCreator {
    @Override // com.inmobi.commons.internal.PayloadCreator
    public String toPayloadString(List<Sample> list, List<ActivityRecognitionSampler.ActivitySample> list2, Context context) {
        JSONObject jSONObjectA;
        JSONObject jSONObjectA2;
        JSONObject jSONObject = new JSONObject(InternalSDKUtil.getEncodedMap(UID.getInstance().getMapForEncryption(AnalyticsInitializer.getConfigParams().getDeviceIdMaskMap())));
        JSONArray jSONArray = new JSONArray();
        ThinICEConfig thinIceConfig = AnalyticsInitializer.getConfigParams().getThinIceConfig();
        for (Sample sample : list) {
            if (sample != null && (jSONObjectA2 = a(sample, thinIceConfig)) != null) {
                jSONArray.put(jSONObjectA2);
            }
        }
        for (ActivityRecognitionSampler.ActivitySample activitySample : list2) {
            if (activitySample != null && (jSONObjectA = a(activitySample)) != null) {
                jSONArray.put(jSONObjectA);
            }
        }
        try {
            if (jSONArray.length() > 0) {
                jSONObject.put("payload", jSONArray);
            }
            CellOperatorInfo cellNetworkInfo = CellUtil.getCellNetworkInfo(context);
            if (thinIceConfig.isOperatorEnabled()) {
                if (!ThinICEConfigSettings.bitTest(thinIceConfig.getCellOpsFlag(), 1) && (cellNetworkInfo.simMcc != -1 || cellNetworkInfo.simMnc != -1)) {
                    jSONObject.put("s-ho", cellNetworkInfo.simMcc + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + cellNetworkInfo.simMnc);
                }
                if (!ThinICEConfigSettings.bitTest(thinIceConfig.getCellOpsFlag(), 2) && (cellNetworkInfo.currentMcc != -1 || cellNetworkInfo.currentMnc != -1)) {
                    jSONObject.put("s-co", cellNetworkInfo.currentMcc + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + cellNetworkInfo.currentMnc);
                }
            }
            Calendar calendar = Calendar.getInstance();
            System.currentTimeMillis();
            jSONObject.put("tz", calendar.get(15) + calendar.get(16));
            jSONObject.put("ts", calendar.getTimeInMillis());
            jSONObject.put(AdTrackerConstants.SDKVER, "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(InternalSDKUtil.INMOBI_SDK_RELEASE_VERSION) + "-" + InternalSDKUtil.INMOBI_SDK_RELEASE_DATE);
            String strCurrentLocationStr = LocationInfo.currentLocationStr();
            if (strCurrentLocationStr != null && !"".equals(strCurrentLocationStr)) {
                jSONObject.put("u-latlong-accu", strCurrentLocationStr);
                if (LocationInfo.isValidGeoInfo()) {
                    long geoTS = LocationInfo.getGeoTS();
                    if (geoTS != 0) {
                        jSONObject.put("u-ll-ts", geoTS);
                    }
                }
            }
            if (InternalSDKUtil.getLtvpSessionId() != null && !InternalSDKUtil.getLtvpSessionId().equals("")) {
                jSONObject.put("u-s-id", InternalSDKUtil.getLtvpSessionId());
            }
            jSONObject.put("loc-allowed", DemogInfo.isLocationInquiryAllowed() ? 1 : 0);
            jSONObject.put("sdk-collected", LocationInfo.isSDKSetLocation());
            return !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
        } catch (JSONException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to create payload for sending ThinICE params");
            return null;
        }
    }

    private JSONObject a(ActivityRecognitionSampler.ActivitySample activitySample) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("t", 3);
            jSONObject.put("ts", activitySample.getTimestamp());
            jSONObject.put("a", activitySample.getActivity());
            return jSONObject;
        } catch (Exception e) {
            return null;
        }
    }

    private JSONObject a(Sample sample, ThinICEConfig thinICEConfig) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("t", 1);
            if (thinICEConfig.isConnectedWifiEnabled()) {
                jSONObject.put("c-ap", a(sample.connectedWifiAp));
            }
            if (thinICEConfig.isCellEnabled()) {
                jSONObject.put("c-sc", a(sample.connectedCellTowerInfo));
            }
            if (thinICEConfig.isVisibleCellTowerEnabled()) {
                JSONArray jSONArray = new JSONArray();
                if (sample.visibleCellTowerInfo != null) {
                    Iterator<NeighboringCellInfo> it = sample.visibleCellTowerInfo.iterator();
                    while (it.hasNext()) {
                        JSONObject jSONObjectA = a(it.next());
                        if (jSONObjectA != null) {
                            jSONArray.put(jSONObjectA);
                        }
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put("v-sc", jSONArray);
                    }
                }
            }
            if (thinICEConfig.isVisibleWifiEnabled()) {
                JSONArray jSONArray2 = new JSONArray();
                if (sample.visibleWifiAp != null) {
                    Iterator<WifiInfo> it2 = sample.visibleWifiAp.iterator();
                    while (it2.hasNext()) {
                        JSONObject jSONObjectA2 = a(it2.next());
                        if (jSONObjectA2 != null) {
                            jSONArray2.put(jSONObjectA2);
                        }
                    }
                }
                if (jSONArray2.length() > 0) {
                    jSONObject.put("v-ap", jSONArray2);
                }
            }
            if (jSONObject.length() <= 1) {
                return null;
            }
            jSONObject.put("ts", sample.utc);
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    private JSONObject a(WifiInfo wifiInfo) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bssid", wifiInfo.bssid);
            jSONObject.put("essid", wifiInfo.ssid);
            return jSONObject;
        } catch (Exception e) {
            return null;
        }
    }

    private JSONObject a(NeighboringCellInfo neighboringCellInfo) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AnalyticsEvent.EVENT_ID, neighboringCellInfo.getCid());
            if (neighboringCellInfo.getRssi() != 0) {
                jSONObject.put(AnalyticsEvent.TYPE_START_SESSION, neighboringCellInfo.getRssi());
                return jSONObject;
            }
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    private JSONObject a(CellTowerInfo cellTowerInfo) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AnalyticsEvent.EVENT_ID, cellTowerInfo.id);
            if (cellTowerInfo.signalStrength != 0) {
                jSONObject.put(AnalyticsEvent.TYPE_START_SESSION, cellTowerInfo.signalStrength);
                return jSONObject;
            }
            return jSONObject;
        } catch (Exception e) {
            return null;
        }
    }
}

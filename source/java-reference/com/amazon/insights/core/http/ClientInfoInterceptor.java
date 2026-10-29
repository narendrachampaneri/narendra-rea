package com.amazon.insights.core.http;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.amazon.identity.auth.device.endpoint.AbstractTokenRequest;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ClientInfoInterceptor implements HttpClient.Interceptor {
    static final String CLIENT_INFO_HEADER_NAME = "x-amzn-ClientInfo";
    private Context context;

    public ClientInfoInterceptor(Context context) {
        setContext(context);
    }

    Context getContext() {
        return this.context;
    }

    void setContext(Context context) {
        this.context = context;
    }

    @Override // com.amazon.insights.core.http.HttpClient.Interceptor
    public void before(HttpClient.Request request) {
        if (request != null) {
            request.addHeader(CLIENT_INFO_HEADER_NAME, getClientInfo().toString());
        }
    }

    @Override // com.amazon.insights.core.http.HttpClient.Interceptor
    public void after(HttpClient.Response response) {
    }

    private ClientInfo getClientInfo() {
        ClientInfo clientInfo = new ClientInfo();
        clientInfo.setOS(AbstractTokenRequest.ANDROID_OS_NAME);
        clientInfo.setOSVersion(Build.VERSION.RELEASE);
        clientInfo.setModel(Build.MODEL);
        clientInfo.setManufacturer(Build.MANUFACTURER);
        try {
            TelephonyManager telephony = (TelephonyManager) getContext().getSystemService("phone");
            if (telephony.getNetworkOperatorName() != null && !telephony.getNetworkOperatorName().equals("")) {
                clientInfo.setCarrier(telephony.getNetworkOperatorName());
            } else {
                clientInfo.setCarrier("Unknown");
            }
        } catch (Exception e) {
            clientInfo.setCarrier("Unknown");
        }
        try {
            ConnectivityManager connectivity = (ConnectivityManager) getContext().getSystemService("connectivity");
            NetworkInfo networkInfo = connectivity.getActiveNetworkInfo();
            if (networkInfo != null && networkInfo.isConnected() && networkInfo.isAvailable()) {
                clientInfo.setNetworkType(networkInfo.getTypeName());
            } else {
                clientInfo.setNetworkType("Unknown");
            }
        } catch (Exception e2) {
            clientInfo.setNetworkType("Unknown");
        }
        return clientInfo;
    }

    static final class ClientInfo {
        private static final String TAG = "ClientInfo";
        private String carrier;
        private String manufacturer;
        private String model;
        private String networkType;
        private String os;
        private String osVersion;

        public ClientInfo() {
            this("Unknown", "Unknown", "Unknown", "Unknown", "Unknown", "Unknown");
        }

        public ClientInfo(String os, String osVersion, String model, String manufacturer, String networkType, String carrier) {
            setOS(os);
            setOSVersion(osVersion);
            setModel(model);
            setManufacturer(manufacturer);
            setNetworkType(networkType);
            setCarrier(carrier);
        }

        public String getOS() {
            return this.os;
        }

        public void setOS(String os) {
            this.os = os;
        }

        public String getOSVersion() {
            return this.osVersion;
        }

        public void setOSVersion(String osVersion) {
            this.osVersion = osVersion;
        }

        public String getModel() {
            return this.model;
        }

        public void setModel(String model) {
            this.model = model;
        }

        public String getManufacturer() {
            return this.manufacturer;
        }

        public void setManufacturer(String manufacturer) {
            this.manufacturer = manufacturer;
        }

        public String getNetworkType() {
            return this.networkType;
        }

        public void setNetworkType(String networkType) {
            this.networkType = networkType;
        }

        public String getCarrier() {
            return this.carrier;
        }

        public void setCarrier(String carrier) {
            this.carrier = carrier;
        }

        public String toString() {
            JSONObject jsonObject = toJsonObject();
            return !(jsonObject instanceof JSONObject) ? jsonObject.toString() : JSONObjectInstrumentation.toString(jsonObject);
        }

        protected JSONObject toJsonObject() {
            JSONObject json = new JSONObject();
            try {
                json.put("os", getOS());
                json.put(AnalyticAttribute.OS_VERSION_ATTRIBUTE, getOSVersion());
                json.put("model", getModel());
                json.put("manufacturer", getManufacturer());
                json.put("networkType", getNetworkType());
                json.put(AnalyticAttribute.CARRIER_ATTRIBUTE, getCarrier());
            } catch (JSONException e) {
                Log.w(TAG, "Couldn't serialize clientInfo to a JSONObject");
            }
            return json;
        }
    }
}

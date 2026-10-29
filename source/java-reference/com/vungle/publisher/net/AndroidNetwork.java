package com.vungle.publisher.net;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.vungle.log.Logger;
import com.vungle.publisher.co;
import com.vungle.publisher.cp;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AndroidNetwork implements cp {

    @Inject
    ConnectivityManager a;

    @Inject
    Provider<NetworkBroadcastReceiver> b;

    @Inject
    TelephonyManager c;

    @Override // com.vungle.publisher.cp
    public final co a() {
        co coVar = null;
        try {
            NetworkInfo activeNetworkInfo = this.a.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                int type = activeNetworkInfo.getType();
                switch (type) {
                    case 0:
                        coVar = co.mobile;
                        break;
                    case 1:
                    case 6:
                        coVar = co.wifi;
                        break;
                    default:
                        Logger.d(Logger.NETWORK_TAG, "unknown connectivity type: " + type);
                        break;
                }
            }
        } catch (Exception e) {
            Logger.d(Logger.NETWORK_TAG, "error getting connectivity type", e);
        }
        return coVar;
    }

    @Override // com.vungle.publisher.cp
    public final String b() {
        try {
            return this.c.getNetworkOperatorName();
        } catch (Exception e) {
            Logger.d(Logger.NETWORK_TAG, "error getting network operator", e);
            return null;
        }
    }
}

package com.vungle.publisher.device.data;

import android.content.pm.PackageInfo;
import com.vungle.log.Logger;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.cu;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.device.data.AppFingerprint;
import com.vungle.publisher.env.SdkConfig;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AppFingerprintManager {

    @Inject
    SdkConfig a;

    @Inject
    AppFingerprint.Factory b;

    @Inject
    cu c;

    @Inject
    ScheduledPriorityExecutor d;

    @Inject
    LoggedException.Factory e;

    public final void a() {
        try {
            long j = this.a.g;
            if (j > 0) {
                Logger.v(Logger.DATA_TAG, "app fingerprinting allowed by server");
                if (j + this.a.f < System.currentTimeMillis()) {
                    this.d.a(new Runnable() { // from class: com.vungle.publisher.device.data.AppFingerprintManager.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                Logger.d(Logger.DATA_TAG, "creating and sending app fingerprint");
                                cu cuVar = AppFingerprintManager.this.c;
                                AppFingerprint.Factory factory = AppFingerprintManager.this.b;
                                List<PackageInfo> installedPackages = factory.b.getPackageManager().getInstalledPackages(0);
                                JSONObject jSONObject = new JSONObject();
                                for (PackageInfo packageInfo : installedPackages) {
                                    if (packageInfo != null) {
                                        jSONObject.put(packageInfo.packageName, true);
                                    }
                                }
                                AppFingerprint appFingerprint = factory.c.get();
                                appFingerprint.a = jSONObject;
                                appFingerprint.b = System.currentTimeMillis();
                                appFingerprint.c = factory.a.a();
                                appFingerprint.d = factory.a.c();
                                appFingerprint.e = factory.a.i();
                                cuVar.e.a(new Runnable() { // from class: com.vungle.publisher.cu.2
                                    final /* synthetic */ AppFingerprint a;

                                    public AnonymousClass2() {
                                        appFingerprint = appFingerprint;
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        try {
                                            cu.this.b.a(appFingerprint).a();
                                        } catch (Exception e) {
                                            cu.this.f.a(Logger.DATA_TAG, "error sending app fingerprint chunk", e);
                                        }
                                    }
                                }, ScheduledPriorityExecutor.b.appFingerprint);
                            } catch (Exception e) {
                                AppFingerprintManager.this.e.a(Logger.DATA_TAG, "exception while creating/ sending app fingerprint", e);
                            }
                        }
                    }, ScheduledPriorityExecutor.b.appFingerprint);
                } else {
                    Logger.d(Logger.DATA_TAG, "throttled fingerprint request");
                }
            } else {
                Logger.v(Logger.DATA_TAG, "app fingerprinting not allowed by server");
            }
        } catch (Exception e) {
            this.e.a(Logger.DATA_TAG, "exception while throttling app fingerprint", e);
        }
    }
}

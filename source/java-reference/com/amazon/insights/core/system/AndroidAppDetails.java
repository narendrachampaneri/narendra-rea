package com.amazon.insights.core.system;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.amazon.insights.core.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidAppDetails implements AppDetails {
    private static Logger logger = Logger.getLogger(AndroidAppDetails.class);
    private Context applicationContext;
    private PackageInfo packageInfo;

    public AndroidAppDetails(Context context) {
        this.applicationContext = context.getApplicationContext();
        try {
            this.packageInfo = this.applicationContext.getPackageManager().getPackageInfo(this.applicationContext.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            logger.w("Unable to get details for package " + this.applicationContext.getPackageName());
        }
    }

    @Override // com.amazon.insights.core.system.AppDetails
    public String packageName() {
        if (this.packageInfo != null) {
            return this.packageInfo.packageName;
        }
        return null;
    }

    @Override // com.amazon.insights.core.system.AppDetails
    public String versionName() {
        if (this.packageInfo != null) {
            return this.packageInfo.versionName;
        }
        return null;
    }

    @Override // com.amazon.insights.core.system.AppDetails
    public String versionCode() {
        if (this.packageInfo != null) {
            return String.valueOf(this.packageInfo.versionCode);
        }
        return null;
    }

    @Override // com.amazon.insights.core.system.AppDetails
    public String[] signatures() {
        if (this.packageInfo != null) {
            Signature[] sigs = this.packageInfo.signatures;
            String[] strSigs = new String[sigs.length];
            for (int i = 0; i < sigs.length; i++) {
                strSigs[i] = sigs[i].toCharsString();
            }
            return strSigs;
        }
        return null;
    }
}

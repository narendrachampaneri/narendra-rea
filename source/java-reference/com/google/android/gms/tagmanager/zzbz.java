package com.google.android.gms.tagmanager;

import com.amazon.identity.auth.device.endpoint.AbstractTokenRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class zzbz extends zzak {
    private static final String ID = com.google.android.gms.internal.zzad.PLATFORM.toString();
    private static final com.google.android.gms.internal.zzag.zza zzbjN = zzdf.zzR(AbstractTokenRequest.ANDROID_OS_NAME);

    public zzbz() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzak
    public boolean zzFW() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzak
    public com.google.android.gms.internal.zzag.zza zzP(Map<String, com.google.android.gms.internal.zzag.zza> map) {
        return zzbjN;
    }
}

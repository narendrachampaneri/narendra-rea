package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;

/* JADX INFO: loaded from: classes.dex */
public class WebViewAdUrlGenerator extends AdUrlGenerator {
    private final boolean mIsStorePictureSupported;

    public WebViewAdUrlGenerator(Context context, boolean isStorePictureSupported) {
        super(context);
        this.mIsStorePictureSupported = isStorePictureSupported;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String serverHostname) throws Throwable {
        initUrlString(serverHostname, Constants.AD_HANDLER);
        setApiVersion("6");
        ClientMetadata clientMetadata = ClientMetadata.getInstance(this.mContext);
        addBaseParams(clientMetadata);
        setMraidFlag(true);
        setExternalStoragePermission(this.mIsStorePictureSupported);
        return getFinalUrlString();
    }
}

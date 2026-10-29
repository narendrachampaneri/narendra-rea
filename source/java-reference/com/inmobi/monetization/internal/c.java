package com.inmobi.monetization.internal;

import com.inmobi.commons.internal.EncryptionUtils;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.network.Request;
import com.inmobi.commons.network.RequestBuilderUtils;
import com.inmobi.monetization.internal.configs.Initializer;
import com.inmobi.monetization.internal.configs.PkInitilaizer;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: AdRequest.java */
/* JADX INFO: loaded from: classes.dex */
class c extends Request {
    protected static String a = "http://i.w.inmobi.com/showad.asm";
    private static byte[] e;
    String b;
    String c;
    String d;
    private byte[] f;
    private byte[] g;

    public c() {
        super(a, Request.Format.KEY_VAL, Request.Method.POST);
        this.b = "";
        this.c = "";
        this.d = "";
        RequestBuilderUtils.fillIdentityMap(this.mReqParams, Initializer.getConfigParams().getDeviceIdMaskMap(), false);
        RequestBuilderUtils.fillAppInfoMap(this.mReqParams);
        RequestBuilderUtils.fillDemogMap(this.mReqParams);
        RequestBuilderUtils.fillDeviceMap(this.mReqParams);
        RequestBuilderUtils.fillLocationMap(this.mReqParams);
        setTimeout(Initializer.getConfigParams().getFetchTimeOut());
    }

    void a(Map<String, String> map) {
        if (this.mReqParams != null && map != null && !map.isEmpty()) {
            this.mReqParams.putAll(map);
        }
    }

    void b(Map<String, String> map) {
        if (this.mReqParams != null && map != null) {
            this.mReqParams.putAll(map);
        }
    }

    @Override // com.inmobi.commons.network.Request
    protected String getPostBody() {
        String postBody = super.getPostBody();
        Log.internal(Constants.LOG_TAG, "Raw Postbody: " + postBody);
        return a(postBody);
    }

    String a(String str) {
        HashMap map = new HashMap();
        this.g = EncryptionUtils.generateKey(8);
        this.f = EncryptionUtils.generateKey(16);
        e = EncryptionUtils.keag();
        this.b = PkInitilaizer.getConfigParams().getExponent();
        this.c = PkInitilaizer.getConfigParams().getModulus();
        this.d = PkInitilaizer.getConfigParams().getVersion();
        if (this.b.equals("") || this.c.equals("") || this.d.equals("")) {
            Log.debug(Constants.LOG_TAG, "Exception retreiving Ad due to key problem");
            return null;
        }
        map.put("sm", EncryptionUtils.SeMeGe(str, e, this.f, this.g, this.c, this.b));
        map.put("sn", this.d);
        return InternalSDKUtil.encodeMapAndconvertToDelimitedString(map, "&");
    }

    byte[] a() {
        return this.f;
    }

    byte[] b() {
        return e;
    }

    @Override // com.inmobi.commons.network.Request
    protected void setUrl(String str) {
        super.setUrl(str);
    }
}

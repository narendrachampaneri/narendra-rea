package com.vungle.publisher.protocol.message;

import com.vungle.publisher.db.model.AdReportExtra;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
final class ExtraInfo extends BaseJsonObject {
    protected Map<String, String> a;

    ExtraInfo() {
    }

    @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
    /* JADX INFO: renamed from: a */
    public final JSONObject b() throws JSONException {
        if (this.a == null || this.a.isEmpty()) {
            return null;
        }
        return new JSONObject(this.a);
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class Factory extends MessageFactory<ExtraInfo> {
        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* synthetic */ ExtraInfo a() {
            return new ExtraInfo();
        }

        @Override // com.vungle.publisher.protocol.message.MessageFactory
        protected final /* bridge */ /* synthetic */ ExtraInfo[] a(int i) {
            return new ExtraInfo[i];
        }

        @Inject
        Factory() {
        }

        protected static ExtraInfo a(Map<String, String> map) {
            if (map == null) {
                return null;
            }
            ExtraInfo extraInfo = new ExtraInfo();
            extraInfo.a = new HashMap(map);
            return extraInfo;
        }

        protected static ExtraInfo b(Map<String, AdReportExtra> map) {
            if (map == null) {
                return null;
            }
            ExtraInfo extraInfo = new ExtraInfo();
            HashMap map2 = new HashMap();
            extraInfo.a = map2;
            for (AdReportExtra adReportExtra : map.values()) {
                map2.put(adReportExtra.b, adReportExtra.c);
            }
            return extraInfo;
        }
    }
}

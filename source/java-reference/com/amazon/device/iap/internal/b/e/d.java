package com.amazon.device.iap.internal.b.e;

import android.os.RemoteException;
import com.amazon.android.framework.exception.KiwiException;
import com.amazon.device.iap.internal.b.e;
import com.amazon.device.iap.internal.model.UserDataBuilder;
import com.amazon.device.iap.internal.model.UserDataResponseBuilder;
import com.amazon.device.iap.model.UserData;
import com.amazon.device.iap.model.UserDataResponse;
import com.amazon.venezia.command.SuccessResult;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import java.util.Map;

/* JADX INFO: compiled from: GetUserIdCommandV1.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends b {
    private static final String b = d.class.getSimpleName();

    public d(e eVar) {
        super(eVar, "1.0");
    }

    @Override // com.amazon.device.iap.internal.b.i
    protected boolean a(SuccessResult successResult) throws RemoteException, KiwiException {
        com.amazon.device.iap.internal.util.e.a(b, "onSuccessInternal: result = " + successResult);
        Map data = successResult.getData();
        com.amazon.device.iap.internal.util.e.a(b, "data: " + data);
        String str = (String) data.get(AnalyticAttribute.USER_ID_ATTRIBUTE);
        e eVarB = b();
        if (com.amazon.device.iap.internal.util.d.a(str)) {
            eVarB.d().a(new UserDataResponseBuilder().setRequestId(eVarB.c()).setRequestStatus(UserDataResponse.RequestStatus.FAILED).build());
            return false;
        }
        UserData userDataBuild = new UserDataBuilder().setUserId(str).setMarketplace(a).build();
        UserDataResponse userDataResponseBuild = new UserDataResponseBuilder().setRequestId(eVarB.c()).setRequestStatus(UserDataResponse.RequestStatus.SUCCESSFUL).setUserData(userDataBuild).build();
        eVarB.d().a(AnalyticAttribute.USER_ID_ATTRIBUTE, userDataBuild.getUserId());
        eVarB.d().a(userDataResponseBuild);
        return true;
    }
}

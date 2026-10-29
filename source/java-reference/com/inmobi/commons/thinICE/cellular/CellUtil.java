package com.inmobi.commons.thinICE.cellular;

import android.content.Context;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.util.Log;
import com.inmobi.commons.thinICE.icedatacollector.BuildSettings;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CellUtil {
    private static final String[] a = {"android.permission.ACCESS_COARSE_LOCATION"};
    private static final String[] b = {"android.permission.ACCESS_FINE_LOCATION"};
    private static final String[] c = {"android.permission.ACCESS_COARSE_LOCATION"};

    private static int[] a(String str) {
        int[] iArr = {-1, -1};
        if (str != null && !str.equals("")) {
            try {
                int i = Integer.parseInt(str.substring(0, 3));
                int i2 = Integer.parseInt(str.substring(3));
                iArr[0] = i;
                iArr[1] = i2;
            } catch (IndexOutOfBoundsException e) {
            } catch (NumberFormatException e2) {
            }
        }
        return iArr;
    }

    public static CellOperatorInfo getCellNetworkInfo(Context context) {
        CellOperatorInfo cellOperatorInfo = new CellOperatorInfo();
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        int[] iArrA = a(telephonyManager.getNetworkOperator());
        cellOperatorInfo.currentMcc = iArrA[0];
        cellOperatorInfo.currentMnc = iArrA[1];
        int[] iArrA2 = a(telephonyManager.getSimOperator());
        cellOperatorInfo.simMcc = iArrA2[0];
        cellOperatorInfo.simMnc = iArrA2[1];
        return cellOperatorInfo;
    }

    public static boolean hasGetCurrentServingCellPermission(Context context) {
        boolean z = true;
        for (String str : a) {
            if (context.checkCallingOrSelfPermission(str) != 0) {
                z = false;
            }
        }
        boolean z2 = true;
        for (String str2 : b) {
            if (context.checkCallingOrSelfPermission(str2) != 0) {
                z2 = false;
            }
        }
        return z || z2;
    }

    public static boolean hasGetVisibleCellTowerPermission(Context context) {
        for (String str : c) {
            if (context.checkCallingOrSelfPermission(str) != 0) {
                return false;
            }
        }
        return true;
    }

    public static CellTowerInfo getCurrentCellTower(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        int[] iArrA = a(telephonyManager.getNetworkOperator());
        CellLocation cellLocation = telephonyManager.getCellLocation();
        if (cellLocation == null || iArrA[0] == -1) {
            return null;
        }
        CellTowerInfo cellTowerInfo = new CellTowerInfo();
        String strValueOf = String.valueOf(iArrA[0]);
        String strValueOf2 = String.valueOf(iArrA[1]);
        if (cellLocation instanceof CdmaCellLocation) {
            CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
            int networkId = cdmaCellLocation.getNetworkId();
            int baseStationId = cdmaCellLocation.getBaseStationId();
            int systemId = cdmaCellLocation.getSystemId();
            cellTowerInfo.signalStrength = a.a(context);
            if (networkId != -1 && baseStationId != -1 && systemId != -1) {
                cellTowerInfo.id = strValueOf + "-" + strValueOf2 + "-" + Integer.toHexString(networkId) + "-" + Integer.toHexString(baseStationId) + "-" + Integer.toHexString(systemId);
            }
        } else {
            GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
            int cid = gsmCellLocation.getCid();
            int lac = gsmCellLocation.getLac();
            cellTowerInfo.signalStrength = a.a(context);
            if (cid != -1 && lac != -1) {
                cellTowerInfo.id = strValueOf + "-" + strValueOf2 + "-" + Integer.toHexString(lac) + "-" + Integer.toHexString(cid);
            }
        }
        return cellTowerInfo;
    }

    public static List<NeighboringCellInfo> getVisibleCellTower(Context context) {
        List<NeighboringCellInfo> neighboringCellInfo = ((TelephonyManager) context.getSystemService("phone")).getNeighboringCellInfo();
        if (neighboringCellInfo == null || neighboringCellInfo.size() == 0) {
            return null;
        }
        return neighboringCellInfo;
    }

    public static List<Integer> getVisibleCellTowerIds(Context context) {
        List<NeighboringCellInfo> visibleCellTower = getVisibleCellTower(context);
        if (visibleCellTower == null || visibleCellTower.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<NeighboringCellInfo> it = visibleCellTower.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(it.next().getCid()));
        }
        return arrayList;
    }

    static class a {
        static int a(Context context) {
            try {
                ArrayList arrayList = (ArrayList) TelephonyManager.class.getMethod("getAllCellInfo", (Class[]) null).invoke((TelephonyManager) context.getSystemService("phone"), (Object[]) null);
                if (arrayList != null) {
                    Object obj = arrayList.get(0);
                    Object objInvoke = obj.getClass().getMethod("getCellSignalStrength", (Class[]) null).invoke(obj, (Object[]) null);
                    return ((Integer) objInvoke.getClass().getMethod("getDbm", (Class[]) null).invoke(objInvoke, (Object[]) null)).intValue();
                }
            } catch (Exception e) {
                if (BuildSettings.DEBUG) {
                    Log.e(IceDataCollector.TAG, "Error getting cell tower signal strength", e);
                }
            }
            return 0;
        }
    }
}

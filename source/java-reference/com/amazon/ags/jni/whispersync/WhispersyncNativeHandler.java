package com.amazon.ags.jni.whispersync;

import android.util.Log;
import com.amazon.ags.api.AmazonGamesClient;
import com.amazon.ags.api.whispersync.GameDataMap;
import com.amazon.ags.api.whispersync.WhispersyncClient;
import com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber;
import com.amazon.ags.api.whispersync.model.SyncableNumber;
import com.amazon.ags.api.whispersync.model.SyncableNumberElement;
import com.amazon.ags.api.whispersync.model.SyncableNumberList;
import com.amazon.ags.api.whispersync.model.SyncableString;
import com.amazon.ags.api.whispersync.model.SyncableStringElement;
import com.amazon.ags.api.whispersync.model.SyncableStringList;
import com.amazon.ags.api.whispersync.model.SyncableStringSet;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class WhispersyncNativeHandler {
    private static final String TAG = "GC_Whispersync_JNI";
    private static WhispersyncClient whispersyncClient;

    public static void initializeNativeHandler() {
        whispersyncClient = AmazonGamesClient.getWhispersyncClient();
    }

    public static void synchronize() {
        whispersyncClient.synchronize();
    }

    public static void flush() {
        whispersyncClient.flush();
    }

    public static long getAccumulatingNumberAsLong(String slashDelimitedKey) {
        Log.d(TAG, "getAccumulatingNumberAsLong(" + slashDelimitedKey + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableAccumulatingNumber syncableAccumulatingNumber = gameDataMap.getAccumulatingNumber(getLowestLevelKey(slashDelimitedKey));
        return syncableAccumulatingNumber.asLong();
    }

    public static void incrementAccumulatingNumber(String slashDelimitedKey, long value) {
        Log.d(TAG, "incrementAccumulatingNumber(" + slashDelimitedKey + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableAccumulatingNumber syncableAccumulatingNumber = gameDataMap.getAccumulatingNumber(getLowestLevelKey(slashDelimitedKey));
        syncableAccumulatingNumber.increment(value);
    }

    public static void decrementAccumulatingNumber(String slashDelimitedKey, long value) {
        Log.d(TAG, "decrementAccumulatingNumber(" + slashDelimitedKey + AppInfo.DELIM + value + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableAccumulatingNumber syncableAccumulatingNumber = gameDataMap.getAccumulatingNumber(getLowestLevelKey(slashDelimitedKey));
        syncableAccumulatingNumber.decrement(value);
    }

    public static double getAccumulatingNumberAsDouble(String slashDelimitedKey) {
        Log.d(TAG, "getAccumulatingNumberAsDouble(" + slashDelimitedKey + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableAccumulatingNumber syncableAccumulatingNumber = gameDataMap.getAccumulatingNumber(getLowestLevelKey(slashDelimitedKey));
        return syncableAccumulatingNumber.asDouble();
    }

    public static void incrementAccumulatingNumber(String slashDelimitedKey, double value) {
        Log.d(TAG, "incrementAccumulatingNumber(" + slashDelimitedKey + AppInfo.DELIM + value + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableAccumulatingNumber syncableAccumulatingNumber = gameDataMap.getAccumulatingNumber(getLowestLevelKey(slashDelimitedKey));
        syncableAccumulatingNumber.increment(value);
    }

    public static void decrementAccumulatingNumber(String slashDelimitedKey, double value) {
        Log.d(TAG, "decrementAccumulatingNumber(" + slashDelimitedKey + AppInfo.DELIM + value + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableAccumulatingNumber syncableAccumulatingNumber = gameDataMap.getAccumulatingNumber(getLowestLevelKey(slashDelimitedKey));
        syncableAccumulatingNumber.decrement(value);
    }

    public static String getAccumulatingNumberAsBigDecimal(String slashDelimitedKey) {
        Log.d(TAG, "getAccumulatingNumberAsBigDecimal(" + slashDelimitedKey + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableAccumulatingNumber syncableAccumulatingNumber = gameDataMap.getAccumulatingNumber(getLowestLevelKey(slashDelimitedKey));
        return syncableAccumulatingNumber.asDecimal().toPlainString();
    }

    public static void incrementAccumulatingNumber(String slashDelimitedKey, String bigDecimalValue) {
        Log.d(TAG, "incrementAccumulatingNumber(" + slashDelimitedKey + AppInfo.DELIM + bigDecimalValue + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableAccumulatingNumber syncableAccumulatingNumber = gameDataMap.getAccumulatingNumber(getLowestLevelKey(slashDelimitedKey));
        syncableAccumulatingNumber.increment(bigDecimalValue);
    }

    public static void decrementAccumulatingNumber(String slashDelimitedKey, String bigDecimalValue) {
        Log.d(TAG, "decrementAccumulatingNumber(" + slashDelimitedKey + AppInfo.DELIM + bigDecimalValue + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableAccumulatingNumber syncableAccumulatingNumber = gameDataMap.getAccumulatingNumber(getLowestLevelKey(slashDelimitedKey));
        syncableAccumulatingNumber.decrement(bigDecimalValue);
    }

    public static long getNumberAsLong(String slashDelimitedKey, int mergePolicyNo) {
        SyncableNumber syncableNumber;
        Log.d(TAG, "getNumberAsLong(" + slashDelimitedKey + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumber = gameDataMap.getHighestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumber = gameDataMap.getLowestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumber = gameDataMap.getLatestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        return syncableNumber.asLong();
    }

    public static void setNumber(String slashDelimitedKey, long value, int mergePolicyNo) {
        SyncableNumber syncableNumber;
        Log.d(TAG, "setNumber(" + slashDelimitedKey + AppInfo.DELIM + value + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumber = gameDataMap.getHighestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumber = gameDataMap.getLowestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumber = gameDataMap.getLatestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        syncableNumber.set(value);
    }

    public static double getNumberAsDouble(String slashDelimitedKey, int mergePolicyNo) {
        SyncableNumber syncableNumber;
        Log.d(TAG, "getNumberAsDouble(" + slashDelimitedKey + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumber = gameDataMap.getHighestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumber = gameDataMap.getLowestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumber = gameDataMap.getLatestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        return syncableNumber.asDouble();
    }

    public static void setNumber(String slashDelimitedKey, double value, int mergePolicyNo) {
        SyncableNumber syncableNumber;
        Log.d(TAG, "setNumber(" + slashDelimitedKey + AppInfo.DELIM + value + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumber = gameDataMap.getHighestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumber = gameDataMap.getLowestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumber = gameDataMap.getLatestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        syncableNumber.set(value);
    }

    public static String getNumberAsBigDecimal(String slashDelimitedKey, int mergePolicyNo) {
        SyncableNumber syncableNumber;
        Log.d(TAG, "getNumberAsBigDecimal(" + slashDelimitedKey + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumber = gameDataMap.getHighestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumber = gameDataMap.getLowestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumber = gameDataMap.getLatestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        return syncableNumber.asDecimal().toPlainString();
    }

    public static void setNumber(String slashDelimitedKey, String bigDecimalValue, int mergePolicyNo) {
        SyncableNumber syncableNumber;
        Log.d(TAG, "setNumber(" + slashDelimitedKey + AppInfo.DELIM + bigDecimalValue + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumber = gameDataMap.getHighestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumber = gameDataMap.getLowestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumber = gameDataMap.getLatestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        syncableNumber.set(bigDecimalValue);
    }

    public static boolean containsNumber(String slashDelimitedKey, int mergePolicyNo) {
        SyncableNumber syncableNumber;
        Log.d(TAG, "containsNumber(" + slashDelimitedKey + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumber = gameDataMap.getHighestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumber = gameDataMap.getLowestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumber = gameDataMap.getLatestNumber(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        return syncableNumber.isSet();
    }

    public static long[] getNumberListAsLongs(String slashDelimitedKey, int mergePolicyNo) {
        SyncableNumberList syncableNumberList;
        Log.d(TAG, "getNumberListAsLongs(" + slashDelimitedKey + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumberList = gameDataMap.getHighNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumberList = gameDataMap.getLowNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumberList = gameDataMap.getLatestNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        return getNumberListAsLong(syncableNumberList);
    }

    public static void insertToNumberList(String slashDelimitedKey, long value, int mergePolicyNo) {
        SyncableNumberList syncableNumberList;
        Log.d(TAG, "insertToNumberList(" + slashDelimitedKey + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumberList = gameDataMap.getHighNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumberList = gameDataMap.getLowNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumberList = gameDataMap.getLatestNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        syncableNumberList.add(value);
    }

    public static double[] getNumberListAsDoubles(String slashDelimitedKey, int mergePolicyNo) {
        SyncableNumberList syncableNumberList;
        Log.d(TAG, "getNumberListAsDoubles(" + slashDelimitedKey + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumberList = gameDataMap.getHighNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumberList = gameDataMap.getLowNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumberList = gameDataMap.getLatestNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        return getNumberListAsDouble(syncableNumberList);
    }

    public static void insertToNumberList(String slashDelimitedKey, double value, int mergePolicyNo) {
        SyncableNumberList syncableNumberList;
        Log.d(TAG, "insertToNumberList(" + slashDelimitedKey + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumberList = gameDataMap.getHighNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumberList = gameDataMap.getLowNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumberList = gameDataMap.getLatestNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        syncableNumberList.add(value);
    }

    public static String[] getNumberListAsBigDecimals(String slashDelimitedKey, int mergePolicyNo) {
        SyncableNumberList syncableNumberList;
        Log.d(TAG, "getNumberListAsBigDecimals(" + slashDelimitedKey + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumberList = gameDataMap.getHighNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumberList = gameDataMap.getLowNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumberList = gameDataMap.getLatestNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        return getNumberListAsBigDecimal(syncableNumberList);
    }

    public static void insertToNumberList(String slashDelimitedKey, String value, int mergePolicyNo) {
        SyncableNumberList syncableNumberList;
        Log.d(TAG, "insertToNumberList(" + slashDelimitedKey + AppInfo.DELIM + value + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumberList = gameDataMap.getHighNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumberList = gameDataMap.getLowNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumberList = gameDataMap.getLatestNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        syncableNumberList.add(value);
    }

    public static void setMaxSizeNumberList(String slashDelimitedKey, int size, int mergePolicyNo) {
        SyncableNumberList syncableNumberList;
        Log.d(TAG, "setMaxSizeNumberList(" + slashDelimitedKey + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumberList = gameDataMap.getHighNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumberList = gameDataMap.getLowNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumberList = gameDataMap.getLatestNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        syncableNumberList.setMaxSize(size);
    }

    public static int getMaxSizeNumberList(String slashDelimitedKey, int mergePolicyNo) {
        SyncableNumberList syncableNumberList;
        Log.d(TAG, "getMaxSizeNumberList(" + slashDelimitedKey + AppInfo.DELIM + MergePolicy.mergePolicyFromInt(mergePolicyNo) + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        MergePolicy mergePolicy = MergePolicy.mergePolicyFromInt(mergePolicyNo);
        switch (mergePolicy) {
            case HIGHEST:
                syncableNumberList = gameDataMap.getHighNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LOWEST:
                syncableNumberList = gameDataMap.getLowNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            case LATEST:
                syncableNumberList = gameDataMap.getLatestNumberList(getLowestLevelKey(slashDelimitedKey));
                break;
            default:
                throw new UnsupportedOperationException("Merge policy [" + mergePolicyNo + "] is not supported");
        }
        return syncableNumberList.getMaxSize();
    }

    private static long[] getNumberListAsLong(SyncableNumberList syncableNumberList) {
        SyncableNumberElement[] syncableNumberElements = syncableNumberList.getValues();
        long[] numberListAsLong = new long[syncableNumberElements.length];
        for (int i = 0; i < syncableNumberElements.length; i++) {
            numberListAsLong[i] = syncableNumberElements[i].asLong();
        }
        return numberListAsLong;
    }

    private static double[] getNumberListAsDouble(SyncableNumberList syncableNumberList) {
        SyncableNumberElement[] syncableNumberElements = syncableNumberList.getValues();
        double[] numberListAsDouble = new double[syncableNumberElements.length];
        for (int i = 0; i < syncableNumberElements.length; i++) {
            numberListAsDouble[i] = syncableNumberElements[i].asDouble();
        }
        return numberListAsDouble;
    }

    private static String[] getNumberListAsBigDecimal(SyncableNumberList syncableNumberList) {
        SyncableNumberElement[] syncableNumberElements = syncableNumberList.getValues();
        String[] numberListAsBigDecimal = new String[syncableNumberElements.length];
        for (int i = 0; i < syncableNumberElements.length; i++) {
            numberListAsBigDecimal[i] = syncableNumberElements[i].asDecimal().toPlainString();
        }
        return numberListAsBigDecimal;
    }

    public static String getString(String slashDelimitedKey) {
        Log.d(TAG, "getString(" + slashDelimitedKey + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableString syncableString = gameDataMap.getLatestString(getLowestLevelKey(slashDelimitedKey));
        return syncableString.getValue();
    }

    public static void setString(String slashDelimitedKey, String value) {
        Log.d(TAG, "setString(" + slashDelimitedKey + AppInfo.DELIM + value + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableString syncableString = gameDataMap.getLatestString(getLowestLevelKey(slashDelimitedKey));
        syncableString.set(value);
    }

    public static boolean containsString(String slashDelimitedKey) {
        Log.d(TAG, "containsString(" + slashDelimitedKey + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableString syncableString = gameDataMap.getLatestString(getLowestLevelKey(slashDelimitedKey));
        return syncableString.isSet();
    }

    public static String[] getStringList(String slashDelimitedKey) {
        Log.d(TAG, "getStringList(" + slashDelimitedKey + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableStringList syncableStringList = gameDataMap.getLatestStringList(getLowestLevelKey(slashDelimitedKey));
        return getStringList(syncableStringList);
    }

    public static void insertToStringList(String slashDelimitedKey, String value) {
        Log.d(TAG, "insertToStringList(" + slashDelimitedKey + AppInfo.DELIM + value + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableStringList syncableStringList = gameDataMap.getLatestStringList(getLowestLevelKey(slashDelimitedKey));
        syncableStringList.add(value);
    }

    public static void setMaxSizeStringList(String slashDelimitedKey, int size) {
        Log.d(TAG, "setMaxSizeStringList(" + slashDelimitedKey + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableStringList syncableStringList = gameDataMap.getLatestStringList(getLowestLevelKey(slashDelimitedKey));
        syncableStringList.setMaxSize(size);
    }

    public static int getMaxSizeStringList(String slashDelimitedKey) {
        Log.d(TAG, "getMaxSizeStringList(" + slashDelimitedKey + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableStringList syncableStringList = gameDataMap.getLatestStringList(getLowestLevelKey(slashDelimitedKey));
        return syncableStringList.getMaxSize();
    }

    public static String[] getStringListKeys(String slashDelimitedKey) {
        Log.d(TAG, "getStringListKeys(" + slashDelimitedKey + ")");
        GameDataMap gameDataMap = getLowestLevelElementAsMap(slashDelimitedKey);
        Set<String> stringListKeys = gameDataMap.getLatestStringListKeys();
        return (String[]) stringListKeys.toArray(new String[stringListKeys.size()]);
    }

    private static String[] getStringList(SyncableStringList syncableStringList) {
        SyncableStringElement[] syncableStringElements = syncableStringList.getValues();
        String[] stringList = new String[syncableStringElements.length];
        for (int i = 0; i < syncableStringElements.length; i++) {
            stringList[i] = syncableStringElements[i].getValue();
        }
        return stringList;
    }

    public static String[] getStringSet(String slashDelimitedKey) {
        Log.d(TAG, "getStringSet(" + slashDelimitedKey + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableStringSet syncableStringSet = gameDataMap.getStringSet(getLowestLevelKey(slashDelimitedKey));
        return getStringSet(syncableStringSet.getValues());
    }

    public static boolean stringSetContains(String slashDelimitedKey, String value) {
        Log.d(TAG, "stringSetContains(" + slashDelimitedKey + AppInfo.DELIM + value + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableStringSet syncableStringSet = gameDataMap.getStringSet(getLowestLevelKey(slashDelimitedKey));
        return syncableStringSet.contains(value);
    }

    public static void insertToStringSet(String slashDelimitedKey, String value) {
        Log.d(TAG, "insertToStringSet(" + slashDelimitedKey + AppInfo.DELIM + value + ")");
        GameDataMap gameDataMap = getLowestLevelMap(slashDelimitedKey);
        SyncableStringSet syncableStringSet = gameDataMap.getStringSet(getLowestLevelKey(slashDelimitedKey));
        syncableStringSet.add(value);
    }

    public static String[] getStringSetKeys(String slashDelimitedKey) {
        Log.d(TAG, "getStringSetKeys(" + slashDelimitedKey + ")");
        GameDataMap gameDataMap = getLowestLevelElementAsMap(slashDelimitedKey);
        Set<String> stringSetKeys = gameDataMap.getStringSetKeys();
        return (String[]) stringSetKeys.toArray(new String[stringSetKeys.size()]);
    }

    private static String[] getStringSet(Set<SyncableStringElement> syncableStringSet) {
        String[] stringSet = new String[syncableStringSet.size()];
        int i = 0;
        for (SyncableStringElement syncableStringElement : syncableStringSet) {
            stringSet[i] = syncableStringElement.getValue();
            i++;
        }
        return stringSet;
    }

    public static final String[] getMapKeys(String slashDelimitedKey) {
        GameDataMap gameDataMap = getLowestLevelElementAsMap(slashDelimitedKey);
        Set<String> mapKeys = gameDataMap.getMapKeys();
        Log.d(TAG, "getMapKeys(" + slashDelimitedKey + ") --> " + mapKeys);
        return (String[]) mapKeys.toArray(new String[mapKeys.size()]);
    }

    protected static final GameDataMap getLowestLevelElementAsMap(String slashDelimitedKey) {
        String[] keys = slashDelimitedKey.split("/");
        GameDataMap gameDataMap = whispersyncClient.getGameData();
        for (String str : keys) {
            gameDataMap = gameDataMap.getMap(str);
        }
        return gameDataMap;
    }

    protected static GameDataMap getLowestLevelMap(String slashDelimitedKey) {
        String[] keys = slashDelimitedKey.split("/");
        GameDataMap gameDataMap = whispersyncClient.getGameData();
        for (int i = 0; i < keys.length - 1; i++) {
            gameDataMap = gameDataMap.getMap(keys[i]);
        }
        return gameDataMap;
    }

    protected static String getLowestLevelKey(String slashDelimitedKey) {
        String[] keys = slashDelimitedKey.split("/");
        return keys[keys.length - 1];
    }
}

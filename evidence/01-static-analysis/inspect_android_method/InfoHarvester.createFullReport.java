/* JADX INFO: loaded from: classes2.dex */
public class InfoHarvester {
    public static StringBuilder createFullReport(Activity activity, StringBuilder stringBuilder) {
        DisplayMetrics dm = getDisplayMetrics(activity);
        if (stringBuilder == null) {
            stringBuilder = new StringBuilder();
        }
        printResolution(stringBuilder, dm);
        printScreenDensity(stringBuilder, dm);
        printScreenSize(activity, stringBuilder);
        stringBuilder.append("\n");
        printSystemInfo(stringBuilder);
        stringBuilder.append("\n");
        printDeviceInfo(stringBuilder);
        return stringBuilder;
    }
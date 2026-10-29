package com.mopub.mraid;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.Toast;
import com.amazon.device.ads.CalendarEventParameters;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.google.android.gms.drive.DriveFile;
import com.mopub.common.MoPubHttpUrlConnection;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Intents;
import com.mopub.common.util.ResponseHeader;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Utils;
import com.mopub.common.util.VersionCode;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MraidNativeCommandHandler {
    public static final String ANDROID_CALENDAR_CONTENT_TYPE = "vnd.android.cursor.item/event";
    private static final String[] DATE_FORMATS = {"yyyy-MM-dd'T'HH:mm:ssZZZZZ", CalendarEventParameters.DATE_FORMAT};
    private static final int MAX_NUMBER_DAYS_IN_MONTH = 31;

    @VisibleForTesting
    static final String MIME_TYPE_HEADER = "Content-Type";

    interface MraidCommandFailureListener {
        void onFailure(MraidCommandException mraidCommandException);
    }

    void createCalendarEvent(Context context, Map<String, String> params) throws MraidCommandException {
        if (isCalendarAvailable(context)) {
            try {
                Map<String, Object> calendarParams = translateJSParamsToAndroidCalendarEventMapping(params);
                Intent intent = new Intent("android.intent.action.INSERT").setType(ANDROID_CALENDAR_CONTENT_TYPE);
                for (String key : calendarParams.keySet()) {
                    Object value = calendarParams.get(key);
                    if (value instanceof Long) {
                        intent.putExtra(key, ((Long) value).longValue());
                    } else if (value instanceof Integer) {
                        intent.putExtra(key, ((Integer) value).intValue());
                    } else {
                        intent.putExtra(key, (String) value);
                    }
                }
                intent.setFlags(DriveFile.MODE_READ_ONLY);
                context.startActivity(intent);
                return;
            } catch (ActivityNotFoundException e) {
                MoPubLog.d("no calendar app installed");
                throw new MraidCommandException("Action is unsupported on this device - no calendar app installed");
            } catch (IllegalArgumentException e2) {
                MoPubLog.d("create calendar: invalid parameters " + e2.getMessage());
                throw new MraidCommandException(e2);
            } catch (Exception e3) {
                MoPubLog.d("could not create calendar event");
                throw new MraidCommandException(e3);
            }
        }
        MoPubLog.d("unsupported action createCalendarEvent for devices pre-ICS");
        throw new MraidCommandException("Action is unsupported on this device (need Android version Ice Cream Sandwich or above)");
    }

    void storePicture(@NonNull Context context, @NonNull String imageUrl, @NonNull MraidCommandFailureListener failureListener) throws MraidCommandException {
        if (!isStorePictureSupported(context)) {
            MoPubLog.d("Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted.");
            throw new MraidCommandException("Error downloading file  - the device does not have an SD card mounted, or the Android permission is not granted.");
        }
        if (context instanceof Activity) {
            showUserDialog(context, imageUrl, failureListener);
        } else {
            Toast.makeText(context, "Downloading image to Picture gallery...", 0).show();
            downloadImage(context, imageUrl, failureListener);
        }
    }

    boolean isTelAvailable(Context context) {
        Intent telIntent = new Intent("android.intent.action.DIAL");
        telIntent.setData(Uri.parse("tel:"));
        return Intents.deviceCanHandleIntent(context, telIntent);
    }

    boolean isSmsAvailable(Context context) {
        Intent smsIntent = new Intent("android.intent.action.VIEW");
        smsIntent.setData(Uri.parse("sms:"));
        return Intents.deviceCanHandleIntent(context, smsIntent);
    }

    public static boolean isStorePictureSupported(Context context) {
        return "mounted".equals(Environment.getExternalStorageState()) && context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    static boolean isCalendarAvailable(Context context) {
        Intent calendarIntent = new Intent("android.intent.action.INSERT").setType(ANDROID_CALENDAR_CONTENT_TYPE);
        return VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH) && Intents.deviceCanHandleIntent(context, calendarIntent);
    }

    @TargetApi(11)
    boolean isInlineVideoAvailable(@NonNull Activity activity, @NonNull View view) {
        if (VersionCode.currentApiLevel().isBelow(VersionCode.HONEYCOMB_MR1)) {
            return false;
        }
        for (View tempView = view; tempView.isHardwareAccelerated() && !Utils.bitMaskContainsFlag(tempView.getLayerType(), 1); tempView = (View) tempView.getParent()) {
            if (!(tempView.getParent() instanceof View)) {
                Window window = activity.getWindow();
                return window != null && Utils.bitMaskContainsFlag(window.getAttributes().flags, ViewCompat.MEASURED_STATE_TOO_SMALL);
            }
        }
        return false;
    }

    @TargetApi(14)
    private Map<String, Object> translateJSParamsToAndroidCalendarEventMapping(Map<String, String> params) {
        Map<String, Object> validatedParamsMapping = new HashMap<>();
        if (!params.containsKey("description") || !params.containsKey("start")) {
            throw new IllegalArgumentException("Missing start and description fields");
        }
        validatedParamsMapping.put("title", params.get("description"));
        if (params.containsKey("start") && params.get("start") != null) {
            Date startDateTime = parseDate(params.get("start"));
            if (startDateTime != null) {
                validatedParamsMapping.put("beginTime", Long.valueOf(startDateTime.getTime()));
                if (params.containsKey("end") && params.get("end") != null) {
                    Date endDateTime = parseDate(params.get("end"));
                    if (endDateTime != null) {
                        validatedParamsMapping.put("endTime", Long.valueOf(endDateTime.getTime()));
                    } else {
                        throw new IllegalArgumentException("Invalid calendar event: end time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00");
                    }
                }
                if (params.containsKey("location")) {
                    validatedParamsMapping.put("eventLocation", params.get("location"));
                }
                if (params.containsKey("summary")) {
                    validatedParamsMapping.put("description", params.get("summary"));
                }
                if (params.containsKey("transparency")) {
                    validatedParamsMapping.put("availability", Integer.valueOf(params.get("transparency").equals("transparent") ? 1 : 0));
                }
                validatedParamsMapping.put("rrule", parseRecurrenceRule(params));
                return validatedParamsMapping;
            }
            throw new IllegalArgumentException("Invalid calendar event: start time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00");
        }
        throw new IllegalArgumentException("Invalid calendar event: start is null.");
    }

    private Date parseDate(String dateTime) {
        Date result = null;
        for (String DATE_FORMAT : DATE_FORMATS) {
            try {
                result = new SimpleDateFormat(DATE_FORMAT, Locale.US).parse(dateTime);
                if (result != null) {
                    break;
                }
            } catch (ParseException e) {
            }
        }
        return result;
    }

    private String parseRecurrenceRule(Map<String, String> params) throws IllegalArgumentException {
        StringBuilder rule = new StringBuilder();
        if (params.containsKey("frequency")) {
            String frequency = params.get("frequency");
            int interval = -1;
            if (params.containsKey("interval")) {
                interval = Integer.parseInt(params.get("interval"));
            }
            if ("daily".equals(frequency)) {
                rule.append("FREQ=DAILY;");
                if (interval != -1) {
                    rule.append("INTERVAL=" + interval + ";");
                }
            } else if ("weekly".equals(frequency)) {
                rule.append("FREQ=WEEKLY;");
                if (interval != -1) {
                    rule.append("INTERVAL=" + interval + ";");
                }
                if (params.containsKey("daysInWeek")) {
                    String weekdays = translateWeekIntegersToDays(params.get("daysInWeek"));
                    if (weekdays == null) {
                        throw new IllegalArgumentException("invalid ");
                    }
                    rule.append("BYDAY=" + weekdays + ";");
                }
            } else if ("monthly".equals(frequency)) {
                rule.append("FREQ=MONTHLY;");
                if (interval != -1) {
                    rule.append("INTERVAL=" + interval + ";");
                }
                if (params.containsKey("daysInMonth")) {
                    String monthDays = translateMonthIntegersToDays(params.get("daysInMonth"));
                    if (monthDays == null) {
                        throw new IllegalArgumentException();
                    }
                    rule.append("BYMONTHDAY=" + monthDays + ";");
                }
            } else {
                throw new IllegalArgumentException("frequency is only supported for daily, weekly, and monthly.");
            }
        }
        return rule.toString();
    }

    private String translateWeekIntegersToDays(String expression) throws IllegalArgumentException {
        StringBuilder daysResult = new StringBuilder();
        boolean[] daysAlreadyCounted = new boolean[7];
        String[] days = expression.split(AppInfo.DELIM);
        for (String day : days) {
            int dayNumber = Integer.parseInt(day);
            if (dayNumber == 7) {
                dayNumber = 0;
            }
            if (!daysAlreadyCounted[dayNumber]) {
                daysResult.append(dayNumberToDayOfWeekString(dayNumber) + AppInfo.DELIM);
                daysAlreadyCounted[dayNumber] = true;
            }
        }
        if (days.length == 0) {
            throw new IllegalArgumentException("must have at least 1 day of the week if specifying repeating weekly");
        }
        daysResult.deleteCharAt(daysResult.length() - 1);
        return daysResult.toString();
    }

    private String translateMonthIntegersToDays(String expression) throws IllegalArgumentException {
        StringBuilder daysResult = new StringBuilder();
        boolean[] daysAlreadyCounted = new boolean[63];
        String[] days = expression.split(AppInfo.DELIM);
        for (String day : days) {
            int dayNumber = Integer.parseInt(day);
            if (!daysAlreadyCounted[dayNumber + 31]) {
                daysResult.append(dayNumberToDayOfMonthString(dayNumber) + AppInfo.DELIM);
                daysAlreadyCounted[dayNumber + 31] = true;
            }
        }
        if (days.length == 0) {
            throw new IllegalArgumentException("must have at least 1 day of the month if specifying repeating weekly");
        }
        daysResult.deleteCharAt(daysResult.length() - 1);
        return daysResult.toString();
    }

    private String dayNumberToDayOfWeekString(int number) throws IllegalArgumentException {
        switch (number) {
            case 0:
                return "SU";
            case 1:
                return "MO";
            case 2:
                return "TU";
            case 3:
                return "WE";
            case 4:
                return "TH";
            case 5:
                return "FR";
            case 6:
                return "SA";
            default:
                throw new IllegalArgumentException("invalid day of week " + number);
        }
    }

    private String dayNumberToDayOfMonthString(int number) throws IllegalArgumentException {
        if (number != 0 && number >= -31 && number <= 31) {
            String dayOfMonth = "" + number;
            return dayOfMonth;
        }
        throw new IllegalArgumentException("invalid day of month " + number);
    }

    void downloadImage(final Context context, String uriString, final MraidCommandFailureListener failureListener) {
        DownloadImageAsyncTask downloadImageAsyncTask = new DownloadImageAsyncTask(context, new DownloadImageAsyncTask.DownloadImageAsyncTaskListener() { // from class: com.mopub.mraid.MraidNativeCommandHandler.1
            @Override // com.mopub.mraid.MraidNativeCommandHandler.DownloadImageAsyncTask.DownloadImageAsyncTaskListener
            public void onSuccess() {
                MoPubLog.d("Image successfully saved.");
            }

            @Override // com.mopub.mraid.MraidNativeCommandHandler.DownloadImageAsyncTask.DownloadImageAsyncTaskListener
            public void onFailure() {
                Toast.makeText(context, "Image failed to download.", 0).show();
                MoPubLog.d("Error downloading and saving image file.");
                failureListener.onFailure(new MraidCommandException("Error downloading and saving image file."));
            }
        });
        AsyncTasks.safeExecuteOnExecutor(downloadImageAsyncTask, uriString);
    }

    private void showUserDialog(final Context context, final String imageUrl, final MraidCommandFailureListener failureListener) {
        AlertDialog.Builder alertDialogDownloadImage = new AlertDialog.Builder(context);
        alertDialogDownloadImage.setTitle("Save Image").setMessage("Download image to Picture gallery?").setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).setPositiveButton("Okay", new DialogInterface.OnClickListener() { // from class: com.mopub.mraid.MraidNativeCommandHandler.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                MraidNativeCommandHandler.this.downloadImage(context, imageUrl, failureListener);
            }
        }).setCancelable(true).show();
    }

    @VisibleForTesting
    static class DownloadImageAsyncTask extends AsyncTask<String, Void, Boolean> implements TraceFieldInterface {
        public Trace _nr_trace;
        private final Context mContext;
        private final DownloadImageAsyncTaskListener mListener;

        interface DownloadImageAsyncTaskListener {
            void onFailure();

            void onSuccess();
        }

        @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
        public void _nr_setTrace(Trace trace) {
            try {
                this._nr_trace = trace;
            } catch (Exception e) {
            }
        }

        @Override // android.os.AsyncTask
        protected /* bridge */ /* synthetic */ Boolean doInBackground(@NonNull String[] strArr) throws Throwable {
            try {
                TraceMachine.enterMethod(this._nr_trace, "MraidNativeCommandHandler$DownloadImageAsyncTask#doInBackground", null);
            } catch (NoSuchFieldError e) {
                TraceMachine.enterMethod(null, "MraidNativeCommandHandler$DownloadImageAsyncTask#doInBackground", null);
            }
            Boolean boolDoInBackground2 = doInBackground2(strArr);
            TraceMachine.exitMethod();
            TraceMachine.unloadTraceContext(this);
            return boolDoInBackground2;
        }

        @Override // android.os.AsyncTask
        protected /* bridge */ /* synthetic */ void onPostExecute(Boolean bool) {
            try {
                TraceMachine.enterMethod(this._nr_trace, "MraidNativeCommandHandler$DownloadImageAsyncTask#onPostExecute", null);
            } catch (NoSuchFieldError e) {
                TraceMachine.enterMethod(null, "MraidNativeCommandHandler$DownloadImageAsyncTask#onPostExecute", null);
            }
            onPostExecute2(bool);
            TraceMachine.exitMethod();
        }

        public DownloadImageAsyncTask(@NonNull Context context, @NonNull DownloadImageAsyncTaskListener listener) {
            this.mContext = context.getApplicationContext();
            this.mListener = listener;
        }

        /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
        protected Boolean doInBackground2(@NonNull String[] params) throws Throwable {
            boolean z;
            if (params == null || params.length == 0 || params[0] == null) {
                return false;
            }
            File pictureStoragePath = getPictureStoragePath();
            pictureStoragePath.mkdirs();
            String uriString = params[0];
            URI uri = URI.create(uriString);
            InputStream pictureInputStream = null;
            OutputStream pictureOutputStream = null;
            try {
                try {
                    HttpURLConnection urlConnection = MoPubHttpUrlConnection.getHttpUrlConnection(uriString);
                    InputStream pictureInputStream2 = new BufferedInputStream(urlConnection.getInputStream());
                    try {
                        String redirectLocation = urlConnection.getHeaderField(ResponseHeader.LOCATION.getKey());
                        if (!TextUtils.isEmpty(redirectLocation)) {
                            uri = URI.create(redirectLocation);
                        }
                        String pictureFileName = getFileNameForUriAndHeaders(uri, urlConnection.getHeaderFields());
                        File pictureFile = new File(pictureStoragePath, pictureFileName);
                        OutputStream pictureOutputStream2 = new FileOutputStream(pictureFile);
                        try {
                            Streams.copyContent(pictureInputStream2, pictureOutputStream2);
                            String pictureFileFullPath = pictureFile.toString();
                            loadPictureIntoGalleryApp(pictureFileFullPath);
                            z = true;
                            Streams.closeStream(pictureInputStream2);
                            Streams.closeStream(pictureOutputStream2);
                        } catch (Exception e) {
                            pictureOutputStream = pictureOutputStream2;
                            pictureInputStream = pictureInputStream2;
                            z = false;
                            Streams.closeStream(pictureInputStream);
                            Streams.closeStream(pictureOutputStream);
                        } catch (Throwable th) {
                            th = th;
                            pictureOutputStream = pictureOutputStream2;
                            pictureInputStream = pictureInputStream2;
                            Streams.closeStream(pictureInputStream);
                            Streams.closeStream(pictureOutputStream);
                            throw th;
                        }
                    } catch (Exception e2) {
                        pictureInputStream = pictureInputStream2;
                    } catch (Throwable th2) {
                        th = th2;
                        pictureInputStream = pictureInputStream2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Exception e3) {
            }
            return z;
        }

        /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
        protected void onPostExecute2(Boolean success) {
            if (success != null && success.booleanValue()) {
                this.mListener.onSuccess();
            } else {
                this.mListener.onFailure();
            }
        }

        @Nullable
        private String getFileNameForUriAndHeaders(@NonNull URI uri, @Nullable Map<String, List<String>> headers) {
            Preconditions.checkNotNull(uri);
            String path = uri.getPath();
            if (path == null || headers == null) {
                return null;
            }
            String filename = new File(path).getName();
            List<String> mimeTypeHeaders = headers.get("Content-Type");
            if (mimeTypeHeaders != null && !mimeTypeHeaders.isEmpty() && mimeTypeHeaders.get(0) != null) {
                String[] fields = mimeTypeHeaders.get(0).split(";");
                for (String field : fields) {
                    if (field.contains("image/")) {
                        String extension = "." + field.split("/")[1];
                        if (!filename.endsWith(extension)) {
                            return filename + extension;
                        }
                        return filename;
                    }
                }
                return filename;
            }
            return filename;
        }

        private File getPictureStoragePath() {
            return new File(Environment.getExternalStorageDirectory(), "Pictures");
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void loadPictureIntoGalleryApp(String str) {
            MoPubMediaScannerConnectionClient moPubMediaScannerConnectionClient = new MoPubMediaScannerConnectionClient(str, null);
            MediaScannerConnection mediaScannerConnection = new MediaScannerConnection(this.mContext, moPubMediaScannerConnectionClient);
            moPubMediaScannerConnectionClient.setMediaScannerConnection(mediaScannerConnection);
            mediaScannerConnection.connect();
        }

        @VisibleForTesting
        @Deprecated
        DownloadImageAsyncTaskListener getListener() {
            return this.mListener;
        }
    }

    private static class MoPubMediaScannerConnectionClient implements MediaScannerConnection.MediaScannerConnectionClient {
        private final String mFilename;
        private MediaScannerConnection mMediaScannerConnection;
        private final String mMimeType;

        private MoPubMediaScannerConnectionClient(String filename, String mimeType) {
            this.mFilename = filename;
            this.mMimeType = mimeType;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMediaScannerConnection(MediaScannerConnection connection) {
            this.mMediaScannerConnection = connection;
        }

        @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient
        public void onMediaScannerConnected() {
            if (this.mMediaScannerConnection != null) {
                this.mMediaScannerConnection.scanFile(this.mFilename, this.mMimeType);
            }
        }

        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        public void onScanCompleted(String path, Uri uri) {
            if (this.mMediaScannerConnection != null) {
                this.mMediaScannerConnection.disconnect();
            }
        }
    }
}

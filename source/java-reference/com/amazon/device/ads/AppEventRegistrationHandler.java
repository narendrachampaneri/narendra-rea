package com.amazon.device.ads;

import android.content.Context;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class AppEventRegistrationHandler {
    protected static final String APP_EVENTS_FILE = "AppEventsJsonFile";
    protected static final long APP_EVENTS_FILE_MAX_SIZE = 1048576;
    protected static final String APP_EVENT_NAME_KEY = "evtName";
    protected static final String APP_EVENT_TIMESTAMP_KEY = "ts";
    protected static final String INSTALL_REFERRER_EVENT_NAME = "INSTALL_REFERRER";
    private static final String LOGTAG = AppEventRegistrationHandler.class.getSimpleName();
    protected static AppEventRegistrationHandler instance = new AppEventRegistrationHandler(MobileAdsInfoStore.getInstance(), new DefaultFileHandlerFactory());
    private final FileHandlerFactory fileHandlerFactory;
    private FileInputHandler fileInputHandler;
    private FileOutputHandler fileOutputHandler;
    private final MobileAdsInfoStore infoStore;
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
    protected final Object appEventsFileLock = new Object();
    protected final Set<String> newEventsToSave = Collections.synchronizedSet(new HashSet());
    protected final Set<String> eventsSent = Collections.synchronizedSet(new HashSet());

    protected AppEventRegistrationHandler(MobileAdsInfoStore infoStore, FileHandlerFactory fileHandlerFactory) {
        this.infoStore = infoStore;
        this.fileHandlerFactory = fileHandlerFactory;
    }

    public static AppEventRegistrationHandler getInstance() {
        return instance;
    }

    public void addEventToAppEventsCacheFile(final AppEvent appEvent) {
        ThreadUtils.scheduleRunnable(new Runnable() { // from class: com.amazon.device.ads.AppEventRegistrationHandler.1
            @Override // java.lang.Runnable
            public void run() {
                AppEventRegistrationHandler.this.appendAppEventToFile(appEvent);
                if (appEvent.getEventName().equals(AppEventRegistrationHandler.INSTALL_REFERRER_EVENT_NAME) && AppEventRegistrationHandler.this.infoStore.getRegistrationInfo().isRegisteredWithSIS()) {
                    SISRegistration sisRegistration = AppEventRegistrationHandler.this.infoStore.getSISRegistration();
                    sisRegistration.registerEvents();
                }
            }
        });
    }

    private boolean createFileOutputHandlerIfNeeded() {
        if (this.fileOutputHandler == null) {
            File fileDir = this.infoStore.getFilesDir();
            if (fileDir == null) {
                this.logger.e("No files directory has been set.");
                return false;
            }
            this.fileOutputHandler = this.fileHandlerFactory.createFileOutputHandler(fileDir, APP_EVENTS_FILE);
        }
        return this.fileOutputHandler != null;
    }

    private boolean createFileInputHandlerIfNeeded() {
        if (this.fileInputHandler == null) {
            File fileDir = this.infoStore.getFilesDir();
            if (fileDir == null) {
                this.logger.e("No files directory has been set.");
                return false;
            }
            this.fileInputHandler = this.fileHandlerFactory.createFileInputHandler(fileDir, APP_EVENTS_FILE);
        }
        return this.fileInputHandler != null;
    }

    protected void appendAppEventToFile(AppEvent appEvent) {
        if (!createFileOutputHandlerIfNeeded()) {
            this.logger.e("Error creating file output handler.");
            return;
        }
        JSONObject jsonEvent = new JSONObject();
        try {
            jsonEvent.put(APP_EVENT_NAME_KEY, appEvent.getEventName());
            jsonEvent.put("ts", appEvent.getTimestamp());
            for (Map.Entry<String, String> prop : appEvent.getPropertyEntries()) {
                jsonEvent.put(prop.getKey(), prop.getValue());
            }
            this.newEventsToSave.add(!(jsonEvent instanceof JSONObject) ? jsonEvent.toString() : JSONObjectInstrumentation.toString(jsonEvent));
            synchronized (this.appEventsFileLock) {
                String toAppend = (!(jsonEvent instanceof JSONObject) ? jsonEvent.toString() : JSONObjectInstrumentation.toString(jsonEvent)) + "\n";
                if (this.fileOutputHandler.getFileLength() + ((long) toAppend.length()) > APP_EVENTS_FILE_MAX_SIZE) {
                    this.logger.w("Couldn't write the application event %s to the cache file. Maximum size limit reached.", appEvent.toString());
                    return;
                }
                if (this.fileOutputHandler.open(FileOutputHandler.WriteMethod.APPEND)) {
                    try {
                        this.fileOutputHandler.write(toAppend);
                        this.logger.d("Added the application event %s to the cache file.", appEvent.toString());
                    } catch (IOException e) {
                        this.logger.w("Couldn't write the application event %s to the file.", appEvent.toString());
                    }
                }
                this.fileOutputHandler.close();
            }
        } catch (JSONException e2) {
            this.logger.w("Internal error while persisting the application event %s.", appEvent.toString());
        }
    }

    public JSONArray getAppEventsJSONArray() {
        if (!createFileInputHandlerIfNeeded()) {
            this.logger.e("Error creating file input handler.");
            return null;
        }
        synchronized (this.appEventsFileLock) {
            if (!this.fileInputHandler.doesFileExist()) {
                return null;
            }
            if (!this.fileInputHandler.open()) {
                this.logger.e("App Events File could not be opened.");
                return null;
            }
            JSONArray jsonArray = new JSONArray();
            while (true) {
                String jsonEventString = this.fileInputHandler.readLine();
                if (jsonEventString != null) {
                    JSONObject jsonEventObject = JSONUtils.getJSONObjectFromString(jsonEventString);
                    if (jsonEventObject == null) {
                        onAppEventsRegistered();
                        this.fileInputHandler.close();
                        return null;
                    }
                    jsonArray.put(jsonEventObject);
                    this.eventsSent.add(!(jsonEventObject instanceof JSONObject) ? jsonEventObject.toString() : JSONObjectInstrumentation.toString(jsonEventObject));
                } else {
                    this.fileInputHandler.close();
                    if (jsonArray.length() > 0) {
                        return jsonArray;
                    }
                    return null;
                }
            }
        }
    }

    public void onAppEventsRegistered() {
        if (!createFileOutputHandlerIfNeeded()) {
            this.logger.e("Error creating file output handler.");
            return;
        }
        synchronized (this.appEventsFileLock) {
            this.newEventsToSave.removeAll(this.eventsSent);
            if (!this.newEventsToSave.isEmpty()) {
                StringBuilder toWrite = new StringBuilder();
                synchronized (this.newEventsToSave) {
                    for (String newEvent : this.newEventsToSave) {
                        toWrite.append(newEvent).append("\n");
                    }
                }
                if (this.fileOutputHandler.open(FileOutputHandler.WriteMethod.APPEND)) {
                    try {
                        this.fileOutputHandler.write(toWrite.toString());
                        this.newEventsToSave.clear();
                        this.eventsSent.clear();
                    } catch (IOException e) {
                        this.logger.w("Couldn't write the application event(s) to the file.");
                    }
                }
                this.fileOutputHandler.close();
            } else {
                Context appContext = this.infoStore.getApplicationContext();
                appContext.deleteFile(APP_EVENTS_FILE);
                this.eventsSent.clear();
            }
        }
    }
}

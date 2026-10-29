package com.amazon.ags.client.whispersync;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.amazon.ags.api.whispersync.FailReason;
import com.amazon.ags.api.whispersync.WhispersyncEventListener;

/* JADX INFO: loaded from: classes2.dex */
public class WhispersyncEventPoster {
    private static final String TAG = "GC_Whispersync";
    private final Handler uiThreadHandler = new Handler(Looper.getMainLooper());
    private WhispersyncEventListener whispersyncEventListener;

    public void setWhispersyncEventListener(WhispersyncEventListener listener) {
        this.whispersyncEventListener = listener;
    }

    public void postEvent(final WhispersyncEvent event) {
        Log.d(TAG, "posting event: " + event);
        if (this.whispersyncEventListener != null) {
            this.uiThreadHandler.post(new Runnable() { // from class: com.amazon.ags.client.whispersync.WhispersyncEventPoster.1
                @Override // java.lang.Runnable
                public void run() {
                    switch (AnonymousClass2.$SwitchMap$com$amazon$ags$client$whispersync$WhispersyncEvent[event.ordinal()]) {
                        case 1:
                            WhispersyncEventPoster.this.whispersyncEventListener.onNewCloudData();
                            break;
                        case 2:
                            WhispersyncEventPoster.this.whispersyncEventListener.onDataUploadedToCloud();
                            break;
                        case 3:
                            WhispersyncEventPoster.this.whispersyncEventListener.onThrottled();
                            break;
                        case 4:
                            WhispersyncEventPoster.this.whispersyncEventListener.onDiskWriteComplete();
                            break;
                        case 5:
                            WhispersyncEventPoster.this.whispersyncEventListener.onFirstSynchronize();
                            break;
                        case 6:
                            WhispersyncEventPoster.this.whispersyncEventListener.onAlreadySynchronized();
                            break;
                        case 7:
                            WhispersyncEventPoster.this.whispersyncEventListener.onSyncFailed(FailReason.OFFLINE);
                            break;
                        case 8:
                            WhispersyncEventPoster.this.whispersyncEventListener.onSyncFailed(FailReason.WHISPERSYNC_DISABLED);
                            break;
                        case 9:
                            WhispersyncEventPoster.this.whispersyncEventListener.onSyncFailed(FailReason.SERVICE_ERROR);
                            break;
                        case 10:
                            WhispersyncEventPoster.this.whispersyncEventListener.onSyncFailed(FailReason.CLIENT_ERROR);
                            break;
                        default:
                            Log.e(WhispersyncEventPoster.TAG, "Unexpected event: " + event);
                            break;
                    }
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.amazon.ags.client.whispersync.WhispersyncEventPoster$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$amazon$ags$client$whispersync$WhispersyncEvent = new int[WhispersyncEvent.values().length];

        static {
            try {
                $SwitchMap$com$amazon$ags$client$whispersync$WhispersyncEvent[WhispersyncEvent.NEW_DATA_FROM_CLOUD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$amazon$ags$client$whispersync$WhispersyncEvent[WhispersyncEvent.DATA_UPLOADED_TO_CLOUD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$amazon$ags$client$whispersync$WhispersyncEvent[WhispersyncEvent.THROTTLED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$amazon$ags$client$whispersync$WhispersyncEvent[WhispersyncEvent.DISK_WRITE_COMPLETE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$amazon$ags$client$whispersync$WhispersyncEvent[WhispersyncEvent.FIRST_SYNC.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$amazon$ags$client$whispersync$WhispersyncEvent[WhispersyncEvent.ALREADY_SYNCED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$amazon$ags$client$whispersync$WhispersyncEvent[WhispersyncEvent.OFFLINE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$amazon$ags$client$whispersync$WhispersyncEvent[WhispersyncEvent.DISABLED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$amazon$ags$client$whispersync$WhispersyncEvent[WhispersyncEvent.ERROR_SERVICE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$amazon$ags$client$whispersync$WhispersyncEvent[WhispersyncEvent.ERROR_CLIENT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }
}

package com.amazon.ags.html5.content;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import com.amazon.ags.VersionInfo;
import com.amazon.ags.html5.javascript.JavascriptRepository;
import com.amazon.ags.html5.util.NetworkUtil;
import com.google.android.exoplayer.hls.HlsChunkSource;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes2.dex */
public class ContentManager implements JavascriptRepository {
    private static final String AGS_BASE_DIRECTORY_NAME = ".ags";
    private static final String ALERT_JAVASCRIPT_FILE = "alert.html";
    private static final String BACKGROUND_JAVASCRIPT_FILE = "background.html";
    private static final long BYTES_PER_KB = 1024;
    private static final long BYTES_PER_MB = 1048576;
    private static final String CONTENT_FILENAME = "agscontent.zip";
    private static final String CURRENT_CONTENT_DIRECTORY_NAME = "current";
    private static final String DEFAULT_CONTENT_DIRECTORY_NAME = "raw";
    private static final String DEFAULT_CONTENT_FILENAME = "amazon_gc_prototype.zip";
    private static final String DEFAULT_CONTENT_RESOURCE_NAME = "amazon_gc_prototype";
    private static final String DOWNLOAD_DIR_NAME = "download";
    private static final String IMAGE_DIRECTORY_NAME = "images";
    private static final long KB_PER_MB = 1024;
    private static final String MANIFEST_FILENAME = "agsmanifest.txt";
    private static final String MANIFEST_VARIATION = "ManifestSrc";
    private static final long MAX_IMAGE_CACHE_SIZE_BYTES = 15728640;
    private static final String OVERLAY_JAVASCRIPT_FILE = "overlay.html";
    private static final String PREVIOUS_CONTENT_DIRECTORY_NAME = "previous";
    private static final String TEMP_DIR_NAME = "tmp";
    private static final String TOAST_JAVASCRIPT_FILE = "toast.html";
    private static final String UPGRADE_CONTENT_DIRECTORY_NAME = "upgrade";
    private static final String VERSION_FILENAME = "version.txt";
    private final String agsBaseDirectoryLocation;
    private Context context;
    private final String currentContentBaseDirectoryLocation;
    private final String downloadContentBaseDirectoryLocation;
    private final String imageBaseDirectoryLocation;
    private ContentVersion initializedContentVersion;
    private NetworkUtil networkUtil;
    private final String previousContentBaseDirectoryLocation;
    private final String tempContentBaseDirectoryLocation;
    private final String upgradeContentBaseDirectoryLocation;
    private final boolean upgradesEnabled = true;
    private static final String TAG = "GC_" + ContentManager.class.getSimpleName();
    private static final long MAX_ASYNCHRONOUS_DOWNLOAD_TIME_MS = TimeUnit.SECONDS.toMillis(60);

    public interface ContentInitializationCallback {
        void onFailure();

        void onInitialized();
    }

    private enum UpgradeAction {
        NO_UPGRADE,
        LOCAL_UPGRADE_ACTION,
        DEFAULT_UPGRADE_ACTION
    }

    public ContentManager(Context context) {
        this.context = context;
        this.networkUtil = new NetworkUtil(context);
        this.agsBaseDirectoryLocation = context.getFilesDir() + File.separator + AGS_BASE_DIRECTORY_NAME;
        this.imageBaseDirectoryLocation = this.agsBaseDirectoryLocation + File.separator + IMAGE_DIRECTORY_NAME;
        this.currentContentBaseDirectoryLocation = this.agsBaseDirectoryLocation + File.separator + CURRENT_CONTENT_DIRECTORY_NAME;
        this.upgradeContentBaseDirectoryLocation = this.agsBaseDirectoryLocation + File.separator + UPGRADE_CONTENT_DIRECTORY_NAME;
        this.previousContentBaseDirectoryLocation = this.agsBaseDirectoryLocation + File.separator + PREVIOUS_CONTENT_DIRECTORY_NAME;
        this.downloadContentBaseDirectoryLocation = this.agsBaseDirectoryLocation + File.separator + "download";
        this.tempContentBaseDirectoryLocation = this.agsBaseDirectoryLocation + File.separator + TEMP_DIR_NAME;
    }

    public void shutdown() {
        this.context = null;
        this.networkUtil = null;
    }

    public String getContentDirectory() {
        return this.currentContentBaseDirectoryLocation;
    }

    public String getImageDirectory() {
        return this.imageBaseDirectoryLocation;
    }

    public ContentVersion getInitializedContentVersion() {
        return this.initializedContentVersion;
    }

    private boolean ensureBaseDirectoriesExist() {
        boolean directoriesExist = true & FileUtils.ensureDirectoryExists(new File(this.agsBaseDirectoryLocation));
        return directoriesExist & FileUtils.ensureDirectoryExists(new File(this.imageBaseDirectoryLocation)) & FileUtils.ensureDirectoryExists(new File(this.currentContentBaseDirectoryLocation)) & FileUtils.ensureDirectoryExists(new File(this.upgradeContentBaseDirectoryLocation)) & FileUtils.ensureDirectoryExists(new File(this.downloadContentBaseDirectoryLocation));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean revertToDefaultContent() {
        boolean reversionSuccessful = true;
        File currentContentDir = new File(this.currentContentBaseDirectoryLocation);
        if ((currentContentDir.exists() && !FileUtils.deleteDirectory(new File(this.currentContentBaseDirectoryLocation))) || !FileUtils.ensureDirectoryExists(new File(this.currentContentBaseDirectoryLocation))) {
            return false;
        }
        if (!FileUtils.copyResourceContentIntoDirectory(this.context, DEFAULT_CONTENT_RESOURCE_NAME, DEFAULT_CONTENT_FILENAME, this.tempContentBaseDirectoryLocation)) {
            FileUtils.deleteDirectory(new File(this.tempContentBaseDirectoryLocation));
            return false;
        }
        if (!FileUtils.extractZipToDirectory(this.tempContentBaseDirectoryLocation + File.separator + DEFAULT_CONTENT_FILENAME, this.currentContentBaseDirectoryLocation)) {
            reversionSuccessful = false;
        }
        FileUtils.deleteDirectory(new File(this.tempContentBaseDirectoryLocation));
        return reversionSuccessful;
    }

    private void trimImageCache(long sizeLimit) {
        File imageDirectory = new File(this.imageBaseDirectoryLocation);
        if (imageDirectory != null && imageDirectory.isDirectory()) {
            long dirSize = FileUtils.getDirectorySize(imageDirectory);
            if (dirSize >= sizeLimit) {
                FileUtils.deleteDirectory(imageDirectory);
                FileUtils.ensureDirectoryExists(new File(this.imageBaseDirectoryLocation));
            }
        }
    }

    public synchronized void initializeContent(final ExecutorService executorService, final GCVariationManager variationManager, final ContentInitializationCallback callback) {
        trimImageCache(MAX_IMAGE_CACHE_SIZE_BYTES);
        variationManager.refreshVariations(this.context, new GCVariationManager.GCVariationManagerRefreshCallback() { // from class: com.amazon.ags.html5.content.ContentManager.1
            @Override // com.amazon.ags.html5.content.GCVariationManager.GCVariationManagerRefreshCallback
            public void onRefreshCompleted() throws Throwable {
                try {
                    Map<String, String> variationsMap = variationManager.getCachedVariations();
                    String manifestEndpoint = variationsMap.get(ContentManager.MANIFEST_VARIATION);
                    ContentManager.this.fullContentInitialization(executorService, callback, manifestEndpoint);
                } catch (Exception e) {
                    Log.w(ContentManager.TAG, "Content initialization problem encountered", e);
                    if (!ContentManager.this.validateContentIntegrity(ContentManager.this.currentContentBaseDirectoryLocation)) {
                        try {
                            ContentManager.this.revertToDefaultContent();
                        } catch (Exception ex) {
                            Log.w(ContentManager.TAG, "ContentManager unable to sanitize content state.  GameCircle cannot initialize.", ex);
                            callback.onFailure();
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fullContentInitialization(ExecutorService executorService, ContentInitializationCallback callback, final String manifestEndpoint) throws Throwable {
        final ContentVersion postUpgradeCurrentContentVersion;
        boolean contentIsReady;
        if (!ensureBaseDirectoriesExist()) {
            Log.e(TAG, "Unable to setup AGS directory structure.  Content initialization aborted");
            return;
        }
        if (!validateContentIntegrity(this.currentContentBaseDirectoryLocation)) {
            revertToDefaultContent();
        }
        ContentVersion defaultContentVersion = ContentVersion.createVersionFromDefaultContentRawResource(this.context, DEFAULT_CONTENT_DIRECTORY_NAME, DEFAULT_CONTENT_RESOURCE_NAME);
        ContentVersion currentContentVersion = ContentVersion.createVersionFromFile(this.currentContentBaseDirectoryLocation + File.separator + VERSION_FILENAME);
        ContentVersion upgradeContentVersion = localUpgradeContentVersion();
        if (currentContentVersion != null) {
            Log.d(TAG, "Current JavaScript content version: " + currentContentVersion);
        }
        if (defaultContentVersion != null) {
            Log.d(TAG, "Default JavaScript content version: " + defaultContentVersion);
        }
        if (upgradeContentVersion != null) {
            Log.d(TAG, "Upgrade JavaScript content version: " + upgradeContentVersion);
        }
        UpgradeAction upgradeAction = UpgradeAction.NO_UPGRADE;
        if (defaultContentVersion.compareTo(currentContentVersion) > 0) {
            upgradeAction = UpgradeAction.DEFAULT_UPGRADE_ACTION;
        }
        if (upgradeContentVersion.compareTo(defaultContentVersion) > 0 && upgradeContentVersion.compareTo(currentContentVersion) > 0) {
            upgradeAction = UpgradeAction.LOCAL_UPGRADE_ACTION;
        }
        if (upgradeAction == UpgradeAction.DEFAULT_UPGRADE_ACTION || upgradeAction == UpgradeAction.NO_UPGRADE) {
            FileUtils.deleteDirectory(new File(this.upgradeContentBaseDirectoryLocation));
            FileUtils.deleteDirectory(new File(this.downloadContentBaseDirectoryLocation));
        }
        updateContent(upgradeAction);
        if (upgradeAction == UpgradeAction.NO_UPGRADE) {
            postUpgradeCurrentContentVersion = currentContentVersion;
        } else {
            postUpgradeCurrentContentVersion = ContentVersion.createVersionFromFile(this.currentContentBaseDirectoryLocation + File.separator + VERSION_FILENAME);
        }
        if (this.networkUtil != null && this.networkUtil.isNetworkConnected()) {
            executorService.execute(new Runnable() { // from class: com.amazon.ags.html5.content.ContentManager.2
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    boolean shouldAttemptUpgrade = false;
                    Map<String, ContentManifestEntry> manifestEntries = ContentManager.this.downloadRemoteManifest(true, manifestEndpoint);
                    VersionInfo sdkVersion = VersionInfo.getSDKVersion();
                    ContentManifestEntry upgradeEntry = manifestEntries.get(sdkVersion.toString());
                    if (upgradeEntry != null && upgradeEntry.getVersion().compareTo(postUpgradeCurrentContentVersion) > 0) {
                        shouldAttemptUpgrade = true;
                    }
                    if (shouldAttemptUpgrade && upgradeEntry != null) {
                        ContentManager.this.downloadRemoteContent(true, upgradeEntry.getContentURL(), ContentManager.MAX_ASYNCHRONOUS_DOWNLOAD_TIME_MS, upgradeEntry.getChecksum());
                    }
                }
            });
        }
        if (validateContentIntegrity(this.currentContentBaseDirectoryLocation)) {
            contentIsReady = true;
        } else {
            contentIsReady = revertToDefaultContent();
        }
        if (contentIsReady) {
            this.initializedContentVersion = ContentVersion.createVersionFromFile(this.currentContentBaseDirectoryLocation + File.separator + VERSION_FILENAME);
            callback.onInitialized();
        } else {
            callback.onFailure();
        }
    }

    private boolean downloadedFileChecksumIsValid(String targetChecksum) {
        File downloadedFile = new File(this.downloadContentBaseDirectoryLocation + File.separator + CONTENT_FILENAME);
        if (TextUtils.isEmpty(targetChecksum) || downloadedFile == null || !downloadedFile.exists() || !downloadedFile.canRead()) {
            return false;
        }
        String fileChecksum = FileUtils.getMD5ChecksumForFile(this.downloadContentBaseDirectoryLocation + File.separator + CONTENT_FILENAME);
        return targetChecksum.equals(fileChecksum);
    }

    private boolean updateContent(UpgradeAction upgradeAction) {
        switch (upgradeAction) {
            case DEFAULT_UPGRADE_ACTION:
                return revertToDefaultContent();
            case LOCAL_UPGRADE_ACTION:
                return updateContentFromLocalUpgrade();
            case NO_UPGRADE:
                return true;
            default:
                return false;
        }
    }

    private boolean updateContentFromLocalUpgrade() {
        boolean updateSuccess = false;
        FileUtils.ensureDirectoryExists(new File(this.currentContentBaseDirectoryLocation));
        FileUtils.ensureDirectoryExists(new File(this.upgradeContentBaseDirectoryLocation));
        if (FileUtils.extractZipToDirectory(this.downloadContentBaseDirectoryLocation + File.separator + CONTENT_FILENAME, this.upgradeContentBaseDirectoryLocation) && validateContentIntegrity(this.upgradeContentBaseDirectoryLocation)) {
            FileUtils.renameDirectory(this.currentContentBaseDirectoryLocation, this.previousContentBaseDirectoryLocation);
            if (FileUtils.deleteDirectory(new File(this.currentContentBaseDirectoryLocation))) {
                FileUtils.renameDirectory(this.upgradeContentBaseDirectoryLocation, this.currentContentBaseDirectoryLocation);
                if (validateContentIntegrity(this.currentContentBaseDirectoryLocation)) {
                    FileUtils.deleteDirectory(new File(this.previousContentBaseDirectoryLocation));
                    updateSuccess = true;
                } else {
                    FileUtils.deleteDirectory(new File(this.currentContentBaseDirectoryLocation));
                    FileUtils.renameDirectory(this.previousContentBaseDirectoryLocation, this.currentContentBaseDirectoryLocation);
                    FileUtils.deleteDirectory(new File(this.previousContentBaseDirectoryLocation));
                    FileUtils.deleteDirectory(new File(this.upgradeContentBaseDirectoryLocation));
                }
            }
        }
        FileUtils.deleteDirectory(new File(this.upgradeContentBaseDirectoryLocation));
        FileUtils.deleteDirectory(new File(this.downloadContentBaseDirectoryLocation));
        return updateSuccess;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, ContentManifestEntry> downloadRemoteManifest(boolean clearDirectoryFirst, String manifestEndpoint) throws Throwable {
        if (clearDirectoryFirst) {
            FileUtils.deleteDirectory(new File(this.downloadContentBaseDirectoryLocation));
            FileUtils.ensureDirectoryExists(new File(this.downloadContentBaseDirectoryLocation));
        }
        if (TextUtils.isEmpty(manifestEndpoint)) {
            return new HashMap();
        }
        FileUtils.downloadFile(manifestEndpoint, this.downloadContentBaseDirectoryLocation + File.separator + MANIFEST_FILENAME, HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
        return ContentManifestEntry.createManifestEntriesFromFile(this.downloadContentBaseDirectoryLocation + File.separator + MANIFEST_FILENAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:21:0x0064 A[Catch: all -> 0x0070, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:7:0x000d, B:8:0x0021, B:10:0x0042, B:12:0x0049, B:14:0x004f, B:17:0x0057, B:21:0x0064), top: B:27:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x000d A[Catch: all -> 0x0070, TryCatch #0 {, blocks: (B:4:0x0003, B:7:0x000d, B:8:0x0021, B:10:0x0042, B:12:0x0049, B:14:0x004f, B:17:0x0057, B:21:0x0064), top: B:27:0x0003 }] */
    public synchronized boolean downloadRemoteContent(boolean clearDirectoryFirst, String contentURL, long timeoutMS, String targetChecksum) {
        boolean downloadSuccessful;
        String filePath;
        File downloadedFile;
        if (targetChecksum == null) {
            Log.w(TAG, "No checksum was provided");
            downloadSuccessful = false;
            if (clearDirectoryFirst) {
                FileUtils.deleteDirectory(new File(this.downloadContentBaseDirectoryLocation));
                FileUtils.ensureDirectoryExists(new File(this.downloadContentBaseDirectoryLocation));
            }
            filePath = this.downloadContentBaseDirectoryLocation + File.separator + CONTENT_FILENAME;
            if (FileUtils.downloadFile(contentURL, filePath, timeoutMS) && (downloadedFile = new File(filePath)) != null && downloadedFile.exists() && downloadedFile.canRead() && (targetChecksum == null || targetChecksum.equals(FileUtils.getMD5ChecksumForFile(filePath)))) {
                downloadSuccessful = true;
            }
            if (!downloadSuccessful) {
                FileUtils.deleteDirectory(new File(this.downloadContentBaseDirectoryLocation));
            }
        } else {
            downloadSuccessful = false;
            if (clearDirectoryFirst) {
                FileUtils.deleteDirectory(new File(this.downloadContentBaseDirectoryLocation));
                FileUtils.ensureDirectoryExists(new File(this.downloadContentBaseDirectoryLocation));
            }
            filePath = this.downloadContentBaseDirectoryLocation + File.separator + CONTENT_FILENAME;
            if (FileUtils.downloadFile(contentURL, filePath, timeoutMS)) {
                downloadSuccessful = true;
            }
            if (!downloadSuccessful) {
                FileUtils.deleteDirectory(new File(this.downloadContentBaseDirectoryLocation));
            }
        }
        throw th;
        return downloadSuccessful;
    }

    private ContentVersion localUpgradeContentVersion() {
        try {
            ZipFile upgradeZip = new ZipFile(this.downloadContentBaseDirectoryLocation + File.separator + CONTENT_FILENAME);
            return ContentVersion.createVersionFromZip(upgradeZip);
        } catch (FileNotFoundException e) {
            Log.i(TAG, "Upgrade zip does not exist.");
            return ContentVersion.getBlankContentVersion();
        } catch (IOException e2) {
            Log.e(TAG, "Error in reading content version from upgrade candidate.", e2);
            return ContentVersion.getBlankContentVersion();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean validateContentIntegrity(String directoryLocation) {
        boolean integritySatisifactory = true;
        File backgroundIndex = new File(directoryLocation + File.separator + BACKGROUND_JAVASCRIPT_FILE);
        File overlayIndex = new File(directoryLocation + File.separator + OVERLAY_JAVASCRIPT_FILE);
        File toastIndex = new File(directoryLocation + File.separator + TOAST_JAVASCRIPT_FILE);
        File versionFile = new File(directoryLocation + File.separator + VERSION_FILENAME);
        if (backgroundIndex == null || !backgroundIndex.exists() || !backgroundIndex.canRead()) {
            integritySatisifactory = false;
        }
        if (overlayIndex == null || !overlayIndex.exists() || !overlayIndex.canRead()) {
            integritySatisifactory = false;
        }
        if (toastIndex == null || !toastIndex.exists() || !toastIndex.canRead()) {
            integritySatisifactory = false;
        }
        if (versionFile == null || !versionFile.exists() || !versionFile.canRead()) {
            return false;
        }
        return integritySatisifactory;
    }

    @Override // com.amazon.ags.html5.javascript.JavascriptRepository
    public void loadBackgroundJavascript(WebView webView) {
        loadManagedContentFileIntoWebview(webView, BACKGROUND_JAVASCRIPT_FILE);
    }

    @Override // com.amazon.ags.html5.javascript.JavascriptRepository
    public void loadAlertJavascript(WebView webView) {
        loadManagedContentFileIntoWebview(webView, ALERT_JAVASCRIPT_FILE);
    }

    @Override // com.amazon.ags.html5.javascript.JavascriptRepository
    public void loadOverlayJavascript(WebView webView) {
        loadManagedContentFileIntoWebview(webView, OVERLAY_JAVASCRIPT_FILE);
    }

    @Override // com.amazon.ags.html5.javascript.JavascriptRepository
    public void loadToastJavascript(WebView webView) {
        loadManagedContentFileIntoWebview(webView, TOAST_JAVASCRIPT_FILE);
    }

    private void loadManagedContentFileIntoWebview(final WebView webView, String file) {
        final File javascriptFile = new File(getContentDirectory() + File.separator + file);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.ags.html5.content.ContentManager.3
            @Override // java.lang.Runnable
            public void run() {
                webView.loadUrl(javascriptFile.toURI().toString());
            }
        });
    }
}

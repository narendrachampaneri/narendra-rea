package com.amazon.ags.client.whispersync.storage;

import android.content.Context;
import android.util.Log;
import com.amazon.ags.AGSClientException;
import com.amazon.ags.client.whispersync.InternalGameDataMap;
import com.amazon.ags.client.whispersync.marshaller.GameDataMarshaller;
import com.amazon.ags.storage.StringObfuscator;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes2.dex */
public class DiskStorage implements LocalStorage {
    public static final String AMAZON_GAMES_DIR_NAME = ".amazonGamesService";
    private static final String BACKUP_FILE_EXTENSION = ".bak";
    private static final String GAME_DATA_FILE = "gameData.json";
    private static final String TAG = "GC_Whispersync";
    private static final String VERSION_INFO_FILE = "latestVersion.txt";
    private final Context context;
    private boolean hasSuccessfullySynchronized;
    private final GameDataMarshaller marshaller;
    private StringObfuscator stringObfuscator;

    public DiskStorage(Context context, GameDataMarshaller marshaller, StringObfuscator stringObfuscator) {
        this.context = context;
        this.marshaller = marshaller;
        this.stringObfuscator = stringObfuscator;
        init();
    }

    private void init() {
        File versionInfoFile = new File(getAmazonGamesDir(), VERSION_INFO_FILE);
        this.hasSuccessfullySynchronized = versionInfoFile.exists();
    }

    @Override // com.amazon.ags.client.whispersync.storage.LocalStorage
    public String getVersionId() throws IOException {
        byte[] versionId = readFromAmazonGamesDir(VERSION_INFO_FILE);
        if (versionId == null) {
            return null;
        }
        return new String(versionId);
    }

    @Override // com.amazon.ags.client.whispersync.storage.LocalStorage
    public void putVersionId(String versionId) throws IOException {
        this.hasSuccessfullySynchronized = true;
        writeToAmazonGamesDir(VERSION_INFO_FILE, versionId.getBytes());
    }

    @Override // com.amazon.ags.client.whispersync.storage.LocalStorage
    public int save(InternalGameDataMap gameDataMap) throws IOException, AGSClientException {
        String gameDataMapJson = this.marshaller.composeForDisk(gameDataMap);
        if (gameDataMapJson != null) {
            Log.v(TAG, "Writing game data to disk: [" + gameDataMapJson + "]");
            String obfuscatedString = this.stringObfuscator.obfuscate(gameDataMapJson);
            if (obfuscatedString != null) {
                writeToAmazonGamesDir(GAME_DATA_FILE, obfuscatedString.getBytes());
                return obfuscatedString.length();
            }
        } else {
            Log.v(TAG, "No game data to write to disk yet");
        }
        return 0;
    }

    @Override // com.amazon.ags.client.whispersync.storage.LocalStorage
    public InternalGameDataMap retrieve() throws IOException, AGSClientException {
        byte[] gameData = readFromAmazonGamesDir(GAME_DATA_FILE);
        if (gameData == null) {
            Log.w(TAG, "Retrieved an empty document from disk");
            return null;
        }
        String obfuscatedGameDataMapJson = new String(gameData);
        String gameDataMapJson = this.stringObfuscator.unobfuscate(obfuscatedGameDataMapJson);
        Log.v(TAG, "Retrieved JSON string [" + gameDataMapJson + "] of game data map from disk");
        return this.marshaller.parse(gameDataMapJson);
    }

    @Override // com.amazon.ags.client.whispersync.storage.LocalStorage
    public boolean hasSuccessfullySynchronized() {
        return this.hasSuccessfullySynchronized;
    }

    public void setStringObfuscator(StringObfuscator stringObfuscator) {
        if (stringObfuscator != null) {
            this.stringObfuscator = stringObfuscator;
        }
    }

    private synchronized byte[] readFromAmazonGamesDir(String fileName) throws IOException {
        byte[] gameData = null;
        synchronized (this) {
            String backupFileName = fileName + BACKUP_FILE_EXTENSION;
            File backupFile = new File(getAmazonGamesDir(), backupFileName);
            File sourceFile = new File(getAmazonGamesDir(), fileName);
            if (backupFile.exists()) {
                Log.w(TAG, "Found backup file [" + backupFileName + "]. This indicates that saving to [" + fileName + "] previously failed.");
                sourceFile.delete();
                if (!backupFile.renameTo(sourceFile)) {
                    Log.e(TAG, "Couldn't rename backup file [" + backupFile + "] to file [" + sourceFile + "]");
                }
            }
            if (sourceFile.exists()) {
                RandomAccessFile file = new RandomAccessFile(sourceFile, "r");
                try {
                    gameData = new byte[(int) file.length()];
                    file.readFully(gameData);
                    try {
                        file.close();
                    } catch (IOException e) {
                    }
                } catch (Throwable th) {
                    try {
                        file.close();
                    } catch (IOException e2) {
                    }
                    throw th;
                }
            }
        }
        return gameData;
    }

    private synchronized void writeToAmazonGamesDir(String fileName, byte[] data) throws IOException {
        String backupFileName = fileName + BACKUP_FILE_EXTENSION;
        File backupFile = new File(getAmazonGamesDir(), backupFileName);
        File targetFile = new File(getAmazonGamesDir(), fileName);
        try {
            if (targetFile.exists()) {
                if (!backupFile.exists()) {
                    if (!targetFile.renameTo(backupFile)) {
                        Log.e(TAG, "Couldn't rename file [" + targetFile + "] to backup file [" + backupFile + "]");
                    }
                } else {
                    Log.w(TAG, "Found backup file [" + backupFileName + "]. This indicates that saving to [" + fileName + "] previously failed.");
                    targetFile.delete();
                }
            }
            writeDataToFile(targetFile, data);
            backupFile.delete();
        } catch (IOException ioe) {
            targetFile.delete();
            throw ioe;
        }
    }

    protected void writeDataToFile(File file, byte[] data) throws IOException {
        FileOutputStream fos = new FileOutputStream(file);
        try {
            fos.write(data);
        } finally {
            fos.close();
        }
    }

    private File getAmazonGamesDir() {
        File dir = new File(this.context.getFilesDir(), AMAZON_GAMES_DIR_NAME);
        dir.mkdirs();
        return dir;
    }
}

package com.amazon.insights.session;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.io.EncryptedBufferedReader;
import com.amazon.insights.core.io.EncryptedWriter;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.FileManager;
import com.amazon.insights.delivery.EventStoreException;
import com.amazon.insights.delivery.FileEventStore;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class FileSessionStore implements SessionStore {
    static final String ENCRYPTION_ALGORITHM = "AES";
    static final String KEY_MAX_STORAGE_SIZE = "maxStorageSize";
    static final long MAX_STORAGE_SIZE = 22560;
    protected static final String SESSION_DIRECTORY = "sessions";
    protected static final String SESSION_FILE_NAME = "sessionFile";
    private static final Logger logger = Logger.getLogger(FileEventStore.class);
    private final InsightsContext context;
    private SecretKey secretKey;
    private File sessionFile;
    private final ReentrantReadWriteLock lock = new ReentrantReadWriteLock(true);
    private final ReentrantReadWriteLock.ReadLock readSessionLock = this.lock.readLock();
    private final ReentrantReadWriteLock.WriteLock writeSessionLock = this.lock.writeLock();
    private EncryptedBufferedReader reader = null;

    public FileSessionStore(InsightsContext context) {
        this.context = context;
        FileManager fileManager = this.context.getSystem().getFileManager();
        File sessionDir = fileManager.createDirectory(SESSION_DIRECTORY);
        try {
            this.sessionFile = fileManager.createFile(new File(sessionDir, SESSION_FILE_NAME));
        } catch (IOException e) {
            logger.deve("Unable to open session file");
            logger.e("An error occurred while attempting to create/open the session file", e);
        }
        byte[] keyBytes = new byte[32];
        try {
            String key = this.context.getCredentials().getPrivateKey();
            if (this.context.getUniqueId() != null && this.context.getUniqueId() != Id.getEmptyId() && this.context.getUniqueId().getValue() != null) {
                key = this.context.getUniqueId().getValue();
            }
            String defaultPrefix = this.context.getCredentials().getPrivateKey();
            String key2 = this.context.getConfiguration().optString("encryptionPrefix", defaultPrefix.length() > 16 ? defaultPrefix.substring(16) : defaultPrefix) + key;
            byte[] hashedKey = key2.getBytes("UTF-8");
            try {
                MessageDigest digest = MessageDigest.getInstance("SHA-256");
                hashedKey = digest.digest(key2.getBytes("UTF-8"));
            } catch (NoSuchAlgorithmException e2) {
            }
            System.arraycopy(hashedKey, 0, keyBytes, 0, 32);
            this.secretKey = new SecretKeySpec(keyBytes, ENCRYPTION_ALGORITHM);
        } catch (UnsupportedEncodingException e3) {
            this.secretKey = null;
        }
    }

    @Override // com.amazon.insights.session.SessionStore
    public void storeSession(Session session) throws SessionStoreException {
        String serializedSession = session.toString();
        this.writeSessionLock.lock();
        try {
            try {
                try {
                    Writer writer = tryInitializeWriter();
                    if (writer != null) {
                        long maxStorageSize = this.context.getConfiguration().optLong(KEY_MAX_STORAGE_SIZE, Long.valueOf(MAX_STORAGE_SIZE)).longValue();
                        if (this.sessionFile.length() + ((long) serializedSession.length()) <= maxStorageSize) {
                            writer.write(serializedSession);
                            writer.flush();
                        } else {
                            logger.e("The session file exceeded its allowed size of " + maxStorageSize + " bytes");
                        }
                    }
                    tryCloseWriter(writer);
                } catch (IOException e) {
                    logger.e("Failed to persist the session", e);
                    tryCloseWriter(null);
                }
                this.writeSessionLock.unlock();
            } catch (Throwable th) {
                this.writeSessionLock.unlock();
                throw th;
            }
        } catch (Throwable th2) {
            tryCloseWriter(null);
            throw th2;
        }
    }

    private Writer tryInitializeWriter() throws SessionStoreException {
        try {
            OutputStream stream = this.context.getSystem().getFileManager().newOutputStream(this.sessionFile, false);
            OutputStreamWriter strWriter = new OutputStreamWriter(stream);
            Writer writer = new EncryptedWriter(strWriter, this.secretKey);
            return writer;
        } catch (FileNotFoundException e) {
            logger.e("Session file not found to persist session to", e);
            throw new EventStoreException("Unable to open session file writer", e);
        } catch (Exception e2) {
            logger.e("Unexpected exception", e2);
            return null;
        }
    }

    private void tryCloseWriter(Writer writer) throws SessionStoreException {
        if (writer != null) {
            try {
                writer.close();
            } catch (IOException e) {
                logger.e("Unable to close writer for session file", e);
            }
        }
    }

    private boolean tryOpenReader() {
        if (this.reader != null) {
            return true;
        }
        InputStreamReader streamReader = null;
        try {
            InputStreamReader streamReader2 = new InputStreamReader(this.context.getSystem().getFileManager().newInputStream(this.sessionFile));
            streamReader = streamReader2;
        } catch (FileNotFoundException e) {
            logger.e("Could not open the session file", e);
        }
        if (streamReader != null) {
            BufferedReader bufferedReader = new BufferedReader(streamReader);
            this.reader = new EncryptedBufferedReader(bufferedReader, this.secretKey);
            return true;
        }
        return false;
    }

    private void tryCloseReader() {
        if (this.reader != null) {
            this.readSessionLock.lock();
            try {
                try {
                    try {
                        this.reader.close();
                        this.reader = null;
                    } catch (IOException ioe) {
                        logger.e("Unable to close reader for session file", ioe);
                        this.reader = null;
                    }
                    this.readSessionLock.unlock();
                } catch (Throwable th) {
                    this.reader = null;
                    throw th;
                }
            } catch (Throwable th2) {
                this.readSessionLock.unlock();
                throw th2;
            }
        }
    }

    @Override // com.amazon.insights.session.SessionStore
    public Session getSession() {
        String serializedSession = null;
        this.readSessionLock.lock();
        try {
            try {
                try {
                    tryOpenReader();
                    if (this.reader != null) {
                        serializedSession = this.reader.readLine();
                    }
                    tryCloseReader();
                    FileManager fileManager = this.context.getSystem().getFileManager();
                    try {
                        if (fileManager.deleteFile(this.sessionFile) || !this.sessionFile.exists()) {
                            this.sessionFile = fileManager.createFile(this.sessionFile);
                        }
                    } catch (IOException e) {
                        logger.e("Unable to clear session file", e);
                    }
                } catch (IOException e2) {
                    logger.e("Failed to read the session", e2);
                    tryCloseReader();
                    FileManager fileManager2 = this.context.getSystem().getFileManager();
                    try {
                        if (fileManager2.deleteFile(this.sessionFile) || !this.sessionFile.exists()) {
                            this.sessionFile = fileManager2.createFile(this.sessionFile);
                        }
                    } catch (IOException e3) {
                        logger.e("Unable to clear session file", e3);
                    }
                }
                this.readSessionLock.unlock();
                return Session.getSessionFromSerializedSession(serializedSession);
            } catch (Throwable th) {
                tryCloseReader();
                FileManager fileManager3 = this.context.getSystem().getFileManager();
                try {
                    if (fileManager3.deleteFile(this.sessionFile) || !this.sessionFile.exists()) {
                        this.sessionFile = fileManager3.createFile(this.sessionFile);
                    }
                } catch (IOException e4) {
                    logger.e("Unable to clear session file", e4);
                }
                throw th;
            }
        } catch (Throwable th2) {
            this.readSessionLock.unlock();
            throw th2;
        }
    }
}

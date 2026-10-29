package com.amazon.insights.delivery;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.io.DecryptionException;
import com.amazon.insights.core.io.EncryptedBufferedReader;
import com.amazon.insights.core.io.EncryptedWriter;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.FileManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.locks.ReentrantLock;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class FileEventStore implements EventStore {
    static final String ENCRYPTION_ALGORITHM = "AES";
    static final double ERROR_LENGTH_THRESHOLD_PERCENTAGE = 1.1d;
    static final String EVENTS_DIRECTORY = "events";
    static final String EVENT_FILE_NAME = "eventsFile";
    static final String KEY_MAX_STORAGE_SIZE = "maxStorageSize";
    static final long MAX_STORAGE_SIZE = 5242880;
    private static final Logger logger = Logger.getLogger(FileEventStore.class);
    private final ReentrantLock accessLock = new ReentrantLock(true);
    private final InsightsContext context;
    private File eventsFile;
    private SecretKey secretKey;

    public static FileEventStore newInstance(InsightsContext context) {
        return new FileEventStore(context);
    }

    public FileEventStore(InsightsContext context) {
        this.context = context;
        tryCreateEventsFile();
        byte[] keyBytes = new byte[32];
        try {
            String key = context.getCredentials().getPrivateKey();
            if (context.getUniqueId() != null && context.getUniqueId() != Id.getEmptyId() && context.getUniqueId().getValue() != null) {
                key = context.getUniqueId().getValue();
            }
            String defaultPrefix = context.getCredentials().getPrivateKey();
            String key2 = context.getConfiguration().optString("encryptionPrefix", defaultPrefix.length() > 16 ? defaultPrefix.substring(16) : defaultPrefix) + key;
            byte[] hashedKey = key2.getBytes("UTF-8");
            try {
                MessageDigest digest = MessageDigest.getInstance("SHA-256");
                hashedKey = digest.digest(key2.getBytes("UTF-8"));
            } catch (NoSuchAlgorithmException e) {
            }
            System.arraycopy(hashedKey, 0, keyBytes, 0, 32);
            this.secretKey = new SecretKeySpec(keyBytes, ENCRYPTION_ALGORITHM);
        } catch (UnsupportedEncodingException e2) {
            this.secretKey = null;
        }
    }

    @Override // com.amazon.insights.delivery.EventStore
    public boolean put(String event) throws EventStoreException {
        boolean success = false;
        Writer writer = null;
        this.accessLock.lock();
        try {
            try {
                writer = tryInitializeWriter();
                if (writer != null) {
                    long maxStorageSize = this.context.getConfiguration().optLong(KEY_MAX_STORAGE_SIZE, Long.valueOf(MAX_STORAGE_SIZE)).longValue();
                    if (this.eventsFile.length() + ((long) event.length()) <= maxStorageSize) {
                        writer.write(event);
                        writer.flush();
                        success = true;
                    } else {
                        logger.e("The events file exceeded its allowed size of " + maxStorageSize + " bytes");
                    }
                }
            } catch (IOException e) {
                logger.e("Failed to persist the event", e);
            }
            return success;
        } finally {
            this.accessLock.unlock();
            tryCloseWriter(writer);
        }
    }

    private boolean tryCreateEventsFile() {
        boolean z = true;
        if (this.eventsFile == null || !this.eventsFile.exists()) {
            synchronized (this) {
                if (this.eventsFile == null || !this.eventsFile.exists()) {
                    try {
                        FileManager fileManager = this.context.getSystem().getFileManager();
                        File eventsDir = fileManager.createDirectory("events");
                        this.eventsFile = fileManager.createFile(new File(eventsDir, EVENT_FILE_NAME));
                    } catch (IOException e) {
                        logger.deve("Unable to open events file");
                        logger.e("An error occurred while attempting to create/open the events file", e);
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    private Writer tryInitializeWriter() throws EventStoreException {
        try {
            if (tryCreateEventsFile()) {
                OutputStream stream = this.context.getSystem().getFileManager().newOutputStream(this.eventsFile, true);
                OutputStreamWriter strWriter = new OutputStreamWriter(stream);
                Writer writer = new EncryptedWriter(strWriter, this.secretKey);
                return writer;
            }
            throw new EventStoreException("Unable to create eventsFile");
        } catch (EventStoreException e) {
            throw e;
        } catch (FileNotFoundException e2) {
            logger.e("Events file not found to persist event to", e2);
            throw new EventStoreException("Unable to open events file writer", e2);
        } catch (Exception e3) {
            logger.e("Unexpected exception", e3);
            throw new EventStoreException("Unexpected error while creating eventsFile writer", e3);
        }
    }

    private void tryCloseWriter(Writer writer) throws EventStoreException {
        if (writer != null) {
            try {
                writer.close();
            } catch (IOException e) {
                logger.e("Unable to close writer for events file", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File deleteReadEvents(int lineNumber) throws Throwable {
        FileManager fileManager = this.context.getSystem().getFileManager();
        File eventsDir = fileManager.createDirectory("events");
        long maxStorageSize = this.context.getConfiguration().optLong(KEY_MAX_STORAGE_SIZE, Long.valueOf(MAX_STORAGE_SIZE)).longValue();
        long threshold = (long) (maxStorageSize * ERROR_LENGTH_THRESHOLD_PERCENTAGE);
        if (this.eventsFile.length() >= threshold) {
            if (!this.eventsFile.delete()) {
                logger.e("Failed to delete events file that exceeds the max storage size");
            }
            try {
                this.eventsFile = fileManager.createFile(new File(eventsDir, EVENT_FILE_NAME));
            } catch (IOException e) {
                logger.e("An error occurred while attempting to create the eventsFile", e);
            }
            return this.eventsFile;
        }
        try {
            File tempFile = new File(eventsDir, "eventsFile.tmp");
            if (tempFile.exists() && !tempFile.delete()) {
                logger.e("Failed to delete previous temp file");
            }
            File tempEventsFile = fileManager.createFile(tempFile);
            boolean errorsOccurred = false;
            if (tempEventsFile != null && this.eventsFile.exists() && tempEventsFile.exists()) {
                BufferedReader reader = null;
                PrintWriter writer = null;
                try {
                    try {
                        BufferedReader reader2 = new BufferedReader(new FileReader(this.eventsFile));
                        try {
                            PrintWriter writer2 = new PrintWriter(new FileWriter(tempEventsFile, true));
                            int currentLineNumber = 0;
                            while (true) {
                                try {
                                    String line = reader2.readLine();
                                    if (line == null) {
                                        break;
                                    }
                                    currentLineNumber++;
                                    if (currentLineNumber > lineNumber) {
                                        writer2.println(line);
                                        writer2.flush();
                                    }
                                } catch (FileNotFoundException e2) {
                                    e = e2;
                                    writer = writer2;
                                    reader = reader2;
                                    errorsOccurred = true;
                                    logger.e("The events file count not be found", e);
                                    if (writer != null) {
                                        writer.close();
                                    }
                                    if (reader != null) {
                                        try {
                                            reader.close();
                                        } catch (IOException e3) {
                                        }
                                    }
                                    if (1 == 0) {
                                        if (this.eventsFile.delete()) {
                                            if (!tempEventsFile.renameTo(this.eventsFile)) {
                                                logger.e("Failed to rename temp file to events file");
                                            }
                                            try {
                                                this.eventsFile = fileManager.createFile(new File(eventsDir, EVENT_FILE_NAME));
                                            } catch (IOException e4) {
                                                logger.e("An error occurred while attempting to create the eventsFile", e4);
                                            }
                                        } else {
                                            logger.e("Failed to delete previous events file");
                                        }
                                    }
                                } catch (IOException e5) {
                                    e = e5;
                                    writer = writer2;
                                    reader = reader2;
                                    logger.e("An error occurred while attempting to delete the read events", e);
                                    errorsOccurred = true;
                                    if (writer != null) {
                                        writer.close();
                                    }
                                    if (reader != null) {
                                        try {
                                            reader.close();
                                        } catch (IOException e6) {
                                        }
                                    }
                                    if (1 == 0) {
                                        if (this.eventsFile.delete()) {
                                            if (!tempEventsFile.renameTo(this.eventsFile)) {
                                                logger.e("Failed to rename temp file to events file");
                                            }
                                            try {
                                                this.eventsFile = fileManager.createFile(new File(eventsDir, EVENT_FILE_NAME));
                                            } catch (IOException e7) {
                                                logger.e("An error occurred while attempting to create the eventsFile", e7);
                                            }
                                        } else {
                                            logger.e("Failed to delete previous events file");
                                        }
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    writer = writer2;
                                    reader = reader2;
                                    if (writer != null) {
                                        writer.close();
                                    }
                                    if (reader != null) {
                                        try {
                                            reader.close();
                                        } catch (IOException e8) {
                                        }
                                    }
                                    if (errorsOccurred) {
                                        throw th;
                                    }
                                    if (!this.eventsFile.delete()) {
                                        logger.e("Failed to delete previous events file");
                                        throw th;
                                    }
                                    if (!tempEventsFile.renameTo(this.eventsFile)) {
                                        logger.e("Failed to rename temp file to events file");
                                    }
                                    try {
                                        this.eventsFile = fileManager.createFile(new File(eventsDir, EVENT_FILE_NAME));
                                        throw th;
                                    } catch (IOException e9) {
                                        logger.e("An error occurred while attempting to create the eventsFile", e9);
                                        throw th;
                                    }
                                }
                            }
                            if (writer2 != null) {
                                writer2.close();
                            }
                            if (reader2 != null) {
                                try {
                                    reader2.close();
                                } catch (IOException e10) {
                                }
                            }
                            if (0 != 0) {
                                writer = writer2;
                                reader = reader2;
                            } else if (this.eventsFile.delete()) {
                                if (!tempEventsFile.renameTo(this.eventsFile)) {
                                    logger.e("Failed to rename temp file to events file");
                                }
                                try {
                                    this.eventsFile = fileManager.createFile(new File(eventsDir, EVENT_FILE_NAME));
                                    writer = writer2;
                                    reader = reader2;
                                } catch (IOException e11) {
                                    logger.e("An error occurred while attempting to create the eventsFile", e11);
                                    writer = writer2;
                                    reader = reader2;
                                }
                            } else {
                                logger.e("Failed to delete previous events file");
                                writer = writer2;
                                reader = reader2;
                            }
                        } catch (FileNotFoundException e12) {
                            e = e12;
                            reader = reader2;
                        } catch (IOException e13) {
                            e = e13;
                            reader = reader2;
                        } catch (Throwable th2) {
                            th = th2;
                            reader = reader2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (FileNotFoundException e14) {
                    e = e14;
                } catch (IOException e15) {
                    e = e15;
                }
                File tempFile2 = new File(eventsDir, "eventsFile.tmp");
                if (tempFile2.exists() && !tempFile2.delete()) {
                    logger.e("Failed to delete temp file");
                }
            }
            return this.eventsFile;
        } catch (IOException e16) {
            logger.e("An error occurred while attempting to create/open the temporary events file", e16);
            return this.eventsFile;
        }
    }

    @Override // com.amazon.insights.delivery.EventStore
    public EventStore.EventIterator iterator() {
        return new EventStore.EventIterator() { // from class: com.amazon.insights.delivery.FileEventStore.1
            int linesRead = 0;
            String nextBuffer = null;
            EncryptedBufferedReader reader = null;
            boolean isEndOfFile = false;

            private boolean tryOpenReader() {
                if (this.reader != null) {
                    return true;
                }
                if (!this.isEndOfFile) {
                    InputStreamReader streamReader = null;
                    try {
                        InputStreamReader streamReader2 = new InputStreamReader(FileEventStore.this.context.getSystem().getFileManager().newInputStream(FileEventStore.this.eventsFile));
                        streamReader = streamReader2;
                    } catch (FileNotFoundException e) {
                        FileEventStore.logger.e("Could not open the events file", e);
                    }
                    if (streamReader != null) {
                        BufferedReader bufferedReader = new BufferedReader(streamReader);
                        this.reader = new EncryptedBufferedReader(bufferedReader, FileEventStore.this.secretKey);
                        return true;
                    }
                }
                return false;
            }

            private void tryCloseReader() {
                try {
                    if (this.reader != null) {
                        this.reader.close();
                    }
                } catch (IOException ioe) {
                    FileEventStore.logger.e("Unable to close reader for events file", ioe);
                } finally {
                    this.reader = null;
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                boolean hasNext = false;
                FileEventStore.this.accessLock.lock();
                try {
                    if (this.nextBuffer != null) {
                        hasNext = true;
                    } else {
                        if (!tryOpenReader()) {
                            FileEventStore.this.accessLock.unlock();
                            return false;
                        }
                        boolean found = false;
                        while (!found) {
                            try {
                                try {
                                    this.nextBuffer = this.reader.readLine();
                                    found = true;
                                } catch (IOException e) {
                                    this.nextBuffer = null;
                                    found = true;
                                }
                            } catch (DecryptionException e2) {
                                this.linesRead++;
                                found = false;
                            }
                        }
                        if (this.nextBuffer != null) {
                            hasNext = true;
                        } else {
                            this.isEndOfFile = true;
                            tryCloseReader();
                        }
                    }
                    FileEventStore.this.accessLock.unlock();
                    return hasNext;
                } catch (Throwable th) {
                    FileEventStore.this.accessLock.unlock();
                    throw th;
                }
            }

            @Override // java.util.Iterator
            public String next() {
                String next = null;
                FileEventStore.this.accessLock.lock();
                try {
                    if (this.nextBuffer != null) {
                        next = this.nextBuffer;
                        this.linesRead++;
                        this.nextBuffer = null;
                    } else {
                        if (!tryOpenReader()) {
                            FileEventStore.this.accessLock.unlock();
                            return null;
                        }
                        boolean found = false;
                        while (!found) {
                            try {
                                next = this.reader.readLine();
                                found = true;
                            } catch (DecryptionException e) {
                                this.linesRead++;
                                found = false;
                            } catch (IOException e2) {
                                next = null;
                                found = true;
                            }
                        }
                        if (next != null) {
                            this.linesRead++;
                        } else {
                            this.isEndOfFile = true;
                            tryCloseReader();
                        }
                    }
                    FileEventStore.this.accessLock.unlock();
                    return next;
                } catch (Throwable th) {
                    FileEventStore.this.accessLock.unlock();
                    throw th;
                }
            }

            @Override // com.amazon.insights.delivery.EventStore.EventIterator
            public String peek() {
                FileEventStore.this.accessLock.lock();
                try {
                    hasNext();
                    return this.nextBuffer;
                } finally {
                    FileEventStore.this.accessLock.unlock();
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("The remove() operation is not supported for this iterator");
            }

            @Override // com.amazon.insights.delivery.EventStore.EventIterator
            public void removeReadEvents() {
                FileEventStore.this.accessLock.lock();
                try {
                    FileEventStore.this.deleteReadEvents(this.linesRead);
                    resetReader();
                } finally {
                    FileEventStore.this.accessLock.unlock();
                }
            }

            private void resetReader() {
                tryCloseReader();
                this.linesRead = 0;
                this.nextBuffer = null;
            }
        };
    }
}

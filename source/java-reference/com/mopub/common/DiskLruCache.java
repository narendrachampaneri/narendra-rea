package com.mopub.common;

import android.support.annotation.NonNull;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class DiskLruCache implements Closeable {
    static final long ANY_SEQUENCE_NUMBER = -1;
    private static final String CLEAN = "CLEAN";
    private static final String DIRTY = "DIRTY";
    static final String JOURNAL_FILE = "journal";
    static final String JOURNAL_FILE_BACKUP = "journal.bkp";
    static final String JOURNAL_FILE_TEMP = "journal.tmp";
    static final String MAGIC = "libcore.io.DiskLruCache";
    private static final String READ = "READ";
    private static final String REMOVE = "REMOVE";
    static final String VERSION_1 = "1";
    private final int appVersion;
    private final File directory;
    private final File journalFile;
    private final File journalFileBackup;
    private final File journalFileTmp;
    private Writer journalWriter;
    private long maxSize;
    private int redundantOpCount;
    private final int valueCount;
    static final Pattern LEGAL_KEY_PATTERN = Pattern.compile("[a-z0-9_-]{1,64}");
    private static final OutputStream NULL_OUTPUT_STREAM = new OutputStream() { // from class: com.mopub.common.DiskLruCache.2
        @Override // java.io.OutputStream
        public void write(int b) throws IOException {
        }
    };
    private long size = 0;
    private final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap<>(0, 0.75f, true);
    private long nextSequenceNumber = 0;
    final ThreadPoolExecutor executorService = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> cleanupCallable = new Callable<Void>() { // from class: com.mopub.common.DiskLruCache.1
        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (DiskLruCache.this) {
                if (DiskLruCache.this.journalWriter != null) {
                    DiskLruCache.this.trimToSize();
                    if (DiskLruCache.this.journalRebuildRequired()) {
                        DiskLruCache.this.rebuildJournal();
                        DiskLruCache.this.redundantOpCount = 0;
                    }
                }
            }
            return null;
        }
    };

    private DiskLruCache(File directory, int appVersion, int valueCount, long maxSize) {
        this.directory = directory;
        this.appVersion = appVersion;
        this.journalFile = new File(directory, JOURNAL_FILE);
        this.journalFileTmp = new File(directory, JOURNAL_FILE_TEMP);
        this.journalFileBackup = new File(directory, JOURNAL_FILE_BACKUP);
        this.valueCount = valueCount;
        this.maxSize = maxSize;
    }

    public static DiskLruCache open(File directory, int appVersion, int valueCount, long maxSize) throws IOException {
        if (maxSize <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (valueCount <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File backupFile = new File(directory, JOURNAL_FILE_BACKUP);
        if (backupFile.exists()) {
            File journalFile = new File(directory, JOURNAL_FILE);
            if (journalFile.exists()) {
                backupFile.delete();
            } else {
                renameTo(backupFile, journalFile, false);
            }
        }
        DiskLruCache cache = new DiskLruCache(directory, appVersion, valueCount, maxSize);
        if (cache.journalFile.exists()) {
            try {
                cache.readJournal();
                cache.processJournal();
                cache.journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(cache.journalFile, true), DiskLruCacheUtil.US_ASCII));
                return cache;
            } catch (IOException journalIsCorrupt) {
                System.out.println("DiskLruCache " + directory + " is corrupt: " + journalIsCorrupt.getMessage() + ", removing");
                cache.delete();
            }
        }
        directory.mkdirs();
        DiskLruCache cache2 = new DiskLruCache(directory, appVersion, valueCount, maxSize);
        cache2.rebuildJournal();
        return cache2;
    }

    private void readJournal() throws IOException {
        DiskLruCacheStrictLineReader reader = new DiskLruCacheStrictLineReader(new FileInputStream(this.journalFile), DiskLruCacheUtil.US_ASCII);
        try {
            String magic = reader.readLine();
            String version = reader.readLine();
            String appVersionString = reader.readLine();
            String valueCountString = reader.readLine();
            String blank = reader.readLine();
            if (!MAGIC.equals(magic) || !VERSION_1.equals(version) || !Integer.toString(this.appVersion).equals(appVersionString) || !Integer.toString(this.valueCount).equals(valueCountString) || !"".equals(blank)) {
                throw new IOException("unexpected journal header: [" + magic + ", " + version + ", " + valueCountString + ", " + blank + "]");
            }
            int lineCount = 0;
            while (true) {
                try {
                    readJournalLine(reader.readLine());
                    lineCount++;
                } catch (EOFException e) {
                    this.redundantOpCount = lineCount - this.lruEntries.size();
                    DiskLruCacheUtil.closeQuietly(reader);
                    return;
                }
            }
        } catch (Throwable th) {
            DiskLruCacheUtil.closeQuietly(reader);
            throw th;
        }
    }

    private void readJournalLine(String line) throws IOException {
        String key;
        int firstSpace = line.indexOf(32);
        if (firstSpace == -1) {
            throw new IOException("unexpected journal line: " + line);
        }
        int keyBegin = firstSpace + 1;
        int secondSpace = line.indexOf(32, keyBegin);
        if (secondSpace == -1) {
            key = line.substring(keyBegin);
            if (firstSpace == REMOVE.length() && line.startsWith(REMOVE)) {
                this.lruEntries.remove(key);
                return;
            }
        } else {
            key = line.substring(keyBegin, secondSpace);
        }
        Entry entry = this.lruEntries.get(key);
        if (entry == null) {
            entry = new Entry(key);
            this.lruEntries.put(key, entry);
        }
        if (secondSpace != -1 && firstSpace == CLEAN.length() && line.startsWith(CLEAN)) {
            String[] parts = line.substring(secondSpace + 1).split(" ");
            entry.readable = true;
            entry.currentEditor = null;
            entry.setLengths(parts);
            return;
        }
        if (secondSpace != -1 || firstSpace != DIRTY.length() || !line.startsWith(DIRTY)) {
            if (secondSpace != -1 || firstSpace != READ.length() || !line.startsWith(READ)) {
                throw new IOException("unexpected journal line: " + line);
            }
            return;
        }
        entry.currentEditor = new Editor(entry);
    }

    private void processJournal() throws IOException {
        deleteIfExists(this.journalFileTmp);
        Iterator<Entry> i = this.lruEntries.values().iterator();
        while (i.hasNext()) {
            Entry entry = i.next();
            if (entry.currentEditor == null) {
                for (int t = 0; t < this.valueCount; t++) {
                    this.size += entry.lengths[t];
                }
            } else {
                entry.currentEditor = null;
                for (int t2 = 0; t2 < this.valueCount; t2++) {
                    deleteIfExists(entry.getCleanFile(t2));
                    deleteIfExists(entry.getDirtyFile(t2));
                }
                i.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void rebuildJournal() throws IOException {
        try {
            if (this.journalWriter != null) {
                this.journalWriter.close();
            }
            Writer writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFileTmp), DiskLruCacheUtil.US_ASCII));
            try {
                writer.write(MAGIC);
                writer.write("\n");
                writer.write(VERSION_1);
                writer.write("\n");
                writer.write(Integer.toString(this.appVersion));
                writer.write("\n");
                writer.write(Integer.toString(this.valueCount));
                writer.write("\n");
                writer.write("\n");
                for (Entry entry : this.lruEntries.values()) {
                    if (entry.currentEditor != null) {
                        writer.write("DIRTY " + entry.key + '\n');
                    } else {
                        writer.write("CLEAN " + entry.key + entry.getLengths() + '\n');
                    }
                }
                writer.close();
                if (this.journalFile.exists()) {
                    renameTo(this.journalFile, this.journalFileBackup, true);
                }
                renameTo(this.journalFileTmp, this.journalFile, false);
                this.journalFileBackup.delete();
                this.journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFile, true), DiskLruCacheUtil.US_ASCII));
            } catch (Throwable th) {
                writer.close();
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static void deleteIfExists(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void renameTo(File from, File to, boolean deleteDestination) throws IOException {
        if (deleteDestination) {
            deleteIfExists(to);
        }
        if (!from.renameTo(to)) {
            throw new IOException();
        }
    }

    public synchronized Snapshot get(String key) throws IOException {
        Snapshot snapshot = null;
        synchronized (this) {
            checkNotClosed();
            validateKey(key);
            Entry entry = this.lruEntries.get(key);
            if (entry != null && entry.readable) {
                InputStream[] ins = new InputStream[this.valueCount];
                for (int i = 0; i < this.valueCount; i++) {
                    try {
                        ins[i] = new FileInputStream(entry.getCleanFile(i));
                    } catch (FileNotFoundException e) {
                        for (int i2 = 0; i2 < this.valueCount && ins[i2] != null; i2++) {
                            DiskLruCacheUtil.closeQuietly(ins[i2]);
                        }
                    }
                }
                this.redundantOpCount++;
                this.journalWriter.append((CharSequence) ("READ " + key + '\n'));
                if (journalRebuildRequired()) {
                    this.executorService.submit(this.cleanupCallable);
                }
                snapshot = new Snapshot(key, entry.sequenceNumber, ins, entry.lengths);
            }
        }
        return snapshot;
    }

    public Editor edit(String key) throws IOException {
        return edit(key, -1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Editor edit(String key, long expectedSequenceNumber) throws IOException {
        Editor editor = null;
        synchronized (this) {
            checkNotClosed();
            validateKey(key);
            Entry entry = this.lruEntries.get(key);
            if (expectedSequenceNumber == -1 || (entry != null && entry.sequenceNumber == expectedSequenceNumber)) {
                if (entry == null) {
                    entry = new Entry(key);
                    this.lruEntries.put(key, entry);
                } else if (entry.currentEditor == null) {
                }
                editor = new Editor(entry);
                entry.currentEditor = editor;
                this.journalWriter.write("DIRTY " + key + '\n');
                this.journalWriter.flush();
            }
        }
        return editor;
    }

    public File getDirectory() {
        return this.directory;
    }

    public synchronized long getMaxSize() {
        return this.maxSize;
    }

    public synchronized void setMaxSize(long maxSize) {
        this.maxSize = maxSize;
        this.executorService.submit(this.cleanupCallable);
    }

    public synchronized long size() {
        return this.size;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:29:0x005c A[Catch: all -> 0x0011, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000b, B:6:0x0010, B:11:0x0016, B:14:0x001d, B:16:0x0021, B:18:0x0029, B:19:0x0044, B:20:0x0045, B:22:0x004f, B:27:0x0058, B:29:0x005c, B:31:0x0062, B:33:0x0068, B:34:0x0085, B:35:0x0088, B:36:0x008c, B:38:0x009d, B:40:0x00cd, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0062 A[Catch: all -> 0x0011, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000b, B:6:0x0010, B:11:0x0016, B:14:0x001d, B:16:0x0021, B:18:0x0029, B:19:0x0044, B:20:0x0045, B:22:0x004f, B:27:0x0058, B:29:0x005c, B:31:0x0062, B:33:0x0068, B:34:0x0085, B:35:0x0088, B:36:0x008c, B:38:0x009d, B:40:0x00cd, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0068 A[Catch: all -> 0x0011, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000b, B:6:0x0010, B:11:0x0016, B:14:0x001d, B:16:0x0021, B:18:0x0029, B:19:0x0044, B:20:0x0045, B:22:0x004f, B:27:0x0058, B:29:0x005c, B:31:0x0062, B:33:0x0068, B:34:0x0085, B:35:0x0088, B:36:0x008c, B:38:0x009d, B:40:0x00cd, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0088 A[Catch: all -> 0x0011, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000b, B:6:0x0010, B:11:0x0016, B:14:0x001d, B:16:0x0021, B:18:0x0029, B:19:0x0044, B:20:0x0045, B:22:0x004f, B:27:0x0058, B:29:0x005c, B:31:0x0062, B:33:0x0068, B:34:0x0085, B:35:0x0088, B:36:0x008c, B:38:0x009d, B:40:0x00cd, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x009d A[Catch: all -> 0x0011, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000b, B:6:0x0010, B:11:0x0016, B:14:0x001d, B:16:0x0021, B:18:0x0029, B:19:0x0044, B:20:0x0045, B:22:0x004f, B:27:0x0058, B:29:0x005c, B:31:0x0062, B:33:0x0068, B:34:0x0085, B:35:0x0088, B:36:0x008c, B:38:0x009d, B:40:0x00cd, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00cd A[Catch: all -> 0x0011, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000b, B:6:0x0010, B:11:0x0016, B:14:0x001d, B:16:0x0021, B:18:0x0029, B:19:0x0044, B:20:0x0045, B:22:0x004f, B:27:0x0058, B:29:0x005c, B:31:0x0062, B:33:0x0068, B:34:0x0085, B:35:0x0088, B:36:0x008c, B:38:0x009d, B:40:0x00cd, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00ea A[Catch: all -> 0x0011, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000b, B:6:0x0010, B:11:0x0016, B:14:0x001d, B:16:0x0021, B:18:0x0029, B:19:0x0044, B:20:0x0045, B:22:0x004f, B:27:0x0058, B:29:0x005c, B:31:0x0062, B:33:0x0068, B:34:0x0085, B:35:0x0088, B:36:0x008c, B:38:0x009d, B:40:0x00cd, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00f3 A[Catch: all -> 0x0011, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000b, B:6:0x0010, B:11:0x0016, B:14:0x001d, B:16:0x0021, B:18:0x0029, B:19:0x0044, B:20:0x0045, B:22:0x004f, B:27:0x0058, B:29:0x005c, B:31:0x0062, B:33:0x0068, B:34:0x0085, B:35:0x0088, B:36:0x008c, B:38:0x009d, B:40:0x00cd, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0085 A[SYNTHETIC] */
    public synchronized void completeEdit(Editor editor, boolean success) throws IOException {
        int i;
        File dirty;
        Entry entry = editor.entry;
        if (entry.currentEditor != editor) {
            throw new IllegalStateException();
        }
        if (success && !entry.readable) {
            for (int i2 = 0; i2 < this.valueCount; i2++) {
                if (!editor.written[i2]) {
                    editor.abort();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                }
                if (!entry.getDirtyFile(i2).exists()) {
                    editor.abort();
                }
            }
            for (i = 0; i < this.valueCount; i++) {
                dirty = entry.getDirtyFile(i);
                if (success) {
                    if (dirty.exists()) {
                        File clean = entry.getCleanFile(i);
                        dirty.renameTo(clean);
                        long oldLength = entry.lengths[i];
                        long newLength = clean.length();
                        entry.lengths[i] = newLength;
                        this.size = (this.size - oldLength) + newLength;
                    }
                } else {
                    deleteIfExists(dirty);
                }
            }
            this.redundantOpCount++;
            entry.currentEditor = null;
            if (entry.readable | success) {
                entry.readable = true;
                this.journalWriter.write("CLEAN " + entry.key + entry.getLengths() + '\n');
                if (success) {
                    long j = this.nextSequenceNumber;
                    this.nextSequenceNumber = 1 + j;
                    entry.sequenceNumber = j;
                }
            } else {
                this.lruEntries.remove(entry.key);
                this.journalWriter.write("REMOVE " + entry.key + '\n');
            }
            this.journalWriter.flush();
            if (this.size <= this.maxSize) {
                this.executorService.submit(this.cleanupCallable);
            } else {
                this.executorService.submit(this.cleanupCallable);
            }
        } else {
            while (i < this.valueCount) {
                dirty = entry.getDirtyFile(i);
                if (success) {
                    if (dirty.exists()) {
                        File clean2 = entry.getCleanFile(i);
                        dirty.renameTo(clean2);
                        long oldLength2 = entry.lengths[i];
                        long newLength2 = clean2.length();
                        entry.lengths[i] = newLength2;
                        this.size = (this.size - oldLength2) + newLength2;
                    }
                } else {
                    deleteIfExists(dirty);
                }
            }
            this.redundantOpCount++;
            entry.currentEditor = null;
            if (entry.readable | success) {
                entry.readable = true;
                this.journalWriter.write("CLEAN " + entry.key + entry.getLengths() + '\n');
                if (success) {
                    long j2 = this.nextSequenceNumber;
                    this.nextSequenceNumber = 1 + j2;
                    entry.sequenceNumber = j2;
                }
            } else {
                this.lruEntries.remove(entry.key);
                this.journalWriter.write("REMOVE " + entry.key + '\n');
            }
            this.journalWriter.flush();
            if (this.size <= this.maxSize || journalRebuildRequired()) {
                this.executorService.submit(this.cleanupCallable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean journalRebuildRequired() {
        return this.redundantOpCount >= 2000 && this.redundantOpCount >= this.lruEntries.size();
    }

    public synchronized boolean remove(String key) throws IOException {
        boolean z;
        checkNotClosed();
        validateKey(key);
        Entry entry = this.lruEntries.get(key);
        if (entry == null || entry.currentEditor != null) {
            z = false;
        } else {
            for (int i = 0; i < this.valueCount; i++) {
                File file = entry.getCleanFile(i);
                if (file.exists() && !file.delete()) {
                    throw new IOException("failed to delete " + file);
                }
                this.size -= entry.lengths[i];
                entry.lengths[i] = 0;
            }
            this.redundantOpCount++;
            this.journalWriter.append((CharSequence) ("REMOVE " + key + '\n'));
            this.lruEntries.remove(key);
            if (journalRebuildRequired()) {
                this.executorService.submit(this.cleanupCallable);
            }
            z = true;
        }
        return z;
    }

    public synchronized boolean isClosed() {
        return this.journalWriter == null;
    }

    private void checkNotClosed() {
        if (this.journalWriter == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized void flush() throws IOException {
        checkNotClosed();
        trimToSize();
        this.journalWriter.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.journalWriter != null) {
            for (Entry entry : new ArrayList(this.lruEntries.values())) {
                if (entry.currentEditor != null) {
                    entry.currentEditor.abort();
                }
            }
            trimToSize();
            this.journalWriter.close();
            this.journalWriter = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trimToSize() throws IOException {
        while (this.size > this.maxSize) {
            Map.Entry<String, Entry> toEvict = this.lruEntries.entrySet().iterator().next();
            remove(toEvict.getKey());
        }
    }

    public void delete() throws IOException {
        close();
        DiskLruCacheUtil.deleteContents(this.directory);
    }

    private void validateKey(String key) {
        Matcher matcher = LEGAL_KEY_PATTERN.matcher(key);
        if (!matcher.matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + key + "\"");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String inputStreamToString(InputStream in) throws IOException {
        return DiskLruCacheUtil.readFully(new InputStreamReader(in, DiskLruCacheUtil.UTF_8));
    }

    public final class Snapshot implements Closeable {
        private final InputStream[] ins;
        private final String key;
        private final long[] lengths;
        private final long sequenceNumber;

        private Snapshot(String key, long sequenceNumber, InputStream[] ins, long[] lengths) {
            this.key = key;
            this.sequenceNumber = sequenceNumber;
            this.ins = ins;
            this.lengths = lengths;
        }

        public Editor edit() throws IOException {
            return DiskLruCache.this.edit(this.key, this.sequenceNumber);
        }

        public InputStream getInputStream(int index) {
            return this.ins[index];
        }

        public String getString(int index) throws IOException {
            return DiskLruCache.inputStreamToString(getInputStream(index));
        }

        public long getLength(int index) {
            return this.lengths[index];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream in : this.ins) {
                DiskLruCacheUtil.closeQuietly(in);
            }
        }
    }

    public final class Editor {
        private boolean committed;
        private final Entry entry;
        private boolean hasErrors;
        private final boolean[] written;

        private Editor(Entry entry) {
            this.entry = entry;
            this.written = entry.readable ? null : new boolean[DiskLruCache.this.valueCount];
        }

        public InputStream newInputStream(int index) throws IOException {
            synchronized (DiskLruCache.this) {
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                }
                if (!this.entry.readable) {
                    return null;
                }
                try {
                    return new FileInputStream(this.entry.getCleanFile(index));
                } catch (FileNotFoundException e) {
                    return null;
                }
            }
        }

        public String getString(int index) throws IOException {
            InputStream in = newInputStream(index);
            if (in != null) {
                return DiskLruCache.inputStreamToString(in);
            }
            return null;
        }

        public OutputStream newOutputStream(int index) throws IOException {
            OutputStream faultHidingOutputStream;
            FileOutputStream outputStream;
            synchronized (DiskLruCache.this) {
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                }
                if (!this.entry.readable) {
                    this.written[index] = true;
                }
                File dirtyFile = this.entry.getDirtyFile(index);
                try {
                    outputStream = new FileOutputStream(dirtyFile);
                } catch (FileNotFoundException e) {
                    DiskLruCache.this.directory.mkdirs();
                    try {
                        outputStream = new FileOutputStream(dirtyFile);
                    } catch (FileNotFoundException e2) {
                        faultHidingOutputStream = DiskLruCache.NULL_OUTPUT_STREAM;
                    }
                }
                faultHidingOutputStream = new FaultHidingOutputStream(outputStream);
            }
            return faultHidingOutputStream;
        }

        public void set(int index, String value) throws Throwable {
            Writer writer = null;
            try {
                Writer writer2 = new OutputStreamWriter(newOutputStream(index), DiskLruCacheUtil.UTF_8);
                try {
                    writer2.write(value);
                    DiskLruCacheUtil.closeQuietly(writer2);
                } catch (Throwable th) {
                    th = th;
                    writer = writer2;
                    DiskLruCacheUtil.closeQuietly(writer);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public void commit() throws IOException {
            if (this.hasErrors) {
                DiskLruCache.this.completeEdit(this, false);
                DiskLruCache.this.remove(this.entry.key);
            } else {
                DiskLruCache.this.completeEdit(this, true);
            }
            this.committed = true;
        }

        public void abort() throws IOException {
            DiskLruCache.this.completeEdit(this, false);
        }

        public void abortUnlessCommitted() {
            if (!this.committed) {
                try {
                    abort();
                } catch (IOException e) {
                }
            }
        }

        private class FaultHidingOutputStream extends FilterOutputStream {
            private FaultHidingOutputStream(OutputStream out) {
                super(out);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int oneByte) {
                try {
                    this.out.write(oneByte);
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(@NonNull byte[] buffer, int offset, int length) {
                try {
                    this.out.write(buffer, offset, length);
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }
        }
    }

    private final class Entry {
        private Editor currentEditor;
        private final String key;
        private final long[] lengths;
        private boolean readable;
        private long sequenceNumber;

        private Entry(String key) {
            this.key = key;
            this.lengths = new long[DiskLruCache.this.valueCount];
        }

        public String getLengths() throws IOException {
            StringBuilder result = new StringBuilder();
            for (long size : this.lengths) {
                result.append(SafeJsonPrimitive.NULL_CHAR).append(size);
            }
            return result.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLengths(String[] strings) throws IOException {
            if (strings.length != DiskLruCache.this.valueCount) {
                throw invalidLengths(strings);
            }
            for (int i = 0; i < strings.length; i++) {
                try {
                    this.lengths[i] = Long.parseLong(strings[i]);
                } catch (NumberFormatException e) {
                    throw invalidLengths(strings);
                }
            }
        }

        private IOException invalidLengths(String[] strings) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strings));
        }

        public File getCleanFile(int i) {
            return new File(DiskLruCache.this.directory, this.key + "." + i);
        }

        public File getDirtyFile(int i) {
            return new File(DiskLruCache.this.directory, this.key + "." + i + ".tmp");
        }
    }
}

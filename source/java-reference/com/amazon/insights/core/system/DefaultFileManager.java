package com.amazon.insights.core.system;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultFileManager implements FileManager {
    private final File directory;

    public DefaultFileManager(File rootDirectory) {
        this.directory = rootDirectory;
    }

    @Override // com.amazon.insights.core.system.FileManager
    public File createDirectory(String directoryPath) {
        File dir = new File(this.directory, directoryPath);
        if (!dir.exists() && !dir.mkdirs()) {
            return null;
        }
        return dir;
    }

    @Override // com.amazon.insights.core.system.FileManager
    public File getDirectory(String directoryPath) {
        File dir = new File(this.directory, directoryPath);
        return dir;
    }

    @Override // com.amazon.insights.core.system.FileManager
    public Set<File> listFilesInDirectory(String directoryPath) {
        File dir = new File(this.directory, directoryPath);
        return listFilesInDirectory(dir);
    }

    @Override // com.amazon.insights.core.system.FileManager
    public Set<File> listFilesInDirectory(File directory) {
        Set<File> filesSet = new HashSet<>();
        if (directory.exists()) {
            File[] files = directory.listFiles();
            for (File file : files) {
                filesSet.add(file);
            }
        }
        return Collections.unmodifiableSet(filesSet);
    }

    @Override // com.amazon.insights.core.system.FileManager
    public File createFile(String filepath) throws IOException {
        File file = new File(this.directory, filepath);
        return createFile(file);
    }

    @Override // com.amazon.insights.core.system.FileManager
    public File createFile(File file) throws IOException {
        if (!file.exists() && !file.createNewFile()) {
            return null;
        }
        return file;
    }

    @Override // com.amazon.insights.core.system.FileManager
    public boolean deleteFile(String filepath) {
        File file = new File(this.directory, filepath);
        return deleteFile(file);
    }

    @Override // com.amazon.insights.core.system.FileManager
    public boolean deleteFile(File file) {
        if (file.exists()) {
            return file.delete();
        }
        return false;
    }

    @Override // com.amazon.insights.core.system.FileManager
    public InputStream newInputStream(String filepath) throws FileNotFoundException {
        File file = new File(this.directory, filepath);
        return newInputStream(file);
    }

    @Override // com.amazon.insights.core.system.FileManager
    public InputStream newInputStream(File file) throws FileNotFoundException {
        InputStream stream = new FileInputStream(file);
        return stream;
    }

    @Override // com.amazon.insights.core.system.FileManager
    public OutputStream newOutputStream(String filepath, boolean append) throws FileNotFoundException {
        File file = new File(this.directory, filepath);
        return newOutputStream(file, append);
    }

    @Override // com.amazon.insights.core.system.FileManager
    public OutputStream newOutputStream(File file, boolean append) throws FileNotFoundException {
        OutputStream stream = new FileOutputStream(file, append);
        return stream;
    }
}

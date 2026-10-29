package com.amazon.insights.core.system;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public interface FileManager {
    File createDirectory(String str);

    File createFile(File file) throws IOException;

    File createFile(String str) throws IOException;

    boolean deleteFile(File file);

    boolean deleteFile(String str);

    File getDirectory(String str);

    Set<File> listFilesInDirectory(File file);

    Set<File> listFilesInDirectory(String str);

    InputStream newInputStream(File file) throws FileNotFoundException;

    InputStream newInputStream(String str) throws FileNotFoundException;

    OutputStream newOutputStream(File file, boolean z) throws FileNotFoundException;

    OutputStream newOutputStream(String str, boolean z) throws FileNotFoundException;
}

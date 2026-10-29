package com.amazon.device.ads;

import java.io.File;

/* JADX INFO: compiled from: FileHandlerFactory.java */
/* JADX INFO: loaded from: classes.dex */
class DefaultFileHandlerFactory implements FileHandlerFactory {
    DefaultFileHandlerFactory() {
    }

    @Override // com.amazon.device.ads.FileHandlerFactory
    public FileInputHandler createFileInputHandler(File parent, String child) {
        FileInputHandler fileInputHandler = new FileInputHandler();
        fileInputHandler.setFile(parent, child);
        return fileInputHandler;
    }

    @Override // com.amazon.device.ads.FileHandlerFactory
    public FileInputHandler createFileInputHandler(String fileName) {
        FileInputHandler fileInputHandler = new FileInputHandler();
        fileInputHandler.setFile(fileName);
        return fileInputHandler;
    }

    @Override // com.amazon.device.ads.FileHandlerFactory
    public FileInputHandler createFileInputHandler(File file) {
        FileInputHandler fileInputHandler = new FileInputHandler();
        fileInputHandler.setFile(file);
        return fileInputHandler;
    }

    @Override // com.amazon.device.ads.FileHandlerFactory
    public FileOutputHandler createFileOutputHandler(File parent, String child) {
        FileOutputHandler fileOutputHandler = new FileOutputHandler();
        fileOutputHandler.setFile(parent, child);
        return fileOutputHandler;
    }

    @Override // com.amazon.device.ads.FileHandlerFactory
    public FileOutputHandler createFileOutputHandler(String fileName) {
        FileOutputHandler fileOutputHandler = new FileOutputHandler();
        fileOutputHandler.setFile(fileName);
        return fileOutputHandler;
    }

    @Override // com.amazon.device.ads.FileHandlerFactory
    public FileOutputHandler createFileOutputHandler(File file) {
        FileOutputHandler fileOutputHandler = new FileOutputHandler();
        fileOutputHandler.setFile(file);
        return fileOutputHandler;
    }
}

package com.amazon.insights.validate;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.system.FileManager;
import com.amazon.insights.impl.InitializationException;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class FileManagerValidator {
    public void validate(InsightsContext insightsContext) {
        FileManager fileManager = insightsContext.getSystem().getFileManager();
        try {
            File validatorFile = fileManager.createFile(new File(fileManager.getDirectory(""), "validatorFile"));
            if (validatorFile == null) {
                throw new InitializationException("File was not created");
            }
            boolean fileDeleted = fileManager.deleteFile(validatorFile);
            if (!fileDeleted) {
                throw new InitializationException("Could not delete file from disk");
            }
        } catch (IOException e) {
            throw new InitializationException("Could not create file on disk", e);
        }
    }
}

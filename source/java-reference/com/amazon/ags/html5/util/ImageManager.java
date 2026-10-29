package com.amazon.ags.html5.util;

import android.text.TextUtils;
import android.util.Log;
import com.amazon.ags.html5.content.ContentManager;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class ImageManager {
    private static final int MAX_BYTES_ALLOWED = 5000000;
    private static final String TAG = "GC_" + ImageManager.class.getSimpleName();
    private final ContentManager contentManager;

    public ImageManager(ContentManager contentManager) {
        this.contentManager = contentManager;
    }

    public final void downloadImage(String imageUrlString) {
        if (!TextUtils.isEmpty(imageUrlString)) {
            try {
                String imageDirectory = this.contentManager.getImageDirectory();
                String imageName = imageUrlString.substring(imageUrlString.lastIndexOf(47) + 1, imageUrlString.length());
                String imageDestination = imageDirectory + File.separator + imageName;
                File imageFile = new File(imageDestination);
                if (!imageFile.exists()) {
                    URL imageUrl = new URL(imageUrlString);
                    InputStream inStream = new BufferedInputStream(imageUrl.openStream());
                    ByteArrayOutputStream outStream = new ByteArrayOutputStream();
                    byte[] buffer = new byte[1024];
                    int bytesRead = 0;
                    do {
                        int dataLength = inStream.read(buffer);
                        if (dataLength > 0) {
                            bytesRead += dataLength;
                            outStream.write(buffer, 0, dataLength);
                        } else {
                            inStream.close();
                            outStream.close();
                            byte[] imageBytes = outStream.toByteArray();
                            FileOutputStream fileOutputStream = new FileOutputStream(imageDestination);
                            fileOutputStream.write(imageBytes);
                            fileOutputStream.close();
                            return;
                        }
                    } while (bytesRead <= MAX_BYTES_ALLOWED);
                    inStream.close();
                    outStream.close();
                    throw new IOException("Size of image exceeded maximum length: " + imageUrlString);
                }
                return;
            } catch (MalformedURLException e) {
                Log.w(TAG, "Unable to download image due to improper URL", e);
                return;
            } catch (IOException e2) {
                Log.w(TAG, "Unable to download image due to IO problem", e2);
                return;
            } catch (Exception e3) {
                Log.w(TAG, "Unable to download image due to unexpected problem", e3);
                return;
            }
        }
        Log.w(TAG, "Unable to download image due to empty URL supplied");
    }
}

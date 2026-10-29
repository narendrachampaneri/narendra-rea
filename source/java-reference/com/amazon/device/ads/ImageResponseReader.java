package com.amazon.device.ads;

import android.graphics.Bitmap;
import java.io.InputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ImageResponseReader extends ResponseReader {
    final GraphicsUtils graphicsUtils;

    @Override // com.amazon.device.ads.ResponseReader
    public /* bridge */ /* synthetic */ void enableLog(boolean x0) {
        super.enableLog(x0);
    }

    @Override // com.amazon.device.ads.ResponseReader
    public /* bridge */ /* synthetic */ InputStream getInputStream() {
        return super.getInputStream();
    }

    @Override // com.amazon.device.ads.ResponseReader
    public /* bridge */ /* synthetic */ JSONObject readAsJSON() {
        return super.readAsJSON();
    }

    @Override // com.amazon.device.ads.ResponseReader
    public /* bridge */ /* synthetic */ String readAsString() {
        return super.readAsString();
    }

    @Override // com.amazon.device.ads.ResponseReader
    public /* bridge */ /* synthetic */ void setExternalLogTag(String x0) {
        super.setExternalLogTag(x0);
    }

    ImageResponseReader(ResponseReader reader, GraphicsUtils graphicsUtils) {
        super(reader.getInputStream());
        this.graphicsUtils = graphicsUtils;
    }

    public Bitmap readAsBitmap() {
        return this.graphicsUtils.createBitmapImage(getInputStream());
    }
}

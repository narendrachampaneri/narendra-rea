package com.vungle.publisher.image;

import android.content.Context;
import android.graphics.Bitmap;
import com.newrelic.agent.android.instrumentation.BitmapFactoryInstrumentation;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AssetBitmapFactory extends BaseBitmapFactory {

    @Inject
    Context a;

    @Override // com.vungle.publisher.image.BitmapFactory
    public Bitmap getBitmap(String path) throws IOException {
        return BitmapFactoryInstrumentation.decodeStream(this.a.getAssets().open(path), null, getOptions(this.a));
    }
}

.class Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;
.super Lcom/mopub/nativeads/BaseForwardingNativeAd;
.source "MoPubCustomEventNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MoPubForwardingNativeAd"
.end annotation


# static fields
.field static final DAA_CLICKTHROUGH_URL:Ljava/lang/String; = "https://www.mopub.com/optout"
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mJsonObject:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jsonBody"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "customEventNativeListener"    # Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/mopub/nativeads/BaseForwardingNativeAd;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->mJsonObject:Lorg/json/JSONObject;

    .line 66
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->mContext:Landroid/content/Context;

    .line 67
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-object v0
.end method

.method private addImpressionTrackers(Ljava/lang/Object;)V
    .locals 5
    .param p1, "impressionTrackers"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 158
    instance-of v3, p1, Lorg/json/JSONArray;

    if-nez v3, :cond_0

    .line 159
    new-instance v3, Ljava/lang/ClassCastException;

    const-string v4, "Expected impression trackers of type JSONArray."

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v2, p1

    .line 162
    check-cast v2, Lorg/json/JSONArray;

    .line 163
    .local v2, "trackers":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 165
    :try_start_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->addImpressionTracker(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "Unable to parse impression trackers."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method private addInstanceVariable(Lcom/mopub/nativeads/NativeResponse$Parameter;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Lcom/mopub/nativeads/NativeResponse$Parameter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventNative$1;->$SwitchMap$com$mopub$nativeads$NativeResponse$Parameter:[I

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse$Parameter;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to add JSON key to internal mapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mopub/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 155
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    :pswitch_0
    return-void

    .line 119
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->setMainImageUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-boolean v1, p1, Lcom/mopub/nativeads/NativeResponse$Parameter;->required:Z

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring class cast exception for optional key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mopub/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->addImpressionTrackers(Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->setClickDestinationUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->setCallToAction(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    invoke-static {p2}, Lcom/mopub/common/util/Numbers;->parseDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->setStarRating(Ljava/lang/Double;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 152
    .end local p2    # "value":Ljava/lang/Object;
    .restart local v0    # "e":Ljava/lang/ClassCastException;
    :cond_0
    throw v0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private containsRequiredKeys(Lorg/json/JSONObject;)Z
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 106
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 107
    .local v0, "jsonKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_0
    sget-object v2, Lcom/mopub/nativeads/NativeResponse$Parameter;->requiredKeys:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method private isImageKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 174
    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getAllImageUrls()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->getExtrasImageUrls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    return-object v0
.end method

.method public getDaaIconClickthroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const-string v0, "https://www.mopub.com/optout"

    return-object v0
.end method

.method getExtrasImageUrls()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v1, "extrasBitmapUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->isImageKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-object v1
.end method

.method loadAd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->containsRequiredKeys(Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "JSONObject did not contain required keys."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_0
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 76
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lcom/mopub/nativeads/NativeResponse$Parameter;->from(Ljava/lang/String;)Lcom/mopub/nativeads/NativeResponse$Parameter;

    move-result-object v3

    .line 80
    .local v3, "parameter":Lcom/mopub/nativeads/NativeResponse$Parameter;
    if-eqz v3, :cond_1

    .line 82
    :try_start_0
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->addInstanceVariable(Lcom/mopub/nativeads/NativeResponse$Parameter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONObject key ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") contained unexpected value."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_1
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "parameter":Lcom/mopub/nativeads/NativeResponse$Parameter;
    :cond_2
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->getAllImageUrls()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd$1;

    invoke-direct {v6, p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd$1;-><init>(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;)V

    invoke-static {v4, v5, v6}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubForwardingNativeAd;->preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/CustomEventNative$ImageListener;)V

    .line 102
    return-void
.end method

.class final enum Lcom/mopub/nativeads/NativeResponse$Parameter;
.super Ljava/lang/Enum;
.source "NativeResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/NativeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Parameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/nativeads/NativeResponse$Parameter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/nativeads/NativeResponse$Parameter;

.field public static final enum CALL_TO_ACTION:Lcom/mopub/nativeads/NativeResponse$Parameter;

.field public static final enum CLICK_DESTINATION:Lcom/mopub/nativeads/NativeResponse$Parameter;

.field public static final enum CLICK_TRACKER:Lcom/mopub/nativeads/NativeResponse$Parameter;

.field public static final enum FALLBACK:Lcom/mopub/nativeads/NativeResponse$Parameter;

.field public static final enum ICON_IMAGE:Lcom/mopub/nativeads/NativeResponse$Parameter;

.field public static final enum IMPRESSION_TRACKER:Lcom/mopub/nativeads/NativeResponse$Parameter;

.field public static final enum MAIN_IMAGE:Lcom/mopub/nativeads/NativeResponse$Parameter;

.field public static final enum STAR_RATING:Lcom/mopub/nativeads/NativeResponse$Parameter;

.field public static final enum TEXT:Lcom/mopub/nativeads/NativeResponse$Parameter;

.field public static final enum TITLE:Lcom/mopub/nativeads/NativeResponse$Parameter;

.field static final requiredKeys:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final name:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final required:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 42
    new-instance v2, Lcom/mopub/nativeads/NativeResponse$Parameter;

    const-string v3, "IMPRESSION_TRACKER"

    const-string v4, "imptracker"

    invoke-direct {v2, v3, v1, v4, v6}, Lcom/mopub/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lcom/mopub/nativeads/NativeResponse$Parameter;->IMPRESSION_TRACKER:Lcom/mopub/nativeads/NativeResponse$Parameter;

    .line 43
    new-instance v2, Lcom/mopub/nativeads/NativeResponse$Parameter;

    const-string v3, "CLICK_TRACKER"

    const-string v4, "clktracker"

    invoke-direct {v2, v3, v6, v4, v6}, Lcom/mopub/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lcom/mopub/nativeads/NativeResponse$Parameter;->CLICK_TRACKER:Lcom/mopub/nativeads/NativeResponse$Parameter;

    .line 45
    new-instance v2, Lcom/mopub/nativeads/NativeResponse$Parameter;

    const-string v3, "TITLE"

    const-string v4, "title"

    invoke-direct {v2, v3, v7, v4, v1}, Lcom/mopub/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lcom/mopub/nativeads/NativeResponse$Parameter;->TITLE:Lcom/mopub/nativeads/NativeResponse$Parameter;

    .line 46
    new-instance v2, Lcom/mopub/nativeads/NativeResponse$Parameter;

    const-string v3, "TEXT"

    const-string v4, "text"

    invoke-direct {v2, v3, v8, v4, v1}, Lcom/mopub/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lcom/mopub/nativeads/NativeResponse$Parameter;->TEXT:Lcom/mopub/nativeads/NativeResponse$Parameter;

    .line 47
    new-instance v2, Lcom/mopub/nativeads/NativeResponse$Parameter;

    const-string v3, "MAIN_IMAGE"

    const-string v4, "mainimage"

    invoke-direct {v2, v3, v9, v4, v1}, Lcom/mopub/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lcom/mopub/nativeads/NativeResponse$Parameter;->MAIN_IMAGE:Lcom/mopub/nativeads/NativeResponse$Parameter;

    .line 48
    new-instance v2, Lcom/mopub/nativeads/NativeResponse$Parameter;

    const-string v3, "ICON_IMAGE"

    const/4 v4, 0x5

    const-string v5, "iconimage"

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/mopub/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lcom/mopub/nativeads/NativeResponse$Parameter;->ICON_IMAGE:Lcom/mopub/nativeads/NativeResponse$Parameter;

    .line 50
    new-instance v2, Lcom/mopub/nativeads/NativeResponse$Parameter;

    const-string v3, "CLICK_DESTINATION"

    const/4 v4, 0x6

    const-string v5, "clk"

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/mopub/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lcom/mopub/nativeads/NativeResponse$Parameter;->CLICK_DESTINATION:Lcom/mopub/nativeads/NativeResponse$Parameter;

    .line 51
    new-instance v2, Lcom/mopub/nativeads/NativeResponse$Parameter;

    const-string v3, "FALLBACK"

    const/4 v4, 0x7

    const-string v5, "fallback"

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/mopub/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lcom/mopub/nativeads/NativeResponse$Parameter;->FALLBACK:Lcom/mopub/nativeads/NativeResponse$Parameter;

    .line 52
    new-instance v2, Lcom/mopub/nativeads/NativeResponse$Parameter;

    const-string v3, "CALL_TO_ACTION"

    const/16 v4, 0x8

    const-string v5, "ctatext"

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/mopub/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lcom/mopub/nativeads/NativeResponse$Parameter;->CALL_TO_ACTION:Lcom/mopub/nativeads/NativeResponse$Parameter;

    .line 53
    new-instance v2, Lcom/mopub/nativeads/NativeResponse$Parameter;

    const-string v3, "STAR_RATING"

    const/16 v4, 0x9

    const-string v5, "starrating"

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/mopub/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lcom/mopub/nativeads/NativeResponse$Parameter;->STAR_RATING:Lcom/mopub/nativeads/NativeResponse$Parameter;

    .line 41
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/mopub/nativeads/NativeResponse$Parameter;

    sget-object v3, Lcom/mopub/nativeads/NativeResponse$Parameter;->IMPRESSION_TRACKER:Lcom/mopub/nativeads/NativeResponse$Parameter;

    aput-object v3, v2, v1

    sget-object v3, Lcom/mopub/nativeads/NativeResponse$Parameter;->CLICK_TRACKER:Lcom/mopub/nativeads/NativeResponse$Parameter;

    aput-object v3, v2, v6

    sget-object v3, Lcom/mopub/nativeads/NativeResponse$Parameter;->TITLE:Lcom/mopub/nativeads/NativeResponse$Parameter;

    aput-object v3, v2, v7

    sget-object v3, Lcom/mopub/nativeads/NativeResponse$Parameter;->TEXT:Lcom/mopub/nativeads/NativeResponse$Parameter;

    aput-object v3, v2, v8

    sget-object v3, Lcom/mopub/nativeads/NativeResponse$Parameter;->MAIN_IMAGE:Lcom/mopub/nativeads/NativeResponse$Parameter;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/mopub/nativeads/NativeResponse$Parameter;->ICON_IMAGE:Lcom/mopub/nativeads/NativeResponse$Parameter;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/mopub/nativeads/NativeResponse$Parameter;->CLICK_DESTINATION:Lcom/mopub/nativeads/NativeResponse$Parameter;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/mopub/nativeads/NativeResponse$Parameter;->FALLBACK:Lcom/mopub/nativeads/NativeResponse$Parameter;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/mopub/nativeads/NativeResponse$Parameter;->CALL_TO_ACTION:Lcom/mopub/nativeads/NativeResponse$Parameter;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/mopub/nativeads/NativeResponse$Parameter;->STAR_RATING:Lcom/mopub/nativeads/NativeResponse$Parameter;

    aput-object v4, v2, v3

    sput-object v2, Lcom/mopub/nativeads/NativeResponse$Parameter;->$VALUES:[Lcom/mopub/nativeads/NativeResponse$Parameter;

    .line 76
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/mopub/nativeads/NativeResponse$Parameter;->requiredKeys:Ljava/util/Set;

    .line 78
    invoke-static {}, Lcom/mopub/nativeads/NativeResponse$Parameter;->values()[Lcom/mopub/nativeads/NativeResponse$Parameter;

    move-result-object v2

    array-length v3, v2

    .local v0, "parameter":Lcom/mopub/nativeads/NativeResponse$Parameter;
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 79
    iget-boolean v4, v0, Lcom/mopub/nativeads/NativeResponse$Parameter;->required:Z

    if-eqz v4, :cond_0

    .line 80
    sget-object v4, Lcom/mopub/nativeads/NativeResponse$Parameter;->requiredKeys:Ljava/util/Set;

    iget-object v5, v0, Lcom/mopub/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "required"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/mopub/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    .line 60
    iput-boolean p4, p0, Lcom/mopub/nativeads/NativeResponse$Parameter;->required:Z

    .line 61
    return-void
.end method

.method static from(Ljava/lang/String;)Lcom/mopub/nativeads/NativeResponse$Parameter;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/mopub/nativeads/NativeResponse$Parameter;->values()[Lcom/mopub/nativeads/NativeResponse$Parameter;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 66
    .local v0, "parameter":Lcom/mopub/nativeads/NativeResponse$Parameter;
    iget-object v4, v0, Lcom/mopub/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    .end local v0    # "parameter":Lcom/mopub/nativeads/NativeResponse$Parameter;
    :goto_1
    return-object v0

    .line 65
    .restart local v0    # "parameter":Lcom/mopub/nativeads/NativeResponse$Parameter;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "parameter":Lcom/mopub/nativeads/NativeResponse$Parameter;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/nativeads/NativeResponse$Parameter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/mopub/nativeads/NativeResponse$Parameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeResponse$Parameter;

    return-object v0
.end method

.method public static values()[Lcom/mopub/nativeads/NativeResponse$Parameter;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/mopub/nativeads/NativeResponse$Parameter;->$VALUES:[Lcom/mopub/nativeads/NativeResponse$Parameter;

    invoke-virtual {v0}, [Lcom/mopub/nativeads/NativeResponse$Parameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/nativeads/NativeResponse$Parameter;

    return-object v0
.end method

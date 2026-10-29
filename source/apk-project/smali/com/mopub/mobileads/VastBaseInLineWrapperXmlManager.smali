.class abstract Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;
.super Ljava/lang/Object;
.source "VastBaseInLineWrapperXmlManager.java"


# static fields
.field private static final COMPANION:Ljava/lang/String; = "Companion"

.field private static final COMPANION_ADS:Ljava/lang/String; = "CompanionAds"

.field private static final CREATIVE:Ljava/lang/String; = "Creative"

.field private static final CREATIVES:Ljava/lang/String; = "Creatives"

.field private static final ERROR:Ljava/lang/String; = "Error"

.field private static final IMPRESSION_TRACKER:Ljava/lang/String; = "Impression"

.field private static final LINEAR:Ljava/lang/String; = "Linear"


# instance fields
.field protected final mNode:Lorg/w3c/dom/Node;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    iput-object p1, p0, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->mNode:Lorg/w3c/dom/Node;

    .line 30
    return-void
.end method


# virtual methods
.method getCompanionAdXmlManagers()Ljava/util/List;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastCompanionAdXmlManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "companionAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    iget-object v7, p0, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->mNode:Lorg/w3c/dom/Node;

    const-string v8, "Creatives"

    invoke-static {v7, v8}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 116
    .local v6, "creativesNode":Lorg/w3c/dom/Node;
    if-nez v6, :cond_1

    .line 141
    :cond_0
    return-object v0

    .line 120
    :cond_1
    const-string v7, "Creative"

    invoke-static {v6, v7}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 121
    .local v5, "creativeNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-eqz v5, :cond_0

    .line 125
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    .line 126
    .local v4, "creativeNode":Lorg/w3c/dom/Node;
    const-string v8, "CompanionAds"

    invoke-static {v4, v8}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 127
    .local v1, "companionAds":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_2

    .line 131
    const-string v8, "Companion"

    invoke-static {v1, v8}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "companionAdsNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-eqz v2, :cond_2

    .line 136
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 137
    .local v3, "companionNode":Lorg/w3c/dom/Node;
    new-instance v9, Lcom/mopub/mobileads/VastCompanionAdXmlManager;

    invoke-direct {v9, v3}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getErrorTrackers()Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v2, "errorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    iget-object v4, p0, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->mNode:Lorg/w3c/dom/Node;

    const-string v5, "Error"

    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 62
    .local v1, "errorNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-nez v1, :cond_1

    .line 72
    :cond_0
    return-object v2

    .line 66
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 67
    .local v0, "error":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "tracker":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 69
    new-instance v5, Lcom/mopub/mobileads/VastTracker;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getImpressionTrackers()Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v4, p0, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->mNode:Lorg/w3c/dom/Node;

    const-string v5, "Impression"

    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 42
    .local v1, "impressionNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v2, "impressionTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 44
    .local v0, "impressionNode":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "uri":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 46
    new-instance v5, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v5, v3}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v0    # "impressionNode":Lorg/w3c/dom/Node;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method getLinearXmlManagers()Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastLinearXmlManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v4, "linearXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastLinearXmlManager;>;"
    iget-object v5, p0, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->mNode:Lorg/w3c/dom/Node;

    const-string v6, "Creatives"

    invoke-static {v5, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 84
    .local v2, "creativesNode":Lorg/w3c/dom/Node;
    if-nez v2, :cond_1

    .line 102
    :cond_0
    return-object v4

    .line 91
    :cond_1
    const-string v5, "Creative"

    invoke-static {v2, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "creativeNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-eqz v1, :cond_0

    .line 96
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 97
    .local v0, "creativeNode":Lorg/w3c/dom/Node;
    const-string v6, "Linear"

    invoke-static {v0, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 98
    .local v3, "linearNode":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_2

    .line 99
    new-instance v6, Lcom/mopub/mobileads/VastLinearXmlManager;

    invoke-direct {v6, v3}, Lcom/mopub/mobileads/VastLinearXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

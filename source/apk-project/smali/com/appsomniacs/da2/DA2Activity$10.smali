.class Lcom/appsomniacs/da2/DA2Activity$10;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/android/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsomniacs/da2/DA2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsomniacs/da2/DA2Activity;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 2178
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$10;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/android/util/IabResult;Lcom/android/util/Inventory;)V
    .locals 11
    .param p1, "result"    # Lcom/android/util/IabResult;
    .param p2, "inventory"    # Lcom/android/util/Inventory;

    .prologue
    .line 2184
    :try_start_0
    iget-object v8, p0, Lcom/appsomniacs/da2/DA2Activity$10;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v8}, Lcom/appsomniacs/da2/DA2Activity;->access$400(Lcom/appsomniacs/da2/DA2Activity;)Lcom/android/util/IabHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-nez v8, :cond_0

    .line 2261
    iget-object v8, p0, Lcom/appsomniacs/da2/DA2Activity$10;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v8}, Lcom/appsomniacs/da2/DA2Activity;->access$700(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 2265
    :goto_0
    return-void

    .line 2190
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/util/IabResult;->isFailure()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2191
    iget-object v8, p0, Lcom/appsomniacs/da2/DA2Activity$10;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to query purchased inventory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2261
    iget-object v8, p0, Lcom/appsomniacs/da2/DA2Activity$10;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v8}, Lcom/appsomniacs/da2/DA2Activity;->access$700(Lcom/appsomniacs/da2/DA2Activity;)V

    goto :goto_0

    .line 2202
    :cond_1
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2207
    .local v7, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "com.chadtowns.da2.propack"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2208
    const-string v8, "com.chadtowns.da2.battlepack1"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2209
    const-string v8, "com.chadtowns.da2.battlepack2"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2210
    const-string v8, "com.chadtowns.da2.battlepack3"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2211
    const-string v8, "com.chadtowns.da2.battlepack4"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2217
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2218
    .local v6, "sku":Ljava/lang/String;
    invoke-virtual {p2, v6}, Lcom/android/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/android/util/Purchase;

    move-result-object v4

    .line 2220
    .local v4, "purchase":Lcom/android/util/Purchase;
    if-eqz v4, :cond_2

    .line 2223
    invoke-virtual {v4}, Lcom/android/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    .line 2224
    .local v2, "originalJson":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v5

    .line 2225
    .local v5, "signature":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    .line 2227
    .local v3, "productSku":Ljava/lang/String;
    move-object v0, v2

    .line 2228
    .local v0, "finalOriginalJson":Ljava/lang/String;
    move-object v1, v5

    .line 2230
    .local v1, "finalSignature":Ljava/lang/String;
    iget-object v9, p0, Lcom/appsomniacs/da2/DA2Activity$10;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v9}, Lcom/appsomniacs/da2/DA2Activity;->access$500(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 2231
    invoke-static {v0, v1, v3}, Lcom/appsomniacs/da2/DA2Activity;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2261
    .end local v0    # "finalOriginalJson":Ljava/lang/String;
    .end local v1    # "finalSignature":Ljava/lang/String;
    .end local v2    # "originalJson":Ljava/lang/String;
    .end local v3    # "productSku":Ljava/lang/String;
    .end local v4    # "purchase":Lcom/android/util/Purchase;
    .end local v5    # "signature":Ljava/lang/String;
    .end local v6    # "sku":Ljava/lang/String;
    .end local v7    # "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/appsomniacs/da2/DA2Activity$10;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v9}, Lcom/appsomniacs/da2/DA2Activity;->access$700(Lcom/appsomniacs/da2/DA2Activity;)V

    throw v8

    .restart local v7    # "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v8, p0, Lcom/appsomniacs/da2/DA2Activity$10;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v8}, Lcom/appsomniacs/da2/DA2Activity;->access$700(Lcom/appsomniacs/da2/DA2Activity;)V

    goto :goto_0
.end method

.class Lcom/appsomniacs/da2/DA2Activity$16;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;


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
    .line 2589
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$16;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/android/util/IabResult;Lcom/android/util/Purchase;)V
    .locals 8
    .param p1, "result"    # Lcom/android/util/IabResult;
    .param p2, "purchase"    # Lcom/android/util/Purchase;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 2594
    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity$16;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->access$400(Lcom/appsomniacs/da2/DA2Activity;)Lcom/android/util/IabHelper;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2595
    const-string v3, " Upon purchase completion the IAB system was not present"

    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 2655
    :cond_0
    :goto_0
    return-void

    .line 2599
    :cond_1
    const/4 v2, 0x0

    .line 2600
    .local v2, "toastMessage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2601
    .local v0, "complainMessage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/util/IabResult;->isFailure()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2602
    invoke-virtual {p1}, Lcom/android/util/IabResult;->getResponse()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2627
    const/4 v2, 0x0

    .line 2628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Purchase Failure (result code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/util/IabResult;->getResponse()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")\nTry again. If the issue persists please contact support@appsomniacs.com for further assistance."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2632
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 2634
    :try_start_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2640
    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2641
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2642
    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity$16;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-virtual {v3, v0}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V

    goto :goto_0

    .line 2604
    :sswitch_0
    const/4 v2, 0x0

    .line 2605
    const-string v0, "The Google billing system is unavailable. Please try again soon!\n Contact support@appsomniacs.com for guidance if the issue persists."

    .line 2606
    goto :goto_1

    .line 2608
    :sswitch_1
    const-string v2, "You already own this Product"

    .line 2609
    const-string v0, "Google indicates you already own this product but the app does not want to acknowledge the purchase. Please contact support@appsomniacs.com to assist in fixing feature access."

    .line 2610
    goto :goto_1

    .line 2612
    :sswitch_2
    const/4 v2, 0x0

    .line 2613
    const-string v0, "Item is not owned."

    .line 2614
    goto :goto_1

    .line 2616
    :sswitch_3
    const/4 v2, 0x0

    .line 2617
    const-string v0, "Item is unavailable. Please try again. Your app may be out of date. If so please update and try again."

    .line 2618
    goto :goto_1

    .line 2621
    :sswitch_4
    const-string v2, "Purchase Cancelled.\nDid you mean to do that?"

    .line 2622
    const/4 v0, 0x0

    .line 2623
    goto :goto_1

    .line 2635
    :catch_0
    move-exception v1

    .line 2636
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "DA2"

    const-string v4, "Failed to toast backout message in onIabPurchaseFinished(): %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2648
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p2}, Lcom/android/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/appsomniacs/da2/DA2Activity;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2602
    :sswitch_data_0
    .sparse-switch
        -0x3ed -> :sswitch_4
        0x1 -> :sswitch_4
        0x3 -> :sswitch_0
        0x4 -> :sswitch_3
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

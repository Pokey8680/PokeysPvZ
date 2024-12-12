.class Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$extraData:Ljava/lang/String;

.field final synthetic val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

.field final synthetic val$requestCode:I

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;ILandroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$sku:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$extraData:Ljava/lang/String;

    iput-object p4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    iput p5, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$requestCode:I

    iput-object p6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iget-object v2, v2, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    .line 514
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$sku:Ljava/lang/String;

    const-string v4, "inapp"

    iget-object v5, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$extraData:Ljava/lang/String;

    .line 512
    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 519
    .local v7, "buyIntentBundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-virtual {v0, v7}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v10

    .line 520
    .local v10, "response":I
    if-eqz v10, :cond_2

    .line 522
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BuyIntent Bundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->flagEndAsync()V

    .line 530
    new-instance v11, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const-string v0, "Unable to buy item"

    invoke-direct {v11, v10, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 532
    .local v11, "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    .line 537
    :try_start_1
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v11, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Purchase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 585
    .end local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "response":I
    .end local v11    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    :cond_0
    :goto_0
    return-void

    .line 539
    .restart local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v10    # "response":I
    .restart local v11    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    :catch_0
    move-exception v8

    .line 541
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uncaught exception in listener\'s onIabPurchaseFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 565
    .end local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "response":I
    .end local v11    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    :catch_1
    move-exception v8

    .line 567
    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v8}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 570
    new-instance v11, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const/16 v0, -0x3ec

    const-string v1, "Failed to send intent."

    invoke-direct {v11, v0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 571
    .restart local v11    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v0, v11, v12}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Purchase;)V

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->flagEndAsync()V

    goto :goto_0

    .line 550
    .end local v8    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v11    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    .restart local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v10    # "response":I
    :cond_2
    :try_start_3
    const-string v0, "BUY_INTENT"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 551
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$requestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iget v1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$requestCode:I

    iput v1, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mRequestCode:I

    .line 557
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    iput-object v1, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 560
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$act:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    iget v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$requestCode:I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    .line 562
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    .line 563
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 560
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_3
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 575
    .end local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v10    # "response":I
    :catch_2
    move-exception v8

    .line 577
    .local v8, "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 580
    new-instance v11, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const/16 v0, -0x3e9

    const-string v1, "Remote exception while starting purchase flow"

    invoke-direct {v11, v0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 581
    .restart local v11    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v0, v11, v12}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Purchase;)V

    .line 583
    :cond_3
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->flagEndAsync()V

    goto/16 :goto_0
.end method

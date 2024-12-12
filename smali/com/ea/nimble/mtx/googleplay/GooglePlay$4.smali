.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$4;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;->restorePurchasedTransactionsImpl(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 685
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$4;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Inventory;)V
    .locals 12
    .param p1, "result"    # Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    .param p2, "inv"    # Lcom/ea/nimble/mtx/googleplay/util/Inventory;

    .prologue
    .line 689
    const-string v7, "restorePurchasedTransactions onQueryInventoryFinished"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    const/4 v2, 0x0

    .line 692
    .local v2, "googlePlayError":Lcom/ea/nimble/mtx/googleplay/GooglePlayError;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;->isFailure()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 694
    :cond_0
    const-string v7, "Error with GooglePlay purchased item query. %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    iget-object v7, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$4;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v7, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$600(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/util/IabResult;)Lcom/ea/nimble/mtx/googleplay/GooglePlayError;

    move-result-object v2

    .line 705
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v6, "restoreTransactions":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/ea/nimble/mtx/googleplay/util/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 709
    invoke-virtual {p2}, Lcom/ea/nimble/mtx/googleplay/util/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v4

    .line 710
    .local v4, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/util/Purchase;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ea/nimble/mtx/googleplay/util/Purchase;

    .line 713
    .local v3, "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    new-instance v5, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-direct {v5}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;-><init>()V

    .line 714
    .local v5, "restoreRecord":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    sget-object v8, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;->RESTORE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    iput-object v8, v5, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    .line 715
    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$4;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v8}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$700(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionId:Ljava/lang/String;

    .line 716
    invoke-virtual {v3}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemSku:Ljava/lang/String;

    .line 717
    invoke-virtual {v3}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mNonce:Ljava/lang/String;

    .line 718
    invoke-virtual {v3}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mReceipt:Ljava/lang/String;

    .line 719
    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$4;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v8, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$800(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/util/Purchase;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, v5, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mAdditionalInfo:Ljava/util/Map;

    .line 720
    sget-object v8, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->UNDEFINED:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v8, v5, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 723
    invoke-virtual {v3}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/ea/nimble/mtx/googleplay/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;

    move-result-object v0

    .line 727
    .local v0, "details":Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;
    :try_start_0
    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;->getPriceMicros()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    const v9, 0x49742400    # 1000000.0f

    div-float/2addr v8, v9

    iput v8, v5, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPriceDecimal:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 740
    :goto_1
    iget-object v8, v5, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mAdditionalInfo:Ljava/util/Map;

    const-string v9, "localCurrency"

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;->getCurrencyCode()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    iput-object v8, v5, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTimeStamp:Ljava/util/Date;

    .line 745
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 729
    :catch_0
    move-exception v1

    .line 731
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v8, "Error: got passed an invalid float string when trying to parse the catalog prices."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    const/4 v8, 0x0

    iput v8, v5, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPriceDecimal:F

    goto :goto_1

    .line 734
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 736
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v8, "Error: got passed a null pointer when trying to parse the catalog prices."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    const/4 v8, 0x0

    iput v8, v5, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPriceDecimal:F

    goto :goto_1

    .line 749
    .end local v0    # "details":Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    .end local v4    # "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/util/Purchase;>;"
    .end local v5    # "restoreRecord":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 752
    const-string v7, "No restored transactions to verify. Raising REFRESH_PURCHASED_ITEMS_FINISHED notification."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    iget-object v7, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$4;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$202(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Z)Z

    .line 755
    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$4;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const-string v9, "nimble.notification.mtx.restorepurchasedtransactionsfinished"

    if-eqz v2, :cond_3

    .line 756
    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError;->getMessage()Ljava/lang/String;

    move-result-object v7

    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 755
    invoke-static {v8, v9, v7, v10, v11}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$900(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 783
    :goto_3
    return-void

    .line 756
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 762
    :cond_4
    iget-object v7, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$4;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v7}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1000(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 776
    new-instance v7, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;

    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$4;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;)V

    invoke-virtual {v7, v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->verifyTransactions(Ljava/util/List;)V

    goto :goto_3

    .line 780
    :cond_5
    iget-object v7, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$4;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v7, v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1200(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Ljava/util/List;)V

    goto :goto_3
.end method

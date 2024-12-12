.class Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->queryInventoryAsync(ZZLjava/util/List;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$ownedItems:Z

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper;ZZLjava/util/List;Landroid/os/Handler;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iput-boolean p2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;->val$ownedItems:Z

    iput-boolean p3, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;->val$querySkuDetails:Z

    iput-object p4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;->val$moreSkus:Ljava/util/List;

    iput-object p5, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 804
    new-instance v3, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 805
    .local v3, "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    const/4 v1, 0x0

    .line 808
    .local v1, "inv":Lcom/ea/nimble/mtx/googleplay/util/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iget-boolean v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;->val$ownedItems:Z

    iget-boolean v7, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;->val$querySkuDetails:Z

    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7, v8}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->queryInventory(ZZLjava/util/List;)Lcom/ea/nimble/mtx/googleplay/util/Inventory;
    :try_end_0
    .catch Lcom/ea/nimble/mtx/googleplay/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 815
    :goto_0
    iget-object v5, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-virtual {v5}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->flagEndAsync()V

    .line 817
    move-object v4, v3

    .line 818
    .local v4, "result_f":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    move-object v2, v1

    .line 819
    .local v2, "inv_f":Lcom/ea/nimble/mtx/googleplay/util/Inventory;
    iget-object v5, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3$1;-><init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 826
    return-void

    .line 810
    .end local v2    # "inv_f":Lcom/ea/nimble/mtx/googleplay/util/Inventory;
    .end local v4    # "result_f":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    :catch_0
    move-exception v0

    .line 812
    .local v0, "ex":Lcom/ea/nimble/mtx/googleplay/util/IabException;
    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/util/IabException;->getResult()Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    move-result-object v3

    goto :goto_0
.end method

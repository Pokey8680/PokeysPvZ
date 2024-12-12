.class Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;

.field final synthetic val$inv_f:Lcom/ea/nimble/mtx/googleplay/util/Inventory;

.field final synthetic val$result_f:Lcom/ea/nimble/mtx/googleplay/util/IabResult;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Inventory;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;

    .prologue
    .line 820
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3$1;->this$1:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;

    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3$1;->val$result_f:Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    iput-object p3, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3$1;->val$inv_f:Lcom/ea/nimble/mtx/googleplay/util/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 823
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3$1;->this$1:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3$1;->val$result_f:Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3$1;->val$inv_f:Lcom/ea/nimble/mtx/googleplay/util/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Inventory;)V

    .line 824
    return-void
.end method

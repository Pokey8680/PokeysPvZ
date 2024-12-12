.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;->verifyTransaction(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;

    .prologue
    .line 1646
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetNonceComplete(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Ljava/lang/String;Lcom/ea/nimble/Error;)V
    .locals 3
    .param p1, "transaction"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    .param p2, "nonce"    # Ljava/lang/String;
    .param p3, "error"    # Lcom/ea/nimble/Error;

    .prologue
    .line 1650
    iget-object v1, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_NONCE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-eq v1, v2, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1657
    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;

    iget-object v1, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v1, p1, p2, p3}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1600(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Ljava/lang/String;Lcom/ea/nimble/Error;)Z

    move-result v0

    .line 1658
    .local v0, "getNonceSuccess":Z
    if-eqz v0, :cond_2

    .line 1661
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;

    iget-object v1, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    new-instance v2, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;

    invoke-direct {v2, p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V

    invoke-static {v1, p1, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1700(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;)V

    goto :goto_0

    .line 1700
    :cond_2
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    if-eqz v1, :cond_0

    .line 1702
    iget-object v1, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    invoke-interface {v1, p1}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    goto :goto_0
.end method

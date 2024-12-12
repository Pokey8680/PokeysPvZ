.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;->onGetNonceComplete(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Ljava/lang/String;Lcom/ea/nimble/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;

.field final synthetic val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V
    .locals 0
    .param p1, "this$2"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;

    .prologue
    .line 1661
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;->this$2:Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;

    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerificationComplete(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_SYNERGY_VERIFICATION:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-eq v0, v1, :cond_1

    .line 1693
    :cond_0
    :goto_0
    return-void

    .line 1671
    :cond_1
    if-eqz p1, :cond_2

    .line 1674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error making recordPurchase call to Synergy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1676
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    new-instance v1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->VERIFICATION_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v3, "Synergy verification error"

    invoke-direct {v1, v2, v3, p1}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    .line 1678
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    iget-object v1, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 1679
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;->this$2:Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->COMPLETE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1500(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 1689
    :goto_1
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-interface {v0, v1}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    goto :goto_0

    .line 1684
    :cond_2
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;->this$2:Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_GAME_TO_CONFIRM_ITEM_GRANT:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1500(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    goto :goto_1
.end method

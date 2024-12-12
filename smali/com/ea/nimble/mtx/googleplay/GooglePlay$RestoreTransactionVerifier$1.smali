.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->verifyTransactions(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;

    .prologue
    .line 1732
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;

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
    .line 1738
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;

    iget-object v1, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v1, p1, p2, p3}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1600(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Ljava/lang/String;Lcom/ea/nimble/Error;)Z

    move-result v0

    .line 1739
    .local v0, "getNonceSuccess":Z
    if-eqz v0, :cond_1

    .line 1741
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;

    iget-object v1, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    new-instance v2, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1$1;

    invoke-direct {v2, p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1$1;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V

    invoke-static {v1, p1, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1700(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;)V

    .line 1765
    :cond_0
    :goto_0
    return-void

    .line 1760
    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;

    invoke-static {v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->access$2000(Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    .line 1762
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;

    iget-object v1, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;

    invoke-static {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->access$1900(Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1200(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Ljava/util/List;)V

    goto :goto_0
.end method

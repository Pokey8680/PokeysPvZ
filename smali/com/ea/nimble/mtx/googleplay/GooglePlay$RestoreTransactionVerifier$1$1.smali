.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1$1;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;->onGetNonceComplete(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Ljava/lang/String;Lcom/ea/nimble/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;

.field final synthetic val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V
    .locals 0
    .param p1, "this$2"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;

    .prologue
    .line 1741
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1$1;->this$2:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;

    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerificationComplete(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 1745
    if-eqz p1, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    new-instance v1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->VERIFICATION_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v3, "Synergy verification error"

    invoke-direct {v1, v2, v3, p1}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    .line 1749
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1$1;->this$2:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;

    invoke-static {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->access$1900(Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1750
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1$1;->this$2:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;

    invoke-static {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->access$2000(Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 1752
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1$1;->this$2:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1$1;->this$2:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;

    iget-object v1, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;

    invoke-static {v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->access$1900(Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1200(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Ljava/util/List;)V

    .line 1754
    :cond_1
    return-void
.end method

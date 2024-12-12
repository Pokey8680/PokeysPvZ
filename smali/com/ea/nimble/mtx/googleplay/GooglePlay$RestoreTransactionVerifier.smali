.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;
.super Ljava/lang/Object;
.source "GooglePlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreTransactionVerifier"
.end annotation


# instance fields
.field private m_transactionsVerifying:Ljava/util/concurrent/atomic/AtomicInteger;

.field private m_verifiedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V
    .locals 0

    .prologue
    .line 1710
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p2, "x1"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;

    .prologue
    .line 1710
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->m_verifiedTransactions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->m_transactionsVerifying:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public verifyTransactions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1717
    .local p1, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->m_transactionsVerifying:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1718
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->m_verifiedTransactions:Ljava/util/ArrayList;

    .line 1720
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1722
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->m_verifiedTransactions:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1200(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Ljava/util/List;)V

    .line 1769
    :cond_0
    return-void

    .line 1726
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 1728
    .local v0, "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->m_transactionsVerifying:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1729
    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v2, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    sget-object v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_NONCE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-static {v2, v0, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1500(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 1731
    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    new-instance v3, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;

    invoke-direct {v3, p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier$1;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;)V

    invoke-static {v2, v0, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1800(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;)V

    goto :goto_0
.end method

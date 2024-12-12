.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;
.super Ljava/lang/Object;
.source "GooglePlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseTransactionVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V
    .locals 0

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p2, "x1"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;

    .prologue
    .line 1641
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V

    return-void
.end method


# virtual methods
.method public verifyTransaction(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V
    .locals 2
    .param p1, "transaction"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_NONCE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-static {v0, p1, v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1500(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 1646
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    new-instance v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier$1;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;)V

    invoke-static {v0, p1, v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1800(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;)V

    .line 1707
    return-void
.end method

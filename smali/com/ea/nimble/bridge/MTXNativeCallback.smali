.class public Lcom/ea/nimble/bridge/MTXNativeCallback;
.super Ljava/lang/Object;
.source "MTXNativeCallback.java"

# interfaces
.implements Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;
.implements Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;
.implements Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;


# instance fields
.field private m_id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/ea/nimble/bridge/MTXNativeCallback;->m_id:I

    .line 15
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/ea/nimble/bridge/MTXNativeCallback;->m_id:I

    invoke-static {v0}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeFinalize(I)V

    .line 47
    return-void
.end method

.method public finalizeComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
    .locals 3
    .param p1, "transaction"    # Lcom/ea/nimble/mtx/NimbleMTXTransaction;

    .prologue
    .line 20
    iget v0, p0, Lcom/ea/nimble/bridge/MTXNativeCallback;->m_id:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public itemGrantedComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
    .locals 3
    .param p1, "transaction"    # Lcom/ea/nimble/mtx/NimbleMTXTransaction;

    .prologue
    .line 26
    iget v0, p0, Lcom/ea/nimble/bridge/MTXNativeCallback;->m_id:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
    .locals 4
    .param p1, "transaction"    # Lcom/ea/nimble/mtx/NimbleMTXTransaction;

    .prologue
    const/4 v3, 0x1

    .line 34
    iget v0, p0, Lcom/ea/nimble/bridge/MTXNativeCallback;->m_id:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public unverifiedReceiptReceived(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
    .locals 4
    .param p1, "transaction"    # Lcom/ea/nimble/mtx/NimbleMTXTransaction;

    .prologue
    const/4 v3, 0x0

    .line 40
    iget v0, p0, Lcom/ea/nimble/bridge/MTXNativeCallback;->m_id:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

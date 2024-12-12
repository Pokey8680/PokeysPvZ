.class public interface abstract Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;
.super Ljava/lang/Object;
.source "INimbleMTX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/INimbleMTX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PurchaseTransactionCallback"
.end annotation


# virtual methods
.method public abstract purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
.end method

.method public abstract unverifiedReceiptReceived(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
.end method

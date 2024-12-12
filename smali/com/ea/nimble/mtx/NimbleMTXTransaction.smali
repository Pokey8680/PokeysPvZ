.class public interface abstract Lcom/ea/nimble/mtx/NimbleMTXTransaction;
.super Ljava/lang/Object;
.source "NimbleMTXTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;,
        Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;
    }
.end annotation


# virtual methods
.method public abstract getAdditionalInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getError()Ljava/lang/Exception;
.end method

.method public abstract getItemSku()Ljava/lang/String;
.end method

.method public abstract getPriceDecimal()F
.end method

.method public abstract getReceipt()Ljava/lang/String;
.end method

.method public abstract getTimeStamp()Ljava/util/Date;
.end method

.method public abstract getTransactionId()Ljava/lang/String;
.end method

.method public abstract getTransactionState()Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;
.end method

.method public abstract getTransactionType()Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;
.end method

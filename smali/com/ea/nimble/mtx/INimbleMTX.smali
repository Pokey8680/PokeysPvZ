.class public interface abstract Lcom/ea/nimble/mtx/INimbleMTX;
.super Ljava/lang/Object;
.source "INimbleMTX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;,
        Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;,
        Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;
    }
.end annotation


# static fields
.field public static final NIMBLE_NOTIFICATION_MTX_REFRESH_CATALOG_FINISHED:Ljava/lang/String; = "nimble.notification.mtx.refreshcatalogfinished"

.field public static final NIMBLE_NOTIFICATION_MTX_RESTORE_PURCHASED_TRANSACTIONS_FINISHED:Ljava/lang/String; = "nimble.notification.mtx.restorepurchasedtransactionsfinished"

.field public static final NIMBLE_NOTIFICATION_MTX_TRANSACTIONS_RECOVERED:Ljava/lang/String; = "nimble.notification.mtx.transactionsrecovered"

.field public static final NOTIFICATION_DICTIONARY_KEY_TRANSACTIONID:Ljava/lang/String; = "TRANSACTION_ID"


# virtual methods
.method public abstract finalizeTransaction(Ljava/lang/String;Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;)Lcom/ea/nimble/Error;
.end method

.method public abstract getAvailableCatalogItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/NimbleCatalogItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPendingTransactions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/NimbleMTXTransaction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPurchasedTransactions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/NimbleMTXTransaction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecoveredTransactions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/NimbleMTXTransaction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract itemGranted(Ljava/lang/String;Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;)Lcom/ea/nimble/Error;
.end method

.method public abstract purchaseItem(Ljava/lang/String;Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;)Lcom/ea/nimble/Error;
.end method

.method public abstract refreshAvailableCatalogItems()V
.end method

.method public abstract restorePurchasedTransactions()V
.end method

.method public abstract resumeTransaction(Ljava/lang/String;Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;)Lcom/ea/nimble/Error;
.end method

.method public abstract setPlatformParameters(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

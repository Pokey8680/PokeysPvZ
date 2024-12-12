.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$10;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;->googlePlayConsumeItem(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 2110
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$10;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/ea/nimble/mtx/googleplay/util/Purchase;Lcom/ea/nimble/mtx/googleplay/util/IabResult;)V
    .locals 6
    .param p1, "purchase"    # Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    .param p2, "result"    # Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    .prologue
    const/4 v5, 0x0

    .line 2114
    invoke-virtual {p2}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;->isFailure()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GooglePlay consume item failed, item SKU: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2119
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$10;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v3, v3, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getNimbleMTXTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 2120
    .local v2, "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    if-eqz v2, :cond_0

    .line 2122
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$10;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v3, p2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$600(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/util/IabResult;)Lcom/ea/nimble/mtx/googleplay/GooglePlayError;

    move-result-object v0

    .line 2123
    .local v0, "googlePlayError":Lcom/ea/nimble/mtx/googleplay/GooglePlayError;
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$10;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const-string v4, "GooglePlay item consumption error."

    invoke-static {v3, v0, v4}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1400(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayError;Ljava/lang/String;)Lcom/ea/nimble/mtx/NimbleMTXError;

    move-result-object v1

    .line 2124
    .local v1, "mtxError":Lcom/ea/nimble/mtx/NimbleMTXError;
    iput-object v1, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    .line 2125
    iget-object v3, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v3, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 2135
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$10;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    sget-object v4, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->COMPLETE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-static {v3, v2, v4}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1500(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 2138
    iget-object v3, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemGrantedCallback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

    if-eqz v3, :cond_1

    .line 2140
    iget-object v3, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemGrantedCallback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

    invoke-interface {v3, v2}, Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;->itemGrantedComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    .line 2178
    .end local v0    # "googlePlayError":Lcom/ea/nimble/mtx/googleplay/GooglePlayError;
    .end local v1    # "mtxError":Lcom/ea/nimble/mtx/NimbleMTXError;
    :cond_0
    :goto_0
    return-void

    .line 2144
    .restart local v0    # "googlePlayError":Lcom/ea/nimble/mtx/googleplay/GooglePlayError;
    .restart local v1    # "mtxError":Lcom/ea/nimble/mtx/NimbleMTXError;
    :cond_1
    const-string v3, "Transaction does not have a consume callback to notify game of the finalize error."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2151
    .end local v0    # "googlePlayError":Lcom/ea/nimble/mtx/googleplay/GooglePlayError;
    .end local v1    # "mtxError":Lcom/ea/nimble/mtx/NimbleMTXError;
    .end local v2    # "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GooglePlay consume item success, item SKU: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2154
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$10;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v3, v3, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getNimbleMTXTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 2156
    .restart local v2    # "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    if-eqz v2, :cond_4

    .line 2159
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$10;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    sget-object v4, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->COMPLETE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-static {v3, v2, v4}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1500(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 2162
    iget-object v3, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemGrantedCallback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

    if-eqz v3, :cond_3

    .line 2164
    iget-object v3, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemGrantedCallback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

    invoke-interface {v3, v2}, Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;->itemGrantedComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    goto :goto_0

    .line 2168
    :cond_3
    const-string v3, "Transaction does not have a consume callback to notify game."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2175
    :cond_4
    const-string v3, "Unable to find consumed transaction to remove."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

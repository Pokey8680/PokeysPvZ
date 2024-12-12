.class public Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
.super Ljava/lang/Object;
.source "GooglePlayTransaction.java"

# interfaces
.implements Lcom/ea/nimble/mtx/NimbleMTXTransaction;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;
    }
.end annotation


# instance fields
.field mAdditionalInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field mCatalogItem:Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

.field mDeveloperPayload:Ljava/lang/String;

.field mError:Ljava/lang/Exception;

.field mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

.field mFinalizeCallback:Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;

.field mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

.field mIsRecorded:Z

.field mItemGrantedCallback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

.field mItemSku:Ljava/lang/String;

.field mNonce:Ljava/lang/String;

.field mPriceDecimal:F

.field mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

.field mReceipt:Ljava/lang/String;

.field mTimeStamp:Ljava/util/Date;

.field mTransactionId:Ljava/lang/String;

.field mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionId:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mReceipt:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemSku:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPriceDecimal:F

    .line 58
    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTimeStamp:Ljava/util/Date;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mNonce:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    .line 61
    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mCatalogItem:Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    .line 62
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->UNDEFINED:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 63
    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 64
    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    .line 65
    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFinalizeCallback:Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;

    .line 66
    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemGrantedCallback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

    .line 67
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;->PURCHASE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mDeveloperPayload:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mIsRecorded:Z

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mAdditionalInfo:Ljava/util/Map;

    .line 72
    return-void
.end method


# virtual methods
.method public getAdditionalInfo()Ljava/util/Map;
    .locals 2
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

    .prologue
    .line 147
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mAdditionalInfo:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getCatalogItem()Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mCatalogItem:Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    return-object v0
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    return-object v0
.end method

.method public getItemSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemSku:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceDecimal()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPriceDecimal:F

    return v0
.end method

.method public getReceipt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mReceipt:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTimeStamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionState()Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$1;->$SwitchMap$com$ea$nimble$mtx$googleplay$GooglePlayTransaction$GooglePlayTransactionState:[I

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 109
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->UNDEFINED:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    :goto_0
    return-object v0

    .line 92
    :pswitch_0
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->USER_INITIATED:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    goto :goto_0

    .line 94
    :pswitch_1
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_PREPURCHASE_INFO:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    goto :goto_0

    .line 96
    :pswitch_2
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_PLATFORM_RESPONSE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    goto :goto_0

    .line 98
    :pswitch_3
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_VERIFICATION:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    goto :goto_0

    .line 100
    :pswitch_4
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_GAME_TO_CONFIRM_ITEM_GRANT:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    goto :goto_0

    .line 102
    :pswitch_5
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_PLATFORM_CONSUMPTION:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    goto :goto_0

    .line 104
    :pswitch_6
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    goto :goto_0

    .line 106
    :pswitch_7
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->UNDEFINED:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getTransactionType()Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "input"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionId:Ljava/lang/String;

    .line 203
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemSku:Ljava/lang/String;

    .line 204
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 205
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    .line 206
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPriceDecimal:F

    .line 208
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTimeStamp:Ljava/util/Date;

    .line 209
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mReceipt:Ljava/lang/String;

    .line 210
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mNonce:Ljava/lang/String;

    .line 211
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Error;

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    .line 212
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mCatalogItem:Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    .line 213
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mAdditionalInfo:Ljava/util/Map;

    .line 214
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mDeveloperPayload:Ljava/lang/String;

    .line 218
    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 219
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mIsRecorded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GooglePlayTransaction: SKU("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "State("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 174
    invoke-virtual {v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Receipt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getReceipt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TimeStamp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getTimeStamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "output"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemSku:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 186
    iget v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPriceDecimal:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 188
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTimeStamp:Ljava/util/Date;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mReceipt:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mNonce:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mCatalogItem:Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mAdditionalInfo:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mDeveloperPayload:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 196
    iget-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mIsRecorded:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 197
    return-void
.end method

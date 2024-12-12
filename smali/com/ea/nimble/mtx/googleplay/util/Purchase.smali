.class public Lcom/ea/nimble/mtx/googleplay/util/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# instance fields
.field mDeveloperPayload:Ljava/lang/String;

.field mNimbleMTXTransactionId:Ljava/lang/String;

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPurchaseState:I

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V
    .locals 12
    .param p1, "transaction"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v0

    .line 60
    .local v0, "additionalInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 62
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Can\'t construct Purchase from GooglePlayTransaction without additional info bundle"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 65
    :cond_0
    sget-object v10, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_ORDERID:Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    .local v2, "orderId":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v10

    invoke-interface {v10}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationBundleId()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "sku":Ljava/lang/String;
    sget-object v10, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_PURCHASETIME:Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 69
    .local v6, "purchaseTime":J
    sget-object v10, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_PURCHASESTATE:Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 70
    .local v4, "purchaseState":I
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getNonce()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "developerPayload":Ljava/lang/String;
    sget-object v10, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_TOKEN:Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 72
    .local v9, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getReceipt()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "signature":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v8, :cond_1

    if-eqz v1, :cond_1

    if-eqz v9, :cond_1

    if-nez v5, :cond_2

    .line 81
    :cond_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Missing data to construct a Purchase object."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 84
    :cond_2
    iput-object v2, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mOrderId:Ljava/lang/String;

    .line 85
    iput-object v3, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mPackageName:Ljava/lang/String;

    .line 86
    iput-object v8, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mSku:Ljava/lang/String;

    .line 87
    iput-wide v6, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mPurchaseTime:J

    .line 88
    iput v4, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mPurchaseState:I

    .line 89
    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    .line 90
    iput-object v9, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mToken:Ljava/lang/String;

    .line 91
    iput-object v5, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mSignature:Ljava/lang/String;

    .line 92
    const-string v10, "{\"constructedFromTransaction\":1}"

    iput-object v10, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mNimbleMTXTransactionId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonPurchaseInfo"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "o":Lorg/json/JSONObject;
    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mOrderId:Ljava/lang/String;

    .line 48
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mPackageName:Ljava/lang/String;

    .line 49
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mSku:Ljava/lang/String;

    .line 50
    const-string v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mPurchaseTime:J

    .line 51
    const-string v1, "purchaseState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mPurchaseState:I

    .line 52
    const-string v1, "developerPayload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    .line 53
    const-string v1, "token"

    const-string v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mToken:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mSignature:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getNimbleMTXTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mNimbleMTXTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mPurchaseState:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mPurchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

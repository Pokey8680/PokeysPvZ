.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;->getGooglePlayPricingForPendingCatalogItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GooglePlayCatalogUpdateListener"
.end annotation


# instance fields
.field mCatalogItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field mIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

.field mParentNimbleGooglePlayObject:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/util/IabHelper;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p2, "parentNimbleGooglePlay"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p3, "iabHelper"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlay;",
            "Lcom/ea/nimble/mtx/googleplay/util/IabHelper;",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1144
    .local p4, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;>;"
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;->mParentNimbleGooglePlayObject:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .line 1146
    iput-object p4, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;->mCatalogItemList:Ljava/util/List;

    .line 1147
    iput-object p3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;->mIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    .line 1148
    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Inventory;)V
    .locals 11
    .param p1, "result"    # Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    .param p2, "inventory"    # Lcom/ea/nimble/mtx/googleplay/util/Inventory;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1170
    const-string v5, "GooglePlayCatalogUpdateListener onQueryInventoryFinished"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1172
    const/4 v1, 0x0

    .line 1173
    .local v1, "error":Lcom/ea/nimble/mtx/NimbleMTXError;
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;->isFailure()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query inventory error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    iget-object v5, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v5, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$600(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/util/IabResult;)Lcom/ea/nimble/mtx/googleplay/GooglePlayError;

    move-result-object v2

    .line 1178
    .local v2, "googlePlayError":Lcom/ea/nimble/mtx/googleplay/GooglePlayError;
    iget-object v5, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const-string v6, "GooglePlay catalog query error"

    invoke-static {v5, v2, v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1400(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayError;Ljava/lang/String;)Lcom/ea/nimble/mtx/NimbleMTXError;

    move-result-object v1

    .line 1219
    .end local v2    # "googlePlayError":Lcom/ea/nimble/mtx/googleplay/GooglePlayError;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;->mParentNimbleGooglePlayObject:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;->mCatalogItemList:Ljava/util/List;

    invoke-virtual {v5, v6, v10, v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->onGooglePlayCatalogItemsRefreshed(Ljava/util/List;ZLjava/lang/Exception;)V

    .line 1220
    return-void

    .line 1183
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1185
    .local v3, "itemsToRemove":Ljava/util/Set;, "Ljava/util/Set<Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;>;"
    iget-object v5, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;->mCatalogItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    .line 1187
    .local v0, "catalogItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    iget-object v5, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/ea/nimble/mtx/googleplay/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;

    move-result-object v4

    .line 1193
    .local v4, "skuDetails":Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;
    if-eqz v4, :cond_3

    .line 1195
    invoke-virtual {v4}, Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mTitle:Ljava/lang/String;

    .line 1196
    invoke-virtual {v4}, Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mDescription:Ljava/lang/String;

    .line 1197
    invoke-virtual {v4}, Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    .line 1199
    invoke-virtual {v4}, Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;->getPriceMicros()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1200
    invoke-virtual {v4}, Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;->getPriceMicros()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const v7, 0x49742400    # 1000000.0f

    div-float/2addr v5, v7

    :goto_2
    iput v5, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceDecimal:F

    .line 1201
    iget-object v5, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    const-string v7, "localCurrency"

    invoke-virtual {v4}, Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;->getCurrencyCode()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1200
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 1206
    :cond_3
    const-string v5, "Could not get SKU details from GooglePlay for SKU: %s. Removing from results."

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {p0, v5, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1207
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1212
    .end local v0    # "catalogItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    .end local v4    # "skuDetails":Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1214
    iget-object v5, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;->mCatalogItemList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method queryGooglePlay()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    .local v3, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;->mCatalogItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    .line 1157
    .local v0, "item":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    iget-object v5, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1160
    .end local v0    # "item":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Making GooglePlay inventory query for skus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1162
    const/4 v2, 0x1

    .line 1163
    .local v2, "querySkuDetails":Z
    const/4 v1, 0x0

    .line 1164
    .local v1, "queryOwnedItems":Z
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;->mIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v6, v5, v3, p0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->queryInventoryAsync(ZZLjava/util/List;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 1165
    return-void
.end method

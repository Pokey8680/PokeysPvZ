.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$5;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;->networkCallGetAvailableItems()V
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
    .line 1000
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$5;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 11
    .param p2, "error"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "itemData":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;>;"
    const/4 v10, 0x0

    .line 1004
    if-nez p2, :cond_2

    .line 1009
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1010
    .local v2, "googleItemList":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    .line 1012
    .local v5, "synItem":Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;
    new-instance v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    invoke-direct {v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;-><init>()V

    .line 1013
    .local v1, "googleItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    invoke-virtual {v5}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getItemType()Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    move-result-object v8

    iput-object v8, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    .line 1014
    invoke-virtual {v5}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v8

    iput-object v8, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    .line 1015
    invoke-virtual {v5}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getDescription()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mDescription:Ljava/lang/String;

    .line 1016
    invoke-virtual {v5}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getSku()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    .line 1017
    invoke-virtual {v5}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mTitle:Ljava/lang/String;

    .line 1018
    invoke-virtual {v5}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getMetaDataUrl()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mUrl:Ljava/lang/String;

    .line 1019
    invoke-virtual {v5}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->isFree()Z

    move-result v8

    iput-boolean v8, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mIsFree:Z

    .line 1021
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1025
    .end local v1    # "googleItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    .end local v5    # "synItem":Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;
    :cond_0
    invoke-static {}, Lcom/ea/nimble/Base;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v7

    sget-object v8, Lcom/ea/nimble/NimbleConfiguration;->LIVE:Lcom/ea/nimble/NimbleConfiguration;

    if-eq v7, v8, :cond_1

    .line 1027
    new-instance v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    invoke-direct {v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;-><init>()V

    .line 1028
    .local v3, "purchasedItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    const-string v7, "android.test.purchased"

    iput-object v7, v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    .line 1029
    const-string v7, "GP Purchased"

    iput-object v7, v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mTitle:Ljava/lang/String;

    .line 1030
    const-string v7, "GP Purchased Desc"

    iput-object v7, v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mDescription:Ljava/lang/String;

    .line 1031
    const-string v7, ""

    iput-object v7, v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mUrl:Ljava/lang/String;

    .line 1032
    sget-object v7, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->NONCONSUMABLE:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    iput-object v7, v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    .line 1033
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    invoke-direct {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;-><init>()V

    .line 1036
    .local v0, "canceledItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    const-string v7, "android.test.canceled"

    iput-object v7, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    .line 1037
    const-string v7, "GP Canceled"

    iput-object v7, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mTitle:Ljava/lang/String;

    .line 1038
    const-string v7, "GP Canceled Desc"

    iput-object v7, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mDescription:Ljava/lang/String;

    .line 1039
    const-string v7, ""

    iput-object v7, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mUrl:Ljava/lang/String;

    .line 1040
    sget-object v7, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->NONCONSUMABLE:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    iput-object v7, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    .line 1041
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    new-instance v4, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    invoke-direct {v4}, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;-><init>()V

    .line 1044
    .local v4, "refundedItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    const-string v7, "android.test.refunded"

    iput-object v7, v4, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    .line 1045
    const-string v7, "GP Refunded"

    iput-object v7, v4, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mTitle:Ljava/lang/String;

    .line 1046
    const-string v7, "GP Refunded Desc"

    iput-object v7, v4, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mDescription:Ljava/lang/String;

    .line 1047
    const-string v7, ""

    iput-object v7, v4, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mUrl:Ljava/lang/String;

    .line 1048
    sget-object v7, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->NONCONSUMABLE:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    iput-object v7, v4, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    .line 1049
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    new-instance v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    invoke-direct {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;-><init>()V

    .line 1052
    .local v6, "unavailableItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    const-string v7, "android.test.item_unavailable"

    iput-object v7, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    .line 1053
    const-string v7, "GP Unavailable"

    iput-object v7, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mTitle:Ljava/lang/String;

    .line 1054
    const-string v7, "GP Unavailable Desc"

    iput-object v7, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mDescription:Ljava/lang/String;

    .line 1055
    const-string v7, ""

    iput-object v7, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mUrl:Ljava/lang/String;

    .line 1056
    sget-object v7, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->NONCONSUMABLE:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    iput-object v7, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    .line 1057
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    .end local v0    # "canceledItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    .end local v3    # "purchasedItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    .end local v4    # "refundedItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    .end local v6    # "unavailableItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    :cond_1
    iget-object v7, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$5;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v7, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1300(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Ljava/util/List;)V

    .line 1071
    .end local v2    # "googleItemList":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;>;"
    :goto_1
    return-void

    .line 1067
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetAvailableItems error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1068
    iget-object v7, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$5;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const-string v8, "nimble.notification.mtx.refreshcatalogfinished"

    const-string v9, "Error making Synergy getAvailableItems call."

    invoke-static {v7, v8, v9, v10, v10}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$900(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method

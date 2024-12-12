.class public Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;
.super Ljava/lang/Object;
.source "SynergyCatalog.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;,
        Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemSkuCallback;,
        Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;,
        Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;,
        Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;,
        Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;,
        Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;
    }
.end annotation


# static fields
.field public static final MTX_INFO_KEY_CURRENCY:Ljava/lang/String; = "localCurrency"

.field private static final SYNERGY_API_GET_AVAILABLE_ITEMS:Ljava/lang/String; = "/product/api/core/getAvailableItems"

.field private static final SYNERGY_API_GET_CATEGORIES:Ljava/lang/String; = "/product/api/core/getMTXGameCategories"

.field private static final SYNERGY_API_GET_DOWNLOAD_URL:Ljava/lang/String; = "/product/api/core/getDownloadItemUrl"

.field private static final SYNERGY_API_GET_NONCE:Ljava/lang/String; = "/drm/api/core/getNonce"

.field private static final SYNERGY_API_GET_PURCHASED_ITEMS:Ljava/lang/String; = "/drm/api/core/getPurchasedItems"


# instance fields
.field private m_itemSkuPrefix:Ljava/lang/String;

.field private m_itemsLoadingBinaryData:I


# direct methods
.method public constructor <init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;)V
    .locals 2
    .param p1, "storeType"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemsLoadingBinaryData:I

    .line 90
    sget-object v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;->AMAZON:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    if-ne p1, v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationBundleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemSkuPrefix:Ljava/lang/String;

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemSkuPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Ljava/util/Map;)Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->createItemFromMap(Ljava/util/Map;)Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)I
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    .prologue
    .line 40
    iget v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemsLoadingBinaryData:I

    return v0
.end method

.method static synthetic access$106(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)I
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    .prologue
    .line 40
    iget v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemsLoadingBinaryData:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemsLoadingBinaryData:I

    return v0
.end method

.method static synthetic access$200(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Ljava/lang/String;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->downloadContent(Ljava/lang/String;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemSkuPrefix:Ljava/lang/String;

    return-object v0
.end method

.method private createItemFromMap(Ljava/util/Map;)Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "itemData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    invoke-direct {v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;-><init>()V

    .line 483
    .local v1, "item":Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemSkuPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sellId"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_sku:Ljava/lang/String;

    .line 484
    const-string v3, "title"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_title:Ljava/lang/String;

    .line 485
    const-string v3, "consumable"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 486
    .local v0, "consumable":Z
    if-eqz v0, :cond_1

    sget-object v3, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->CONSUMABLE:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    :goto_0
    iput-object v3, v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_type:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    .line 487
    const-string v3, "desc"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_description:Ljava/lang/String;

    .line 488
    const-string v3, "packUrl"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_metaDataUrl:Ljava/lang/String;

    .line 489
    const-string v3, "free"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_isFree:Z

    .line 491
    iget-object v3, v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_additionalInfo:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 493
    const-string v3, "binaryPack"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 495
    .local v2, "tempString":Ljava/lang/String;
    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    iget-object v3, v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_additionalInfo:Ljava/util/Map;

    const-string v4, "binaryData"

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_0
    return-object v1

    .line 486
    .end local v2    # "tempString":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->NONCONSUMABLE:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    goto :goto_0
.end method

.method private downloadContent(Ljava/lang/String;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;

    .prologue
    .line 454
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .local v1, "newUrl":Ljava/net/URL;
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$13;

    invoke-direct {v4, p0, p2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$13;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V

    invoke-interface {v2, v1, v3, v4}, Lcom/ea/nimble/INetwork;->sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    .line 476
    .end local v1    # "newUrl":Ljava/net/URL;
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getDownloadUrlForItem(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V
    .locals 5
    .param p1, "item"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;
    .param p2, "callback"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;

    .prologue
    .line 395
    new-instance v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$11;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$11;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;)V

    .line 416
    .local v1, "prepareRequestCallback":Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;
    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$12;

    invoke-direct {v0, p0, p2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$12;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V

    .line 445
    .local v0, "completionCallback":Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    new-instance v2, Lcom/ea/nimble/SynergyRequest;

    const-string v3, "/product/api/core/getDownloadItemUrl"

    sget-object v4, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {v2, v3, v4, v1}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    .line 446
    .local v2, "request":Lcom/ea/nimble/SynergyRequest;
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    .line 447
    return-void
.end method


# virtual methods
.method public downloadItem(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V
    .locals 1
    .param p1, "item"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;
    .param p2, "callback"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;

    .prologue
    .line 274
    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$6;

    invoke-direct {v0, p0, p2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$6;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->getDownloadUrlForItem(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V

    .line 288
    return-void
.end method

.method public getCategories(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;

    .prologue
    .line 340
    new-instance v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$9;

    invoke-direct {v1, p0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$9;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)V

    .line 358
    .local v1, "prepareRequestCallback":Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;
    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$10;

    invoke-direct {v0, p0, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$10;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;)V

    .line 389
    .local v0, "completionCallback":Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    new-instance v2, Lcom/ea/nimble/SynergyRequest;

    const-string v3, "/product/api/core/getMTXGameCategories"

    sget-object v4, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {v2, v3, v4, v1}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    .line 390
    .local v2, "request":Lcom/ea/nimble/SynergyRequest;
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    .line 391
    return-void
.end method

.method public getItemCatalog(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;

    .prologue
    .line 112
    new-instance v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$1;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)V

    .line 134
    .local v1, "prepareRequestCallback":Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;
    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$2;

    invoke-direct {v0, p0, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$2;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;)V

    .line 157
    .local v0, "completionCallback":Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    new-instance v2, Lcom/ea/nimble/SynergyRequest;

    const-string v3, "/product/api/core/getAvailableItems"

    sget-object v4, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {v2, v3, v4, v1}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    .line 158
    .local v2, "request":Lcom/ea/nimble/SynergyRequest;
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    .line 159
    return-void
.end method

.method public getItemSkuPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemSkuPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "SynergyCatalog"

    return-object v0
.end method

.method public getNonce(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;

    .prologue
    .line 230
    new-instance v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$4;

    invoke-direct {v1, p0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$4;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)V

    .line 246
    .local v1, "prepareRequestCallback":Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;
    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$5;

    invoke-direct {v0, p0, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$5;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V

    .line 268
    .local v0, "completionCallback":Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    new-instance v2, Lcom/ea/nimble/SynergyRequest;

    const-string v3, "/drm/api/core/getNonce"

    sget-object v4, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {v2, v3, v4, v1}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    .line 269
    .local v2, "request":Lcom/ea/nimble/SynergyRequest;
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    .line 270
    return-void
.end method

.method public getPurchasedItems(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemSkuCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemSkuCallback;

    .prologue
    .line 292
    new-instance v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$7;

    invoke-direct {v1, p0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$7;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)V

    .line 308
    .local v1, "prepareRequestCallback":Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;
    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$8;

    invoke-direct {v0, p0, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$8;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemSkuCallback;)V

    .line 334
    .local v0, "completionCallback":Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    new-instance v2, Lcom/ea/nimble/SynergyRequest;

    const-string v3, "/drm/api/core/getPurchasedItems"

    sget-object v4, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {v2, v3, v4, v1}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    .line 335
    .local v2, "request":Lcom/ea/nimble/SynergyRequest;
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    .line 336
    return-void
.end method

.method public loadBinaryDataForItems(Ljava/util/Collection;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;)V
    .locals 9
    .param p2, "callback"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;",
            ">;",
            "Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;>;"
    const/4 v8, 0x0

    .line 165
    iget v4, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemsLoadingBinaryData:I

    if-eqz v4, :cond_1

    .line 167
    const-string v4, "Error: items already loading binary data"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :cond_0
    return-void

    .line 170
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    .line 172
    .local v1, "item":Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;
    iget-object v5, v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_additionalInfo:Ljava/util/Map;

    const-string v6, "binaryData"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 174
    invoke-virtual {v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getMetaDataUrl()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "tempUrl":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 180
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .local v3, "url":Ljava/net/URL;
    iget v5, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemsLoadingBinaryData:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemsLoadingBinaryData:I

    .line 188
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;

    invoke-direct {v7, p0, v1, p2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;)V

    invoke-interface {v5, v3, v6, v7}, Lcom/ea/nimble/INetwork;->sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    goto :goto_0

    .line 182
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Malformed item url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

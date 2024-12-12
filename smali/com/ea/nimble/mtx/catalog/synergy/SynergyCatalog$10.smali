.class Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$10;
.super Ljava/lang/Object;
.source "SynergyCatalog.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->getCategories(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

.field final synthetic val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$10;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    iput-object p2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$10;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 9
    .param p1, "handle"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 362
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v5

    invoke-interface {v5}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v5

    if-nez v5, :cond_1

    .line 364
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v5

    invoke-interface {v5}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object v4

    .line 366
    .local v4, "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "gameCategoryData"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 368
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 369
    .local v2, "categorySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ea/nimble/mtx/catalog/synergy/ItemCategory;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 371
    .local v1, "category":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Lcom/ea/nimble/mtx/catalog/synergy/ItemCategory;

    invoke-direct {v3}, Lcom/ea/nimble/mtx/catalog/synergy/ItemCategory;-><init>()V

    .line 372
    .local v3, "itemCategory":Lcom/ea/nimble/mtx/catalog/synergy/ItemCategory;
    const-string v5, "categoryId"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v3, Lcom/ea/nimble/mtx/catalog/synergy/ItemCategory;->m_id:I

    .line 373
    const-string v5, "title"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/ea/nimble/mtx/catalog/synergy/ItemCategory;->m_title:Ljava/lang/String;

    .line 374
    const-string v5, "imageOff"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    iput-object v5, v3, Lcom/ea/nimble/mtx/catalog/synergy/ItemCategory;->m_regularImageData:[B

    .line 376
    const-string v5, "imageOn"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    iput-object v5, v3, Lcom/ea/nimble/mtx/catalog/synergy/ItemCategory;->m_selectedImageData:[B

    .line 379
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    .end local v1    # "category":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "itemCategory":Lcom/ea/nimble/mtx/catalog/synergy/ItemCategory;
    :cond_0
    iget-object v5, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$10;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;

    invoke-interface {v5, v2, v8}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;->callback(Ljava/util/Set;Ljava/lang/Exception;)V

    .line 387
    .end local v0    # "categories":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v2    # "categorySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ea/nimble/mtx/catalog/synergy/ItemCategory;>;"
    .end local v4    # "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    return-void

    .line 385
    :cond_1
    iget-object v5, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$10;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v6

    invoke-interface {v5, v8, v6}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;->callback(Ljava/util/Set;Ljava/lang/Exception;)V

    goto :goto_1
.end method

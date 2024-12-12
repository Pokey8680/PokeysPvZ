.class Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$12;
.super Ljava/lang/Object;
.source "SynergyCatalog.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->getDownloadUrlForItem(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

.field final synthetic val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$12;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    iput-object p2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$12;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 8
    .param p1, "handle"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    const/4 v7, 0x0

    .line 420
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v5

    invoke-interface {v5}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v5

    if-nez v5, :cond_1

    .line 422
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v5

    invoke-interface {v5}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object v2

    .line 424
    .local v2, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "infoData"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 426
    .local v1, "infoData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "fileURL"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 428
    .local v0, "fileUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 430
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 431
    .local v3, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$12;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;

    invoke-interface {v5, v3, v7}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;->callback(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 443
    .end local v0    # "fileUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "infoData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 435
    .restart local v0    # "fileUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "infoData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "No urls for item"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 436
    .local v4, "urlError":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$12;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;

    invoke-interface {v5, v7, v4}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;->callback(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 441
    .end local v0    # "fileUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "infoData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "urlError":Ljava/lang/Exception;
    :cond_1
    iget-object v5, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$12;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;->callback(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

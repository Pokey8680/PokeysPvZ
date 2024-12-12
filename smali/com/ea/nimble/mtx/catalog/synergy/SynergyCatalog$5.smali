.class Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$5;
.super Ljava/lang/Object;
.source "SynergyCatalog.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->getNonce(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V
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
    .line 246
    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$5;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    iput-object p2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$5;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 5
    .param p1, "handle"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    const/4 v4, 0x0

    .line 250
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v2

    if-nez v2, :cond_1

    .line 254
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "nonce"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 255
    .local v0, "nonceObject":Ljava/lang/Object;
    const-string v1, ""

    .line 256
    .local v1, "nonceStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$5;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;

    invoke-interface {v2, v1, v4}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;->callback(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 266
    .end local v0    # "nonceObject":Ljava/lang/Object;
    .end local v1    # "nonceStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$5;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;->callback(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

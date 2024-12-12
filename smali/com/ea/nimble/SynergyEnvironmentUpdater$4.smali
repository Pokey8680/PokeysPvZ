.class Lcom/ea/nimble/SynergyEnvironmentUpdater$4;
.super Ljava/lang/Object;
.source "SynergyEnvironmentUpdater.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyGetAnonUid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;


# direct methods
.method constructor <init>(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 8
    .param p1, "handle"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 604
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v2, v5}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$002(Lcom/ea/nimble/SynergyEnvironmentUpdater;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 606
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 607
    .local v0, "error":Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 609
    const-string v2, "GETANON Success"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v2}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$100(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v2

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v3

    .line 613
    invoke-interface {v3}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object v3

    const-string v4, "uid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 612
    invoke-virtual {v2, v3}, Lcom/ea/nimble/EnvironmentDataContainer;->setSynergyAnonymousId(Ljava/lang/String;)V

    .line 617
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v2, v5}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$200(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)V

    .line 642
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v2, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$600(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)Z

    move-result v1

    .line 623
    .local v1, "isTimeout":Z
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v2}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$1200(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    move-result-wide v2

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 625
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v2}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$1208(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    .line 627
    const-string v2, "GetAnonUid, call failed. Making retry attempt number %d."

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .line 628
    invoke-static {v4}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$1200(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    .line 627
    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v2}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$900(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    goto :goto_0

    .line 634
    :cond_1
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$1202(Lcom/ea/nimble/SynergyEnvironmentUpdater;J)J

    .line 635
    const-string v2, "GETANON Error, (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v4

    .line 636
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 635
    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    new-instance v3, Lcom/ea/nimble/Error;

    sget-object v4, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_ANONYMOUS_ID_FAILURE:Lcom/ea/nimble/Error$Code;

    const-string v5, "Synergy \"get anonymous id\" call failed."

    invoke-direct {v3, v4, v5, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$200(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)V

    goto :goto_0
.end method

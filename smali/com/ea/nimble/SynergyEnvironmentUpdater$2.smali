.class Lcom/ea/nimble/SynergyEnvironmentUpdater$2;
.super Ljava/lang/Object;
.source "SynergyEnvironmentUpdater.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyGetEADeviceId()V
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
    .line 357
    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 8
    .param p1, "handle"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 362
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$002(Lcom/ea/nimble/SynergyEnvironmentUpdater;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 364
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 366
    .local v0, "error":Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 368
    const-string v2, "GetEADeviceID Success"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v2}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$100(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v3

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v2

    .line 371
    invoke-interface {v2}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object v2

    const-string v4, "deviceId"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 370
    invoke-virtual {v3, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->setEADeviceId(Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v2}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$900(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    .line 398
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v2, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$600(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)Z

    move-result v1

    .line 379
    .local v1, "isTimeout":Z
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v2}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$1000(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    move-result-wide v2

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v2}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$1008(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    .line 383
    const-string v2, "GetEADeviceID, call failed. Making retry attempt number %d."

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .line 384
    invoke-static {v4}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$1000(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    .line 383
    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v2}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$500(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$1002(Lcom/ea/nimble/SynergyEnvironmentUpdater;J)J

    .line 391
    const-string v2, "GetEADeviceID Error (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    new-instance v3, Lcom/ea/nimble/Error;

    sget-object v4, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_EA_DEVICE_ID_FAILURE:Lcom/ea/nimble/Error$Code;

    const-string v5, "GetEADevideId call failed"

    .line 395
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    invoke-static {v2, v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$200(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.class Lcom/ea/nimble/SynergyEnvironmentUpdater$3;
.super Ljava/lang/Object;
.source "SynergyEnvironmentUpdater.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyValidateEADeviceId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

.field final synthetic val$eaDeviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    iput-object p2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->val$eaDeviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 10
    .param p1, "handle"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 482
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v3, v5}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$002(Lcom/ea/nimble/SynergyEnvironmentUpdater;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 484
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 485
    .local v0, "error":Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 487
    const-string v3, "ValidateEADeviceID Success"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$100(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v4

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v3

    .line 490
    invoke-interface {v3}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object v3

    const-string v5, "deviceId"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 489
    invoke-virtual {v4, v3}, Lcom/ea/nimble/EnvironmentDataContainer;->setEADeviceId(Ljava/lang/String;)V

    .line 493
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$900(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    .line 554
    :goto_0
    return-void

    .line 497
    :cond_0
    const-string v3, "ValidateEADeviceID Error (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    instance-of v3, v0, Lcom/ea/nimble/SynergyServerError;

    if-eqz v3, :cond_3

    move-object v2, v0

    .line 500
    check-cast v2, Lcom/ea/nimble/SynergyServerError;

    .line 503
    .local v2, "synergyError":Lcom/ea/nimble/SynergyServerError;
    const/16 v3, -0x4e7e

    invoke-virtual {v2, v3}, Lcom/ea/nimble/SynergyServerError;->isError(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 517
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$300(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 519
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$300(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/ea/nimble/EnvironmentDataContainer;->setEADeviceId(Ljava/lang/String;)V

    .line 522
    :cond_1
    const-string v3, "ValidateEADeviceID, Server signal received to delete cached EA Device ID. Making request to get a new EA Device ID."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$500(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    goto :goto_0

    .line 527
    :cond_2
    const/16 v3, -0x4e7d

    invoke-virtual {v2, v3}, Lcom/ea/nimble/SynergyServerError;->isError(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 529
    const-string v3, "ValidateEADeviceID, EADeviceID validation failed. Making request to get a new EA Device ID."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$500(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    goto :goto_0

    .line 536
    .end local v2    # "synergyError":Lcom/ea/nimble/SynergyServerError;
    :cond_3
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v3, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$600(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)Z

    move-result v1

    .line 539
    .local v1, "isTimeout":Z
    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$1100(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    move-result-wide v4

    const-wide/16 v6, 0x3

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    .line 541
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$1108(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    .line 543
    const-string v3, "ValidateEADeviceID, call failed. Making retry attempt number %d."

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .line 544
    invoke-static {v5}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$1100(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    .line 543
    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    iget-object v4, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->val$eaDeviceId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$400(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_4
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$1102(Lcom/ea/nimble/SynergyEnvironmentUpdater;J)J

    .line 551
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    new-instance v4, Lcom/ea/nimble/Error;

    sget-object v5, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_EA_DEVICE_ID_FAILURE:Lcom/ea/nimble/Error$Code;

    const-string v6, "ValidateEADeviceId call failed"

    invoke-direct {v4, v5, v6, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3, v4}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$200(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

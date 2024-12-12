.class Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;
.super Ljava/lang/Object;
.source "SynergyNetworkConnection.java"

# interfaces
.implements Lcom/ea/nimble/IOperationalTelemetryDispatch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/SynergyNetworkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynergyOperationalTelemetryDispatch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyNetworkConnection;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/SynergyNetworkConnection;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/SynergyNetworkConnection;Lcom/ea/nimble/SynergyNetworkConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ea/nimble/SynergyNetworkConnection;
    .param p2, "x1"    # Lcom/ea/nimble/SynergyNetworkConnection$1;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;-><init>(Lcom/ea/nimble/SynergyNetworkConnection;)V

    return-void
.end method


# virtual methods
.method public getEvents(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/OperationalTelemetryEvent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ea/nimble/BaseCore;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    const-string v2, "BaseCore not active for operational telemetry logging."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    :cond_0
    :goto_0
    return-object v1

    .line 260
    :cond_1
    invoke-static {}, Lcom/ea/nimble/OperationalTelemetryDispatch;->getComponent()Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-result-object v0

    .line 261
    .local v0, "otDispatch":Lcom/ea/nimble/IOperationalTelemetryDispatch;
    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0, p1}, Lcom/ea/nimble/IOperationalTelemetryDispatch;->getEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getMaxEventCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 296
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ea/nimble/BaseCore;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 298
    const-string v2, "BaseCore not active for operational telemetry logging."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :cond_0
    :goto_0
    return v1

    .line 302
    :cond_1
    invoke-static {}, Lcom/ea/nimble/OperationalTelemetryDispatch;->getComponent()Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-result-object v0

    .line 303
    .local v0, "otDispatch":Lcom/ea/nimble/IOperationalTelemetryDispatch;
    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0, p1}, Lcom/ea/nimble/IOperationalTelemetryDispatch;->getMaxEventCount(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p2, "eventDict":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/BaseCore;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 226
    const-string v3, "BaseCore not active for operational telemetry logging."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-static {}, Lcom/ea/nimble/OperationalTelemetryDispatch;->getComponent()Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-result-object v0

    .line 231
    .local v0, "otDispatch":Lcom/ea/nimble/IOperationalTelemetryDispatch;
    if-eqz v0, :cond_0

    .line 235
    iget-object v3, p0, Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {v3}, Lcom/ea/nimble/SynergyNetworkConnection;->access$200(Lcom/ea/nimble/SynergyNetworkConnection;)V

    .line 237
    iget-object v3, p0, Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {v3}, Lcom/ea/nimble/SynergyNetworkConnection;->access$600(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/SynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object v2

    .line 238
    .local v2, "synergyResponseData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_2

    const-string v3, "resultCode"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    const-string v3, "resultCode"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 241
    .local v1, "resultCode":Ljava/lang/Integer;
    const-string v3, "SYNERGY_RESULT_CODE"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .end local v1    # "resultCode":Ljava/lang/Integer;
    :cond_2
    invoke-interface {v0, p1, p2}, Lcom/ea/nimble/IOperationalTelemetryDispatch;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setMaxEventCount(Ljava/lang/String;I)V
    .locals 3
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "maxCount"    # I

    .prologue
    .line 275
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    const-string v1, "BaseCore not active for operational telemetry logging."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-static {}, Lcom/ea/nimble/OperationalTelemetryDispatch;->getComponent()Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-result-object v0

    .line 282
    .local v0, "otDispatch":Lcom/ea/nimble/IOperationalTelemetryDispatch;
    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0, p1, p2}, Lcom/ea/nimble/IOperationalTelemetryDispatch;->setMaxEventCount(Ljava/lang/String;I)V

    goto :goto_0
.end method

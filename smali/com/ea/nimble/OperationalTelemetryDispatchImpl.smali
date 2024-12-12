.class Lcom/ea/nimble/OperationalTelemetryDispatchImpl;
.super Lcom/ea/nimble/Component;
.source "OperationalTelemetryDispatchImpl.java"

# interfaces
.implements Lcom/ea/nimble/IOperationalTelemetryDispatch;
.implements Lcom/ea/nimble/LogSource;


# instance fields
.field private m_maxEventQueueSizeDict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_networkMetricsArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/OperationalTelemetryEvent;",
            ">;"
        }
    .end annotation
.end field

.field private m_networkPayloadsArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/OperationalTelemetryEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 22
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkMetricsArray:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkPayloadsArray:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_maxEventQueueSizeDict:Ljava/util/Map;

    .line 26
    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_maxEventQueueSizeDict:Ljava/util/Map;

    const-string v1, "com.ea.nimble.network"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_maxEventQueueSizeDict:Ljava/util/Map;

    const-string v1, "com.ea.nimble.trackingimpl.synergy"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private canLogEvent(Ljava/lang/String;)Z
    .locals 9
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 209
    invoke-virtual {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->getMaxEventCount(Ljava/lang/String;)I

    move-result v3

    .line 210
    .local v3, "maxQueueSize":I
    const-string v8, "com.ea.nimble.network"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 212
    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkMetricsArray:Ljava/util/List;

    .line 224
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/OperationalTelemetryEvent;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 225
    .local v4, "queuedCount":I
    if-ge v4, v3, :cond_4

    move v1, v7

    .line 226
    .local v1, "canFit":Z
    :goto_1
    if-gez v3, :cond_5

    move v6, v7

    .line 227
    .local v6, "unlimitted":Z
    :goto_2
    if-nez v3, :cond_6

    move v5, v7

    .line 229
    .local v5, "stopped":Z
    :goto_3
    if-nez v1, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    if-nez v5, :cond_1

    move v2, v7

    .line 230
    .end local v0    # "array":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/OperationalTelemetryEvent;>;"
    .end local v1    # "canFit":Z
    .end local v4    # "queuedCount":I
    .end local v5    # "stopped":Z
    .end local v6    # "unlimitted":Z
    :cond_1
    :goto_4
    return v2

    .line 214
    :cond_2
    const-string v8, "com.ea.nimble.trackingimpl.synergy"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 216
    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkPayloadsArray:Ljava/util/List;

    .restart local v0    # "array":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/OperationalTelemetryEvent;>;"
    goto :goto_0

    .line 220
    .end local v0    # "array":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/OperationalTelemetryEvent;>;"
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canLogEvent, unsupported OT eventType, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .restart local v0    # "array":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/OperationalTelemetryEvent;>;"
    .restart local v4    # "queuedCount":I
    :cond_4
    move v1, v2

    .line 225
    goto :goto_1

    .restart local v1    # "canFit":Z
    :cond_5
    move v6, v2

    .line 226
    goto :goto_2

    .restart local v6    # "unlimitted":Z
    :cond_6
    move v5, v2

    .line 227
    goto :goto_3
.end method

.method private purgeOldestEvent(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/OperationalTelemetryEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "arrayToPurge":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/OperationalTelemetryEvent;>;"
    monitor-enter p0

    .line 338
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 340
    const-string v2, "purgeOldestEvent called with empty event array."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    monitor-exit p0

    .line 361
    :goto_0
    return-void

    .line 345
    :cond_0
    const/4 v1, 0x0

    .line 346
    .local v1, "oldestEvent":Lcom/ea/nimble/OperationalTelemetryEvent;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/OperationalTelemetryEvent;

    .line 348
    .local v0, "event":Lcom/ea/nimble/OperationalTelemetryEvent;
    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/ea/nimble/OperationalTelemetryEvent;->getLoggedTime()Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1}, Lcom/ea/nimble/OperationalTelemetryEvent;->getLoggedTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    :cond_2
    move-object v1, v0

    goto :goto_1

    .line 355
    .end local v0    # "event":Lcom/ea/nimble/OperationalTelemetryEvent;
    :cond_3
    if-eqz v1, :cond_4

    .line 357
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 360
    :cond_4
    monitor-exit p0

    goto :goto_0

    .end local v1    # "oldestEvent":Lcom/ea/nimble/OperationalTelemetryEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private trimEventQueue(Ljava/lang/String;)V
    .locals 8
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 274
    invoke-virtual {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->getMaxEventCount(Ljava/lang/String;)I

    move-result v2

    .line 275
    .local v2, "maxQueueSize":I
    const-string v5, "com.ea.nimble.network"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 277
    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkMetricsArray:Ljava/util/List;

    .line 289
    .local v0, "arrayToPurge":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/OperationalTelemetryEvent;>;"
    :goto_0
    if-gez v2, :cond_3

    .line 327
    .end local v0    # "arrayToPurge":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/OperationalTelemetryEvent;>;"
    :cond_0
    :goto_1
    return-void

    .line 279
    :cond_1
    const-string v5, "com.ea.nimble.trackingimpl.synergy"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkPayloadsArray:Ljava/util/List;

    .restart local v0    # "arrayToPurge":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/OperationalTelemetryEvent;>;"
    goto :goto_0

    .line 285
    .end local v0    # "arrayToPurge":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/OperationalTelemetryEvent;>;"
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trimEventQueue, unsupported OT eventType, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 295
    .restart local v0    # "arrayToPurge":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/OperationalTelemetryEvent;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int v3, v5, v2

    .line 302
    .local v3, "overage":I
    if-ltz v3, :cond_0

    .line 308
    monitor-enter p0

    .line 310
    if-nez v2, :cond_5

    .line 313
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 326
    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 318
    :cond_5
    :try_start_1
    div-int/lit8 v4, v2, 0x2

    .line 319
    .local v4, "toTrim":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trimEventQueues, queue threshold surprassed, purging "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " older events "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_4

    .line 323
    invoke-direct {p0, v0}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->purgeOldestEvent(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private updateEventThresholdListeners()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    .line 235
    const-string v5, "com.ea.nimble.network"

    invoke-virtual {p0, v5}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->getMaxEventCount(Ljava/lang/String;)I

    move-result v1

    .line 236
    .local v1, "metricsThreshold":I
    if-lez v1, :cond_0

    .line 239
    int-to-double v6, v1

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .line 240
    .local v2, "nearThreshold":I
    iget-object v5, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkMetricsArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 242
    .local v0, "currentCount":I
    if-lt v0, v2, :cond_0

    .line 244
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v3, "note":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "eventType"

    const-string v6, "com.ea.nimble.network"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v5, "nimble.notification.ot.eventthresholdwarning"

    invoke-static {v5, v3}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 247
    const-string v5, "updateEventThresholdListeners, notifying listeners event queue is approaching threshold."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    .end local v0    # "currentCount":I
    .end local v2    # "nearThreshold":I
    .end local v3    # "note":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v5, "com.ea.nimble.trackingimpl.synergy"

    invoke-virtual {p0, v5}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->getMaxEventCount(Ljava/lang/String;)I

    move-result v4

    .line 252
    .local v4, "payloadThreshold":I
    if-lez v4, :cond_1

    .line 255
    int-to-double v6, v4

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .line 256
    .restart local v2    # "nearThreshold":I
    iget-object v5, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkPayloadsArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 258
    .restart local v0    # "currentCount":I
    if-lt v0, v2, :cond_1

    .line 260
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 261
    .restart local v3    # "note":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "eventType"

    const-string v6, "com.ea.nimble.trackingimpl.synergy"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v5, "nimble.notification.ot.eventthresholdwarning"

    invoke-static {v5, v3}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 263
    const-string v5, "updateEventThresholdListeners, notifying listeners event queue is approaching threshold."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    .end local v0    # "currentCount":I
    .end local v2    # "nearThreshold":I
    .end local v3    # "note":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "com.ea.nimble.operationaltelemetrydispatch"

    return-object v0
.end method

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
    const/4 v3, 0x0

    .line 139
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    const-string v1, "getEvents called with null or empty eventType."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    const/4 v1, 0x0

    .line 167
    :goto_0
    return-object v1

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 147
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/OperationalTelemetryEvent;>;"
    monitor-enter p0

    .line 150
    :try_start_0
    const-string v1, "com.ea.nimble.network"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkMetricsArray:Ljava/util/List;

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkMetricsArray:Ljava/util/List;

    .line 160
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-nez v0, :cond_2

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEvents, unsupported OT eventType, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 155
    :cond_3
    :try_start_1
    const-string v1, "com.ea.nimble.trackingimpl.synergy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkPayloadsArray:Ljava/util/List;

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkPayloadsArray:Ljava/util/List;

    goto :goto_1

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "OTDispatch"

    return-object v0
.end method

.method public getMaxEventCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x64

    .line 189
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    const-string v2, "getMaxEventCount called with null or empty eventType."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_0
    :goto_0
    return v1

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_maxEventQueueSizeDict:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 196
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

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
    .local p2, "eventDict":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 71
    const-string v2, "LOGEVENT..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    const-string v2, "logEvent called with null or empty eventType."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :goto_0
    return-void

    .line 83
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 85
    :cond_1
    const-string v2, "logEvent called with null or empty eventDictionary."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_2
    new-instance v1, Lcom/ea/nimble/OperationalTelemetryEventImpl;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, p1, p2, v2}, Lcom/ea/nimble/OperationalTelemetryEventImpl;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;)V

    .line 92
    .local v1, "newEvent":Lcom/ea/nimble/OperationalTelemetryEvent;
    const/4 v0, 0x0

    .line 94
    .local v0, "eventTypeRecognized":Z
    monitor-enter p0

    .line 97
    :try_start_0
    const-string v2, "com.ea.nimble.network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 99
    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->canLogEvent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->trimEventQueue(Ljava/lang/String;)V

    .line 103
    :cond_3
    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->canLogEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    iget-object v2, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkMetricsArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_4
    const/4 v0, 0x1

    .line 121
    :cond_5
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-nez v0, :cond_6

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logEvent, unsupported OT eventType, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_6
    invoke-direct {p0}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->updateEventThresholdListeners()V

    goto :goto_0

    .line 109
    :cond_7
    :try_start_1
    const-string v2, "com.ea.nimble.trackingimpl.synergy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 111
    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->canLogEvent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 113
    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->trimEventQueue(Ljava/lang/String;)V

    .line 115
    :cond_8
    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->canLogEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 117
    iget-object v2, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkPayloadsArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_9
    const/4 v0, 0x1

    goto :goto_1

    .line 121
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected restore()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method protected resume()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public setMaxEventCount(Ljava/lang/String;I)V
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "maxCount"    # I

    .prologue
    .line 175
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const-string v0, "setMaxEventCount called with null or empty eventType."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_maxEventQueueSizeDict:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->trimEventQueue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected suspend()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

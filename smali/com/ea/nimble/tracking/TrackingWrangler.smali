.class public Lcom/ea/nimble/tracking/TrackingWrangler;
.super Lcom/ea/nimble/Component;
.source "TrackingWrangler.java"

# interfaces
.implements Lcom/ea/nimble/tracking/ITracking;
.implements Lcom/ea/nimble/LogSource;


# instance fields
.field private m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    return-void
.end method

.method static getComponent()Lcom/ea/nimble/tracking/TrackingWrangler;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/ea/nimble/tracking/Tracking;->getComponent()Lcom/ea/nimble/tracking/ITracking;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/tracking/TrackingWrangler;

    return-object v0
.end method


# virtual methods
.method public addCustomSessionData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v2, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 99
    .local v0, "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    invoke-interface {v0, p1, p2}, Lcom/ea/nimble/tracking/ITracking;->addCustomSessionData(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_0
    return-void
.end method

.method public clearCustomSessionData()V
    .locals 4

    .prologue
    .line 106
    iget-object v2, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 108
    .local v0, "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    invoke-interface {v0}, Lcom/ea/nimble/tracking/ITracking;->clearCustomSessionData()V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_0
    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "com.ea.nimble.tracking"

    return-object v0
.end method

.method public getEnable()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 72
    const/4 v0, 0x0

    .line 75
    .local v0, "aggregateEnable":Z
    iget-object v4, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v4, v3

    .line 77
    .local v1, "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    if-nez v0, :cond_0

    invoke-interface {v1}, Lcom/ea/nimble/tracking/ITracking;->getEnable()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 75
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_1

    .line 80
    .end local v1    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_2
    return v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "Tracking"

    return-object v0
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
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
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logging event, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v2, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 90
    .local v0, "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    invoke-interface {v0, p1, p2}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_0
    return-void
.end method

.method public restore()V
    .locals 6

    .prologue
    .line 32
    const-string v4, "com.ea.nimble.trackingimpl"

    invoke-static {v4}, Lcom/ea/nimble/Base;->getComponentList(Ljava/lang/String;)[Lcom/ea/nimble/Component;

    move-result-object v1

    .line 33
    .local v1, "components":[Lcom/ea/nimble/Component;
    array-length v4, v1

    new-array v4, v4, [Lcom/ea/nimble/tracking/ITracking;

    iput-object v4, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    .line 35
    const/4 v0, 0x0

    .local v0, "componentIndex":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 37
    iget-object v5, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    aget-object v4, v1, v0

    check-cast v4, Lcom/ea/nimble/tracking/ITracking;

    aput-object v4, v5, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ea/nimble/tracking/ReferrerReceiver;->getReferrerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "referrerId":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received a referrer id that was been sent while Nimble was not active; referrerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "NIMBLESTANDARD::KEY_REFERRER_ID"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v4, "NIMBLESTANDARD::REFERRER_ID_RECEIVED"

    invoke-virtual {p0, v4, v2}, Lcom/ea/nimble/tracking/TrackingWrangler;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ea/nimble/tracking/ReferrerReceiver;->clearReferrerId(Landroid/content/Context;)V

    .line 54
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public setEnable(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "ENABLE"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " tracking"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v3, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 65
    .local v0, "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    invoke-interface {v0, p1}, Lcom/ea/nimble/tracking/ITracking;->setEnable(Z)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    .end local v0    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_0
    const-string v1, "DISABLE"

    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method

.method public setTrackingAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v2, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 117
    .local v0, "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    invoke-interface {v0, p1, p2}, Lcom/ea/nimble/tracking/ITracking;->setTrackingAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_0
    return-void
.end method

.class Lcom/ea/eadp/pushnotification/services/TrackingEvent;
.super Ljava/lang/Object;
.source "TrackingEvent.java"


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private parameters:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pushId"    # Ljava/lang/String;
    .param p2, "pnType"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "deviceIdentifier"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p3, p0, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->name:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->parameters:Ljava/util/Map;

    .line 33
    iget-object v1, p0, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->parameters:Ljava/util/Map;

    const-string v2, "pushId"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->parameters:Ljava/util/Map;

    const-string v2, "pnType"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v1, p0, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->parameters:Ljava/util/Map;

    const-string v2, "deviceType"

    const-string v3, "android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v1, p0, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->parameters:Ljava/util/Map;

    const-string v2, "deviceIdentifier"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->parameters:Ljava/util/Map;

    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 15
    instance-of v0, p1, Lcom/ea/eadp/pushnotification/services/TrackingEvent;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 15
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    instance-of v7, p1, Lcom/ea/eadp/pushnotification/services/TrackingEvent;

    if-nez v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/ea/eadp/pushnotification/services/TrackingEvent;

    .local v0, "other":Lcom/ea/eadp/pushnotification/services/TrackingEvent;
    invoke-virtual {v0, p0}, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->canEqual(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->getName()Ljava/lang/String;

    move-result-object v3

    .local v3, "this$name":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "other$name":Ljava/lang/String;
    if-nez v3, :cond_5

    if-eqz v1, :cond_6

    :cond_4
    move v5, v6

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->getParameters()Ljava/util/Map;

    move-result-object v4

    .local v4, "this$parameters":Ljava/util/Map;
    invoke-virtual {v0}, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->getParameters()Ljava/util/Map;

    move-result-object v2

    .local v2, "other$parameters":Ljava/util/Map;
    if-nez v4, :cond_7

    if-eqz v2, :cond_0

    :goto_1
    move v5, v6

    goto :goto_0

    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 15
    const/16 v2, 0x1f

    .local v2, "PRIME":I
    const/4 v3, 0x1

    .local v3, "result":I
    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, "$name":Ljava/lang/String;
    if-nez v0, :cond_0

    move v4, v5

    :goto_0
    add-int/lit8 v3, v4, 0x1f

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->getParameters()Ljava/util/Map;

    move-result-object v1

    .local v1, "$parameters":Ljava/util/Map;
    mul-int/lit8 v4, v3, 0x1f

    if-nez v1, :cond_1

    :goto_1
    add-int v3, v4, v5

    return v3

    .end local v1    # "$parameters":Ljava/util/Map;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_0

    .restart local v1    # "$parameters":Ljava/util/Map;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->name:Ljava/lang/String;

    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->parameters:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackingEvent(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/services/TrackingEvent;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

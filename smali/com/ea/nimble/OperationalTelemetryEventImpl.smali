.class Lcom/ea/nimble/OperationalTelemetryEventImpl;
.super Ljava/lang/Object;
.source "OperationalTelemetryEventImpl.java"

# interfaces
.implements Lcom/ea/nimble/OperationalTelemetryEvent;


# instance fields
.field private m_eventDictionary:Ljava/util/Map;
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

.field private m_eventType:Ljava/lang/String;

.field private m_loggedTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;
    .param p3, "loggedTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "eventDictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ea/nimble/OperationalTelemetryEventImpl;->m_eventType:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/ea/nimble/OperationalTelemetryEventImpl;->m_eventDictionary:Ljava/util/Map;

    .line 16
    iput-object p3, p0, Lcom/ea/nimble/OperationalTelemetryEventImpl;->m_loggedTime:Ljava/util/Date;

    .line 17
    return-void
.end method


# virtual methods
.method public getEventDictionary()Ljava/util/Map;
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
    .line 26
    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryEventImpl;->m_eventDictionary:Ljava/util/Map;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryEventImpl;->m_eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggedTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryEventImpl;->m_loggedTime:Ljava/util/Date;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    const-string v0, "OperationalTelemetryEvent(%s)-(%s) > %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ea/nimble/OperationalTelemetryEventImpl;->getEventType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ea/nimble/OperationalTelemetryEventImpl;->getLoggedTime()Ljava/util/Date;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/ea/nimble/OperationalTelemetryEventImpl;->getEventDictionary()Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;
.super Ljava/lang/Object;
.source "AutomaticCaptureConfig.java"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;->a:Z

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;->b:Z

    return-void
.end method


# virtual methods
.method public getAutoPurchaseCapture()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;->b:Z

    return v0
.end method

.method public getAutoSessionCapture()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;->a:Z

    return v0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    const-string v0, "session"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;->a:Z

    .line 30
    const-string v0, "purchase"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;->b:Z

    .line 32
    return-void
.end method

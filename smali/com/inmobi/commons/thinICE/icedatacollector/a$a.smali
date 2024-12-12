.class Lcom/inmobi/commons/thinICE/icedatacollector/a$a;
.super Ljava/lang/Object;
.source "IceDataCollector.java"

# interfaces
.implements Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/thinICE/icedatacollector/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/inmobi/commons/thinICE/icedatacollector/a;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/thinICE/icedatacollector/a;ZZ)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/a$a;->c:Lcom/inmobi/commons/thinICE/icedatacollector/a;

    iput-boolean p2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/a$a;->a:Z

    iput-boolean p3, p0, Lcom/inmobi/commons/thinICE/icedatacollector/a$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultsReceived(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "IceDataCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Wi-Fi scan results "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/a$a;->a:Z

    iget-boolean v1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/a$a;->b:Z

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->scanResultsToWifiInfos(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v1

    .line 442
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 443
    const-string v0, "IceDataCollector"

    const-string v2, "-- wifi scan:"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    .line 445
    const-string v3, "IceDataCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->k()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 449
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->l()Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 450
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->l()Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    move-result-object v0

    iput-object v1, v0, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->visibleWifiAp:Ljava/util/List;

    .line 452
    :cond_2
    monitor-exit v2

    .line 453
    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTimeout()V
    .locals 2

    .prologue
    .line 430
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 431
    const-string v0, "IceDataCollector"

    const-string v1, "Received Wi-Fi scan timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    return-void
.end method

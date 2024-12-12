.class Lcom/ea/nimble/SynergyEnvironmentImpl$2;
.super Ljava/lang/Object;
.source "SynergyEnvironmentImpl.java"

# interfaces
.implements Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/SynergyEnvironmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/SynergyEnvironmentImpl;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/Exception;)V
    .locals 7
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 492
    if-nez p1, :cond_3

    .line 494
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$200(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/SynergyEnvironmentUpdater;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    .line 495
    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$200(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/SynergyEnvironmentUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->getEnvironmentDataContainer()Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 498
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    iget-object v4, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {v4}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$200(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/SynergyEnvironmentUpdater;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->getEnvironmentDataContainer()Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$302(Lcom/ea/nimble/SynergyEnvironmentImpl;Lcom/ea/nimble/EnvironmentDataContainer;)Lcom/ea/nimble/EnvironmentDataContainer;

    .line 501
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$400(Lcom/ea/nimble/SynergyEnvironmentImpl;)V

    .line 504
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$300(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v3

    iget-object v4, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {v4}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$500(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ea/nimble/EnvironmentDataContainer;->getKeysOfDifferences(Lcom/ea/nimble/ISynergyEnvironment;)Ljava/util/Set;

    move-result-object v0

    .line 505
    .local v0, "diffs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 510
    const-string v3, "nimble.environment.notification.startup_environment_data_changed"

    invoke-static {v3, v6}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 516
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 517
    .local v2, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "result"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 522
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 524
    const-string v3, "App is running in forground, send the NOTIFICATION_STARTUP_REQUESTS_FINISHED notification"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    const-string v3, "nimble.environment.notification.startup_requests_finished"

    invoke-static {v3, v2}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 593
    .end local v0    # "diffs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {v3, v6}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$202(Lcom/ea/nimble/SynergyEnvironmentImpl;Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .line 594
    return-void

    .line 529
    .restart local v0    # "diffs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v3, "App is not running in forground, discard the NOTIFICATION_STARTUP_REQUESTS_FINISHED notification"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 534
    .end local v0    # "diffs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v3, "Synergy Environment Update object or dataContainer null at callback. More than one update was being peroformed"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 539
    :cond_3
    const-string v3, "StartupError(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    instance-of v3, p1, Lcom/ea/nimble/Error;

    if-eqz v3, :cond_6

    move-object v1, p1

    .line 548
    check-cast v1, Lcom/ea/nimble/Error;

    .line 549
    .local v1, "nimbleError":Lcom/ea/nimble/Error;
    sget-object v3, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_DIRECTION_TIMEOUT:Lcom/ea/nimble/Error$Code;

    invoke-virtual {v1, v3}, Lcom/ea/nimble/Error;->isError(Lcom/ea/nimble/Error$Code;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/ea/nimble/Error$Code;->SYNERGY_SERVER_FULL:Lcom/ea/nimble/Error$Code;

    .line 550
    invoke-virtual {v1, v3}, Lcom/ea/nimble/Error;->isError(Lcom/ea/nimble/Error$Code;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 554
    :cond_4
    const-string v3, "GetDirection request timed out or ServerUnavailable signal received. Start rate limiting of /getDirection call."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$600(Lcom/ea/nimble/SynergyEnvironmentImpl;)V

    .line 574
    .end local v1    # "nimbleError":Lcom/ea/nimble/Error;
    :cond_5
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 575
    .restart local v2    # "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "result"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v3, "error"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationRunning()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 581
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 583
    const-string v3, "App is running in forground, send the NOTIFICATION_STARTUP_REQUESTS_FINISHED notification"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    const-string v3, "nimble.environment.notification.startup_requests_finished"

    invoke-static {v3, v2}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 565
    .end local v2    # "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$200(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/SynergyEnvironmentUpdater;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    .line 566
    invoke-static {v3}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$200(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/SynergyEnvironmentUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->getEnvironmentDataContainer()Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v3

    if-nez v3, :cond_5

    .line 567
    :cond_7
    const-string v3, "Synergy Environment Update object or dataContainer null at callback. More than one update was being peroformed"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 588
    .restart local v2    # "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    const-string v3, "App is not running in forground, discard the NOTIFICATION_STARTUP_REQUESTS_FINISHED notification"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

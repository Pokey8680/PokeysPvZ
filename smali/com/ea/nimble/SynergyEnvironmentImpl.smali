.class public Lcom/ea/nimble/SynergyEnvironmentImpl;
.super Lcom/ea/nimble/Component;
.source "SynergyEnvironmentImpl.java"

# interfaces
.implements Lcom/ea/nimble/ISynergyEnvironment;
.implements Lcom/ea/nimble/LogSource;


# static fields
.field private static final PERSISTENCE_DATA_ID:Ljava/lang/String; = "environmentData"

.field public static final SYNERGY_APP_VERSION_OK:I = 0x0

.field public static final SYNERGY_APP_VERSION_UPDATE_RECOMMENDED:I = 0x1

.field public static final SYNERGY_APP_VERSION_UPDATE_REQUIRED:I = 0x2

.field private static final SYNERGY_INT_SERVER_URL:Ljava/lang/String; = "https://director-int.sn.eamobile.com"

.field private static final SYNERGY_LIVE_SERVER_URL:Ljava/lang/String; = "https://syn-dir.sn.eamobile.com"

.field private static final SYNERGY_STAGE_SERVER_URL:Ljava/lang/String; = "https://director-stage.sn.eamobile.com"

.field public static final SYNERGY_UPDATE_RATE_LIMIT_PERIOD_IN_SECONDS:D = 60.0

.field public static final SYNERGY_UPDATE_REFRESH_PERIOD_IN_SECONDS:D = 300.0


# instance fields
.field private m_core:Lcom/ea/nimble/BaseCore;

.field private m_dataLoadedOnComponentSetup:Z

.field private m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

.field private m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

.field private m_previousValidEnvironmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

.field private m_synergyEnvironmentUpdateRateLimitTriggerTimestamp:Ljava/lang/Long;

.field private m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;


# direct methods
.method constructor <init>(Lcom/ea/nimble/BaseCore;)V
    .locals 1
    .param p1, "core"    # Lcom/ea/nimble/BaseCore;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_core:Lcom/ea/nimble/BaseCore;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_dataLoadedOnComponentSetup:Z

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/SynergyEnvironmentImpl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ea/nimble/SynergyEnvironmentImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentImpl;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ea/nimble/SynergyEnvironmentImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentImpl;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/SynergyEnvironmentUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ea/nimble/SynergyEnvironmentImpl;Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/SynergyEnvironmentUpdater;
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentImpl;
    .param p1, "x1"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/EnvironmentDataContainer;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ea/nimble/SynergyEnvironmentImpl;Lcom/ea/nimble/EnvironmentDataContainer;)Lcom/ea/nimble/EnvironmentDataContainer;
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentImpl;
    .param p1, "x1"    # Lcom/ea/nimble/EnvironmentDataContainer;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ea/nimble/SynergyEnvironmentImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentImpl;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->saveEnvironmentDataToPersistent()V

    return-void
.end method

.method static synthetic access$500(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/EnvironmentDataContainer;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_previousValidEnvironmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ea/nimble/SynergyEnvironmentImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentImpl;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdateRateLimiting()V

    return-void
.end method

.method private clearSynergyEnvironmentUpdateRateLimiting()V
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyEnvironmentUpdateRateLimitTriggerTimestamp:Ljava/lang/Long;

    .line 612
    return-void
.end method

.method private isInSynergyEnvironmentUpdateRateLimitingPeriod()Z
    .locals 4

    .prologue
    .line 605
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyEnvironmentUpdateRateLimitTriggerTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyEnvironmentUpdateRateLimitTriggerTimestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreEnvironmentDataFromPersistent(Z)Z
    .locals 10
    .param p1, "disableNotificationBroadcast"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 616
    const-string v5, "com.ea.nimble.synergyEnvironment"

    sget-object v6, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v5, v6}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    .line 618
    .local v1, "environmentPersistence":Lcom/ea/nimble/Persistence;
    if-eqz v1, :cond_3

    .line 622
    const-string v5, "environmentData"

    invoke-virtual {v1, v5}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 624
    .local v2, "persistenceValue":Ljava/io/Serializable;
    if-nez v2, :cond_1

    .line 626
    const-string v3, "Environment persistence data value not found in persistence object. Probably first install."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    .end local v2    # "persistenceValue":Ljava/io/Serializable;
    :goto_0
    iput-object v9, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    move v3, v4

    .line 665
    :cond_0
    :goto_1
    return v3

    .line 632
    .restart local v2    # "persistenceValue":Ljava/io/Serializable;
    :cond_1
    :try_start_0
    check-cast v2, Lcom/ea/nimble/EnvironmentDataContainer;

    .end local v2    # "persistenceValue":Ljava/io/Serializable;
    iput-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    .line 635
    const-string v5, "Restored environment data from persistent. Restored data timestamp, %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    .line 636
    invoke-virtual {v8}, Lcom/ea/nimble/EnvironmentDataContainer;->getMostRecentDirectorResponseTimestamp()Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 635
    invoke-static {p0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    iget-object v5, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v5}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 640
    iget-object v5, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-static {}, Lcom/ea/nimble/EASPDataLoader;->loadEADeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ea/nimble/EnvironmentDataContainer;->setEADeviceId(Ljava/lang/String;)V

    .line 643
    :cond_2
    if-nez p1, :cond_0

    .line 645
    const-string v5, "nimble.environment.notification.restored_from_persistent"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 651
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "Environment persistence data value is not the expected type."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 659
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_3
    const-string v3, "Could not get environment persistence object to restore from"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private saveEnvironmentDataToPersistent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 670
    const-string v1, "com.ea.nimble.synergyEnvironment"

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 672
    .local v0, "environmentPersistence":Lcom/ea/nimble/Persistence;
    if-eqz v0, :cond_0

    .line 674
    const-string v1, "Saving environment data to persistent."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    const-string v1, "environmentData"

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 678
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 684
    :goto_0
    return-void

    .line 682
    :cond_0
    const-string v1, "Could not get environment persistence object to save to."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startSynergyEnvironmentUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 432
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->isUpdateInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    const-string v1, "Attempt made to start Synergy environment update while a previous one is active. Exiting."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v1, v2, :cond_2

    .line 441
    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 443
    new-instance v1, Lcom/ea/nimble/SynergyEnvironmentImpl$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/SynergyEnvironmentImpl$1;-><init>(Lcom/ea/nimble/SynergyEnvironmentImpl;)V

    iput-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 462
    const-string v1, "Network not available to perform environment update. Setting receiver to listen for network status change."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    const-string v1, "nimble.notification.networkStatusChanged"

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 476
    :cond_2
    new-instance v1, Lcom/ea/nimble/SynergyEnvironmentUpdater;

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-direct {v1, v2}, Lcom/ea/nimble/SynergyEnvironmentUpdater;-><init>(Lcom/ea/nimble/BaseCore;)V

    iput-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .line 480
    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    iput-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_previousValidEnvironmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    .line 483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 484
    .local v0, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "result"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v1, "nimble.environment.notification.startup_requests_started"

    invoke-static {v1, v0}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 487
    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_previousValidEnvironmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    new-instance v3, Lcom/ea/nimble/SynergyEnvironmentImpl$2;

    invoke-direct {v3, p0}, Lcom/ea/nimble/SynergyEnvironmentImpl$2;-><init>(Lcom/ea/nimble/SynergyEnvironmentImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->startSynergyStartupSequence(Lcom/ea/nimble/EnvironmentDataContainer;Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;)V

    goto :goto_0
.end method

.method private startSynergyEnvironmentUpdateRateLimiting()V
    .locals 2

    .prologue
    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyEnvironmentUpdateRateLimitTriggerTimestamp:Ljava/lang/Long;

    .line 601
    return-void
.end method


# virtual methods
.method public checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;
    .locals 10

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->isUpdateInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->SYNERGY_ENVIRONMENT_UPDATE_FAILURE:Lcom/ea/nimble/Error$Code;

    const-string v2, "Update in progress."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-object v0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getMostRecentDirectorResponseTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->SYNERGY_ENVIRONMENT_UPDATE_FAILURE:Lcom/ea/nimble/Error$Code;

    const-string v2, "Environment data already cached."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->isInSynergyEnvironmentUpdateRateLimitingPeriod()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    const-string v0, "Attempt to re-initiate Synergy environment update blocked by rate limiting. %.2f seconds of rate limiting left"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyEnvironmentUpdateRateLimitTriggerTimestamp:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 295
    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->SYNERGY_ENVIRONMENT_UPDATE_FAILURE:Lcom/ea/nimble/Error$Code;

    const-string v2, "Synergy environment update rate limit in effect."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_2
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdate()V

    .line 306
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    const-string v0, "cleanup"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-virtual {v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->cancel()V

    .line 410
    iput-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 416
    iput-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 419
    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->saveEnvironmentDataToPersistent()V

    .line 421
    iput-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    .line 422
    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const-string v0, "com.ea.nimble.synergyEnvironment"

    return-object v0
.end method

.method public getEADeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    .line 93
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEAHardwareId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    .line 171
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getEAHardwareId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGosMdmAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    .line 718
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    .line 720
    const/4 v0, 0x0

    .line 723
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getGosMdmAppKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLatestAppVersionCheckResult()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getLatestAppVersionCheckResult()I

    move-result v0

    goto :goto_0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "SynergyEnv"

    return-object v0
.end method

.method public getNexusClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    .line 691
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    .line 693
    const/4 v0, 0x0

    .line 696
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getNexusClientId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNexusClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    .line 705
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    .line 707
    const/4 v0, 0x0

    .line 710
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getNexusClientSecret()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    .line 151
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getProductId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSellId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    .line 132
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getSellId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    .line 189
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0, p1}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSynergyDirectorServerUrl(Lcom/ea/nimble/NimbleConfiguration;)Ljava/lang/String;
    .locals 3
    .param p1, "nimbleEnvironment"    # Lcom/ea/nimble/NimbleConfiguration;

    .prologue
    .line 207
    sget-object v0, Lcom/ea/nimble/SynergyEnvironmentImpl$3;->$SwitchMap$com$ea$nimble$NimbleConfiguration:[I

    invoke-virtual {p1}, Lcom/ea/nimble/NimbleConfiguration;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 228
    const-string v0, "Request for Synergy Director server URL with unknown NimbleConfiguration, %d."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    const-string v0, "https://syn-dir.sn.eamobile.com"

    :goto_0
    return-object v0

    .line 211
    :pswitch_0
    const-string v0, "https://director-int.sn.eamobile.com"

    goto :goto_0

    .line 215
    :pswitch_1
    const-string v0, "https://director-stage.sn.eamobile.com"

    goto :goto_0

    .line 219
    :pswitch_2
    const-string v0, "https://syn-dir.sn.eamobile.com"

    goto :goto_0

    .line 223
    :pswitch_3
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NimbleCustomizedSynergyServerEndpointUrl"

    const-string v2, "https://syn-dir.sn.eamobile.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSynergyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    .line 113
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getSynergyId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrackingPostInterval()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getTrackingPostInterval()I

    move-result v0

    goto :goto_0
.end method

.method public isDataAvailable()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdateInProgress()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restore()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 329
    const-string v1, "restore"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    iget-boolean v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_dataLoadedOnComponentSetup:Z

    if-eqz v1, :cond_1

    .line 334
    iput-boolean v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_dataLoadedOnComponentSetup:Z

    .line 339
    const-string v1, "nimble.environment.notification.restored_from_persistent"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 347
    :goto_0
    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    .line 348
    invoke-virtual {v1}, Lcom/ea/nimble/EnvironmentDataContainer;->getMostRecentDirectorResponseTimestamp()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v1}, Lcom/ea/nimble/EnvironmentDataContainer;->getMostRecentDirectorResponseTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide v4, 0x4072c00000000000L    # 300.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdate()V

    .line 357
    :goto_1
    return-void

    .line 343
    :cond_1
    const/4 v0, 0x0

    .line 344
    .local v0, "disableNotificationBroadcast":Z
    invoke-direct {p0, v3}, Lcom/ea/nimble/SynergyEnvironmentImpl;->restoreEnvironmentDataFromPersistent(Z)Z

    goto :goto_0

    .line 355
    .end local v0    # "disableNotificationBroadcast":Z
    :cond_2
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    goto :goto_1
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 384
    const-string v0, "resume"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->clearSynergyEnvironmentUpdateRateLimiting()V

    .line 391
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    .line 392
    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getMostRecentDirectorResponseTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getMostRecentDirectorResponseTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide v2, 0x4072c00000000000L    # 300.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdate()V

    .line 397
    :cond_1
    return-void
.end method

.method public setup()V
    .locals 3

    .prologue
    .line 318
    const-string v1, "setup"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    const/4 v0, 0x1

    .line 323
    .local v0, "disableNotificationBroadcast":Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/ea/nimble/SynergyEnvironmentImpl;->restoreEnvironmentDataFromPersistent(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_dataLoadedOnComponentSetup:Z

    .line 324
    return-void
.end method

.method public suspend()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    const-string v0, "suspend"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-virtual {v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->cancel()V

    .line 369
    iput-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 375
    iput-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 378
    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->saveEnvironmentDataToPersistent()V

    .line 379
    return-void
.end method

.method public teardown()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    .line 428
    return-void
.end method

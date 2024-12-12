.class public Lcom/ea/rs/xpromo/XPromo;
.super Lcom/ea/nimble/Component;
.source "XPromo.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.rs.xpromo"

.field public static final NOTIFICATION_ITEMS_REFRESHED:Ljava/lang/String; = "com.ea.notification.xpromo.items.refreshed"

.field private static final PERSISTENCE_CONTAINER_ID_PREFIX:Ljava/lang/String; = "container_"

.field public static final SDK_VERSION:Ljava/lang/String; = "1.0.0.0813"

.field private static final XPROMO_LIVE_SERVER_URL:Ljava/lang/String; = "http://rs-xpromotion.appspot.com/v1/getPromoDataByTitle"

.field private static final XPROMO_STAGE_SERVER_URL:Ljava/lang/String; = "http://rs-xpromotion-stg.appspot.com/v1/getPromoDataByTitle"


# instance fields
.field private m_container:Lcom/ea/rs/xpromo/Container;

.field private m_containerID:Ljava/lang/String;

.field private m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ea/rs/xpromo/XPromo;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ea/rs/xpromo/XPromo;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ea/rs/xpromo/XPromo;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$2(Lcom/ea/rs/xpromo/XPromo;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/ea/rs/xpromo/XPromo;->checkAndUpdate()V

    return-void
.end method

.method static synthetic access$3(Lcom/ea/rs/xpromo/XPromo;Lcom/ea/rs/xpromo/Container;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    return-void
.end method

.method static synthetic access$4(Lcom/ea/rs/xpromo/XPromo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_containerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ea/rs/xpromo/XPromo;)Lcom/ea/rs/xpromo/Container;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    return-object v0
.end method

.method private checkAndUpdate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 147
    iget-object v5, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    invoke-virtual {v5}, Lcom/ea/rs/xpromo/Container;->isExpired()Z

    move-result v5

    if-nez v5, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v5

    invoke-interface {v5}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v3

    .line 153
    .local v3, "status":Lcom/ea/nimble/Network$Status;
    sget-object v5, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v3, v5, :cond_2

    .line 155
    iget-object v5, p0, Lcom/ea/rs/xpromo/XPromo;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_0

    .line 157
    new-instance v5, Lcom/ea/rs/xpromo/XPromo$1;

    invoke-direct {v5, p0}, Lcom/ea/rs/xpromo/XPromo$1;-><init>(Lcom/ea/rs/xpromo/XPromo;)V

    iput-object v5, p0, Lcom/ea/rs/xpromo/XPromo;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    const-string v5, "Network not available to perform update. Setting receiver for network status change updates."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const-string v5, "nimble.notification.networkStatusChanged"

    iget-object v6, p0, Lcom/ea/rs/xpromo/XPromo;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v5, v6}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 179
    :cond_2
    const/4 v4, 0x0

    .line 182
    .local v4, "url":Ljava/net/URL;
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v5

    const-string v6, "rs-xpromo.url"

    invoke-interface {v5, v6}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "serverUrl":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 185
    :cond_3
    invoke-static {}, Lcom/ea/nimble/Base;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v5

    sget-object v6, Lcom/ea/nimble/NimbleConfiguration;->LIVE:Lcom/ea/nimble/NimbleConfiguration;

    if-ne v5, v6, :cond_5

    const-string v2, "http://rs-xpromotion.appspot.com/v1/getPromoDataByTitle"

    .line 188
    :cond_4
    :goto_1
    new-instance v4, Ljava/net/URL;

    .end local v4    # "url":Ljava/net/URL;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "?titleId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationBundleId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 189
    const-string v6, "&lang="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .restart local v4    # "url":Ljava/net/URL;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v5

    new-instance v6, Lcom/ea/rs/xpromo/XPromo$2;

    invoke-direct {v6, p0}, Lcom/ea/rs/xpromo/XPromo$2;-><init>(Lcom/ea/rs/xpromo/XPromo;)V

    invoke-interface {v5, v4, v1, v6}, Lcom/ea/nimble/INetwork;->sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    goto/16 :goto_0

    .line 185
    .end local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    const-string v2, "http://rs-xpromotion-stg.appspot.com/v1/getPromoDataByTitle"
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 191
    .end local v2    # "serverUrl":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v5, Lcom/ea/rs/xpromo/TrackingEventType;->EVT_ERROR:Lcom/ea/rs/xpromo/TrackingEventType;

    const-string v6, "URLCreation"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/ea/rs/xpromo/XPromoUtility;->logEvent(Lcom/ea/rs/xpromo/TrackingEventType;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static getComponent()Lcom/ea/rs/xpromo/XPromo;
    .locals 1

    .prologue
    .line 64
    const-string v0, "com.ea.rs.xpromo"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/rs/xpromo/XPromo;

    return-object v0
.end method

.method private static initialize()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/ea/rs/xpromo/XPromo;

    invoke-direct {v0}, Lcom/ea/rs/xpromo/XPromo;-><init>()V

    const-string v1, "com.ea.rs.xpromo"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private restoreFromPersistence()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    const-string v2, "Restoring data from persistent."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    const-string v2, "com.ea.rs.xpromo"

    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v2, v3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    .line 124
    .local v1, "xPromoPersistence":Lcom/ea/nimble/Persistence;
    if-eqz v1, :cond_1

    .line 126
    iget-object v2, p0, Lcom/ea/rs/xpromo/XPromo;->m_containerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 127
    .local v0, "persistenceValue":Ljava/io/Serializable;
    if-eqz v0, :cond_0

    .line 129
    check-cast v0, Lcom/ea/rs/xpromo/Container;

    .end local v0    # "persistenceValue":Ljava/io/Serializable;
    iput-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    .line 130
    const-string v2, "Restored data from persistent"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    const-string v2, "com.ea.notification.xpromo.items.refreshed"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 143
    :goto_0
    return-void

    .line 136
    .restart local v0    # "persistenceValue":Ljava/io/Serializable;
    :cond_0
    const-string v2, "No persistence data available to restore."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    .end local v0    # "persistenceValue":Ljava/io/Serializable;
    :cond_1
    const-string v2, "Could not get persistence object to restore from."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iput-object v1, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    .line 112
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    iput-object v1, p0, Lcom/ea/rs/xpromo/XPromo;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    :cond_0
    return-void
.end method

.method public forceRefresh()V
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    .line 229
    sget-object v0, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    iget-object v1, p0, Lcom/ea/rs/xpromo/XPromo;->m_containerID:Ljava/lang/String;

    iget-object v2, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    invoke-static {v0, v1, v2}, Lcom/ea/rs/xpromo/XPromoUtility;->saveToPersistence(Lcom/ea/nimble/Persistence$Storage;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 230
    invoke-direct {p0}, Lcom/ea/rs/xpromo/XPromo;->checkAndUpdate()V

    .line 231
    return-void
.end method

.method public getButtonItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/rs/xpromo/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    invoke-virtual {v0}, Lcom/ea/rs/xpromo/Container;->getButtonItems()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonRefreshInterval()J
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    invoke-virtual {v0}, Lcom/ea/rs/xpromo/Container;->getButtonRefreshInterval()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "com.ea.rs.xpromo"

    return-object v0
.end method

.method public getDiscoveryItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/rs/xpromo/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    invoke-virtual {v0}, Lcom/ea/rs/xpromo/Container;->getDiscoveryItems()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDiscoveryRefreshInterval()J
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    invoke-virtual {v0}, Lcom/ea/rs/xpromo/Container;->getDiscoveryRefreshInterval()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "XPromo"

    return-object v0
.end method

.method public isDataAvailable()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected restore()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/ea/rs/xpromo/XPromo;->restoreFromPersistence()V

    .line 86
    invoke-static {}, Lcom/ea/rs/xpromo/XPromoUtility;->checkAndLogInstalls()V

    .line 87
    invoke-direct {p0}, Lcom/ea/rs/xpromo/XPromo;->checkAndUpdate()V

    .line 88
    return-void
.end method

.method protected resume()V
    .locals 0

    .prologue
    .line 93
    invoke-static {}, Lcom/ea/rs/xpromo/XPromoUtility;->checkAndLogInstalls()V

    .line 94
    invoke-direct {p0}, Lcom/ea/rs/xpromo/XPromo;->checkAndUpdate()V

    .line 95
    return-void
.end method

.method protected setup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    const-string v0, "VERSION %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "1.0.0.0813"

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "container_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_containerID:Ljava/lang/String;

    .line 78
    iput-object v4, p0, Lcom/ea/rs/xpromo/XPromo;->m_container:Lcom/ea/rs/xpromo/Container;

    .line 79
    iput-object v4, p0, Lcom/ea/rs/xpromo/XPromo;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    return-void
.end method

.method protected suspend()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/rs/xpromo/XPromo;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    :cond_0
    return-void
.end method

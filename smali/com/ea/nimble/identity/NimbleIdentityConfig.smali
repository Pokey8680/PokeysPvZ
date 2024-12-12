.class Lcom/ea/nimble/identity/NimbleIdentityConfig;
.super Ljava/lang/Object;
.source "NimbleIdentityConfig.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# static fields
.field private static final DEFAULT_DATA_EXPIRY_INTERVAL:D = 3600.0

.field private static final META_DATA_TAG_CLIENT_ID:Ljava/lang/String; = "com.ea.nimble.identity.client_id"

.field private static final META_DATA_TAG_CLIENT_SECRET:Ljava/lang/String; = "com.ea.nimble.identity.client_secret"

.field static final NOTIFICATION_IDENTITY_CONFIGURATION_CHANGE:Ljava/lang/String; = "nimble.notification.identity.configuration.change"


# instance fields
.field private m_autoRefresh:Z

.field private m_clientId:Ljava/lang/String;

.field private m_clientSecret:Ljava/lang/String;

.field private m_connectServerUrl:Ljava/lang/String;

.field private m_expiryInterval:D

.field private m_portalServerUrl:Ljava/lang/String;

.field private m_proxyServerUrl:Ljava/lang/String;

.field private m_ready:Z

.field private m_receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide v0, 0x40ac200000000000L    # 3600.0

    iput-wide v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_expiryInterval:D

    .line 51
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityConfig$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/identity/NimbleIdentityConfig$1;-><init>(Lcom/ea/nimble/identity/NimbleIdentityConfig;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/identity/NimbleIdentityConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/NimbleIdentityConfig;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->onUpdate()V

    return-void
.end method

.method private onUpdate()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 137
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v9

    const-string v10, "nexus.connect"

    invoke-interface {v9, v10}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "connectServerUrl":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v9

    const-string v10, "nexus.proxy"

    invoke-interface {v9, v10}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "proxyServerUrl":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v9

    const-string v10, "nexus.portal"

    invoke-interface {v9, v10}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "portalServerUrl":Ljava/lang/String;
    invoke-static {v4}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 142
    invoke-static {v8}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 143
    invoke-static {v7}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 145
    :cond_0
    const-string v9, "Synergy environment update without valid server urls"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    const-string v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 150
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 152
    :cond_3
    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 154
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 156
    :cond_4
    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 158
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 162
    :cond_5
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v9

    invoke-interface {v9}, Lcom/ea/nimble/ISynergyEnvironment;->getNexusClientId()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "clientId":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 169
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_7

    .line 172
    :cond_6
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 173
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 175
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "com.ea.nimble.identity.client_id"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "config":Ljava/lang/String;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-lez v9, :cond_7

    .line 179
    move-object v1, v3

    .line 189
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "config":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    :goto_1
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v9

    invoke-interface {v9}, Lcom/ea/nimble/ISynergyEnvironment;->getNexusClientSecret()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "clientSecret":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 196
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_9

    .line 200
    :cond_8
    :try_start_1
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 201
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 203
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "com.ea.nimble.identity.client_secret"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .restart local v3    # "config":Ljava/lang/String;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-lez v9, :cond_9

    .line 207
    move-object v2, v3

    .line 216
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "config":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_9
    :goto_2
    iget-object v9, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_connectServerUrl:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_proxyServerUrl:Ljava/lang/String;

    .line 217
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_portalServerUrl:Ljava/lang/String;

    .line 218
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_clientId:Ljava/lang/String;

    .line 219
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_clientSecret:Ljava/lang/String;

    .line 220
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 226
    :cond_a
    iput-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_connectServerUrl:Ljava/lang/String;

    .line 227
    iput-object v8, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_proxyServerUrl:Ljava/lang/String;

    .line 228
    iput-object v7, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_portalServerUrl:Ljava/lang/String;

    .line 229
    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_clientId:Ljava/lang/String;

    .line 230
    iput-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_clientSecret:Ljava/lang/String;

    .line 232
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_ready:Z

    .line 234
    const-string v9, "nimble.notification.identity.configuration.change"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 182
    .end local v2    # "clientSecret":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 184
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 210
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "clientSecret":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 212
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public getAutoRefresh()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_autoRefresh:Z

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_connectServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryInterval()D
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_expiryInterval:D

    return-wide v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "Identity"

    return-object v0
.end method

.method public getPortalServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_portalServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_proxyServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iput-boolean v2, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_ready:Z

    .line 119
    iput-boolean v2, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_autoRefresh:Z

    .line 121
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->onUpdate()V

    .line 126
    :cond_0
    const-string v0, "nimble.environment.notification.startup_environment_data_changed"

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_receiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 127
    const-string v0, "Configuration initiailized"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_ready:Z

    return v0
.end method

.method public setAutoRefresh(Z)V
    .locals 0
    .param p1, "autoRefresh"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_autoRefresh:Z

    .line 78
    return-void
.end method

.method uninitialize()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_receiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    return-void
.end method

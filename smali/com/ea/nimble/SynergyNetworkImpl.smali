.class public Lcom/ea/nimble/SynergyNetworkImpl;
.super Lcom/ea/nimble/Component;
.source "SynergyNetworkImpl.java"

# interfaces
.implements Lcom/ea/nimble/ISynergyNetwork;


# instance fields
.field private m_pendingRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/SynergyNetworkConnection;",
            ">;"
        }
    .end annotation
.end field

.field private m_sessionId:Ljava/lang/String;

.field private m_synergyEnvironmentNotifyReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_pendingRequests:Ljava/util/ArrayList;

    .line 21
    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_synergyEnvironmentNotifyReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/SynergyNetworkImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyNetworkImpl;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_pendingRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method private generateSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getComponent()Lcom/ea/nimble/ISynergyNetwork;
    .locals 1

    .prologue
    .line 33
    const-string v0, "com.ea.nimble.synergynetwork"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/ISynergyNetwork;

    return-object v0
.end method

.method private sendSynergyRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .locals 1
    .param p1, "request"    # Lcom/ea/nimble/SynergyRequest;
    .param p2, "callback"    # Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    .prologue
    .line 178
    new-instance v0, Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-direct {v0, p1, p2}, Lcom/ea/nimble/SynergyNetworkConnection;-><init>(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    .line 179
    .local v0, "connection":Lcom/ea/nimble/SynergyNetworkConnection;
    invoke-virtual {v0}, Lcom/ea/nimble/SynergyNetworkConnection;->start()V

    .line 180
    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_synergyEnvironmentNotifyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_synergyEnvironmentNotifyReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_synergyEnvironmentNotifyReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_pendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "com.ea.nimble.synergynetwork"

    return-object v0
.end method

.method getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/ea/nimble/SynergyNetworkImpl$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/SynergyNetworkImpl$1;-><init>(Lcom/ea/nimble/SynergyNetworkImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_synergyEnvironmentNotifyReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    const-string v0, "nimble.environment.notification.startup_requests_finished"

    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_synergyEnvironmentNotifyReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 78
    :cond_0
    return-void
.end method

.method protected resume()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/ea/nimble/SynergyNetworkImpl;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_sessionId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public sendGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .locals 3
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "api"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/SynergyNetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/SynergyNetworkConnectionHandle;"
        }
    .end annotation

    .prologue
    .line 103
    .local p3, "urlParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/ea/nimble/SynergyRequest;

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    .line 104
    .local v0, "request":Lcom/ea/nimble/SynergyRequest;
    iput-object p1, v0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    .line 105
    iput-object p3, v0, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    .line 106
    invoke-direct {p0, v0, p4}, Lcom/ea/nimble/SynergyNetworkImpl;->sendSynergyRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object v1

    return-object v1
.end method

.method public sendPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .locals 3
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "api"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ea/nimble/SynergyNetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/SynergyNetworkConnectionHandle;"
        }
    .end annotation

    .prologue
    .line 114
    .local p3, "urlParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "jsonPostData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/ea/nimble/SynergyRequest;

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    .line 115
    .local v0, "request":Lcom/ea/nimble/SynergyRequest;
    iput-object p1, v0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    .line 116
    iput-object p3, v0, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    .line 117
    iput-object p4, v0, Lcom/ea/nimble/SynergyRequest;->jsonData:Ljava/util/Map;

    .line 118
    invoke-direct {p0, v0, p5}, Lcom/ea/nimble/SynergyNetworkImpl;->sendSynergyRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object v1

    return-object v1
.end method

.method public sendPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;Ljava/util/Map;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .locals 3
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "api"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ea/nimble/SynergyNetworkConnectionCallback;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ea/nimble/SynergyNetworkConnectionHandle;"
        }
    .end annotation

    .prologue
    .line 126
    .local p3, "urlParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "jsonPostData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p6, "headerParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/ea/nimble/SynergyRequest;

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    .line 127
    .local v0, "request":Lcom/ea/nimble/SynergyRequest;
    iput-object p1, v0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    .line 128
    iput-object p3, v0, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    .line 129
    iput-object p4, v0, Lcom/ea/nimble/SynergyRequest;->jsonData:Ljava/util/Map;

    .line 130
    if-eqz p6, :cond_0

    .line 132
    iget-object v1, v0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object v1, v1, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v1, p6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 134
    :cond_0
    invoke-direct {p0, v0, p5}, Lcom/ea/nimble/SynergyNetworkImpl;->sendSynergyRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object v1

    return-object v1
.end method

.method public sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
    .locals 4
    .param p1, "request"    # Lcom/ea/nimble/SynergyRequest;
    .param p2, "callback"    # Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    .prologue
    .line 140
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v2

    .line 141
    .local v2, "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    invoke-interface {v2}, Lcom/ea/nimble/ISynergyEnvironment;->isDataAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/SynergyNetworkImpl;->sendSynergyRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 171
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-direct {v0, p1, p2}, Lcom/ea/nimble/SynergyNetworkConnection;-><init>(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    .line 148
    .local v0, "connection":Lcom/ea/nimble/SynergyNetworkConnection;
    invoke-interface {v2}, Lcom/ea/nimble/ISynergyEnvironment;->isUpdateInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_pendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_1
    invoke-interface {v2}, Lcom/ea/nimble/ISynergyEnvironment;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    move-result-object v1

    .line 156
    .local v1, "error":Lcom/ea/nimble/Error;
    if-nez v1, :cond_2

    .line 160
    iget-object v3, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_pendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {v0, v1}, Lcom/ea/nimble/SynergyNetworkConnection;->errorPriorToSend(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setup()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_pendingRequests:Ljava/util/ArrayList;

    .line 45
    invoke-direct {p0}, Lcom/ea/nimble/SynergyNetworkImpl;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_sessionId:Ljava/lang/String;

    .line 46
    return-void
.end method

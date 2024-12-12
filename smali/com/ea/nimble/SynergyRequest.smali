.class public Lcom/ea/nimble/SynergyRequest;
.super Ljava/lang/Object;
.source "SynergyRequest.java"

# interfaces
.implements Lcom/ea/nimble/ISynergyRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;
    }
.end annotation


# instance fields
.field public api:Ljava/lang/String;

.field public baseUrl:Ljava/lang/String;

.field public httpRequest:Lcom/ea/nimble/HttpRequest;

.field public jsonData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_connection:Lcom/ea/nimble/SynergyNetworkConnection;

.field public prepareRequestCallback:Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;

.field public urlParameters:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V
    .locals 3
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "method"    # Lcom/ea/nimble/IHttpRequest$Method;
    .param p3, "callback"    # Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/ea/nimble/SynergyRequest;->api:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v0}, Lcom/ea/nimble/HttpRequest;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    .line 36
    iput-object p3, p0, Lcom/ea/nimble/SynergyRequest;->prepareRequestCallback:Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;

    .line 37
    iput-object v1, p0, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    .line 38
    iput-object v1, p0, Lcom/ea/nimble/SynergyRequest;->jsonData:Ljava/util/Map;

    .line 39
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iput-object p2, v0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 40
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string v1, "SDK-VERSION"

    const-string v2, "1.23.8.1124"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string v1, "SDK-TYPE"

    const-string v2, "Nimble"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string v1, "EAM-USER-ID"

    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string v1, "EA-SELL-ID"

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object v1, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string v2, "EAM-SESSION"

    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/SynergyNetworkImpl;

    invoke-virtual {v0}, Lcom/ea/nimble/SynergyNetworkImpl;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method build()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/Error;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v6, p0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    invoke-static {v6}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ea/nimble/SynergyRequest;->api:Ljava/lang/String;

    .line 104
    invoke-static {v6}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 106
    :cond_0
    new-instance v6, Lcom/ea/nimble/Error;

    sget-object v7, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v8, "Invalid synergy request parameter (%s, %s) to build http request url"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/ea/nimble/SynergyRequest;->api:Ljava/lang/String;

    aput-object v11, v9, v10

    .line 107
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    throw v6

    .line 109
    :cond_1
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    .line 110
    .local v0, "appEnv":Lcom/ea/nimble/IApplicationEnvironment;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v5, "urlParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "appVer"

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v6, "appLang"

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getShortApplicationLanguageCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v6, "localization"

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationLanguageCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v6, "deviceLanguage"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v6, "deviceLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v4

    .line 118
    .local v4, "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    invoke-interface {v4}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "hardwareId":Ljava/lang/String;
    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    const-string v6, "hwId"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_2
    iget-object v6, p0, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 126
    iget-object v6, p0, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 129
    :cond_3
    iget-object v6, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ea/nimble/SynergyRequest;->api:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/ea/nimble/Network;->generateURL(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v7

    iput-object v7, v6, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    .line 131
    iget-object v6, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object v6, v6, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    sget-object v7, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object v6, v6, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    sget-object v7, Lcom/ea/nimble/IHttpRequest$Method;->PUT:Lcom/ea/nimble/IHttpRequest$Method;

    if-ne v6, v7, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/ea/nimble/SynergyRequest;->jsonData:Ljava/util/Map;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/ea/nimble/SynergyRequest;->jsonData:Ljava/util/Map;

    .line 132
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 134
    iget-object v6, p0, Lcom/ea/nimble/SynergyRequest;->jsonData:Ljava/util/Map;

    invoke-static {v6}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "postBodyString":Ljava/lang/String;
    iget-object v6, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v7, v6, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    .line 138
    :try_start_0
    iget-object v6, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object v6, v6, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v3    # "postBodyString":Ljava/lang/String;
    :cond_5
    return-void

    .line 140
    .restart local v3    # "postBodyString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Lcom/ea/nimble/Error;

    sget-object v7, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v8, "Error converting jsonData in SynergyRequest to a data stream"

    invoke-direct {v6, v7, v8, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpRequest()Lcom/ea/nimble/HttpRequest;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    return-object v0
.end method

.method public bridge synthetic getHttpRequest()Lcom/ea/nimble/IHttpRequest;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyRequest;->getHttpRequest()Lcom/ea/nimble/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public getJsonData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->jsonData:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod()Lcom/ea/nimble/IHttpRequest$Method;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    invoke-virtual {v0}, Lcom/ea/nimble/HttpRequest;->getMethod()Lcom/ea/nimble/IHttpRequest$Method;

    move-result-object v0

    return-object v0
.end method

.method public getUrlParameters()Ljava/util/Map;
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
    .line 75
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    return-object v0
.end method

.method prepare(Lcom/ea/nimble/SynergyNetworkConnection;)V
    .locals 1
    .param p1, "connection"    # Lcom/ea/nimble/SynergyNetworkConnection;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ea/nimble/SynergyRequest;->m_connection:Lcom/ea/nimble/SynergyNetworkConnection;

    .line 91
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->prepareRequestCallback:Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->prepareRequestCallback:Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;

    invoke-interface {v0, p0}, Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;->prepareRequest(Lcom/ea/nimble/SynergyRequest;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyRequest;->send()V

    goto :goto_0
.end method

.method public send()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->m_connection:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-virtual {v0}, Lcom/ea/nimble/SynergyNetworkConnection;->send()V

    .line 86
    return-void
.end method

.method public setMethod(Lcom/ea/nimble/IHttpRequest$Method;)V
    .locals 1
    .param p1, "method"    # Lcom/ea/nimble/IHttpRequest$Method;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iput-object p1, v0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 71
    return-void
.end method

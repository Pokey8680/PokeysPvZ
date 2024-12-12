.class public Lorg/restlet/ext/httpclient/HttpClientHelper;
.super Lorg/restlet/engine/adapter/HttpClientHelper;
.source "HttpClientHelper.java"


# instance fields
.field private volatile httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private volatile idleConnectionReaper:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;


# direct methods
.method public constructor <init>(Lorg/restlet/Client;)V
    .locals 2
    .param p1, "client"    # Lorg/restlet/Client;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lorg/restlet/engine/adapter/HttpClientHelper;-><init>(Lorg/restlet/Client;)V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/ext/httpclient/HttpClientHelper;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 199
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getProtocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Protocol;->HTTP:Lorg/restlet/data/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getProtocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Protocol;->HTTPS:Lorg/restlet/data/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method


# virtual methods
.method protected configure(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 4
    .param p1, "schemeRegistry"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 265
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v1, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 268
    return-void
.end method

.method protected configure(Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 6
    .param p1, "httpClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getRetryHandler()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getRetryHandler()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/restlet/engine/Engine;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 214
    .local v2, "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    iget-object v3, p0, Lorg/restlet/ext/httpclient/HttpClientHelper;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v2    # "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/http/cookie/CookieSpecRegistry;

    invoke-direct {v0}, Lorg/apache/http/cookie/CookieSpecRegistry;-><init>()V

    .line 224
    .local v0, "csr":Lorg/apache/http/cookie/CookieSpecRegistry;
    const-string v3, "ignore"

    new-instance v4, Lorg/restlet/ext/httpclient/internal/IgnoreCookieSpecFactory;

    invoke-direct {v4}, Lorg/restlet/ext/httpclient/internal/IgnoreCookieSpecFactory;-><init>()V

    invoke-virtual {v0, v3, v4}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 225
    iget-object v3, p0, Lorg/restlet/ext/httpclient/HttpClientHelper;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieSpecs(Lorg/apache/http/cookie/CookieSpecRegistry;)V

    .line 226
    return-void

    .line 215
    .end local v0    # "csr":Lorg/apache/http/cookie/CookieSpecRegistry;
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "An error occurred during the instantiation of the retry handler."

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected configure(Lorg/apache/http/params/HttpParams;)V
    .locals 4
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getMaxTotalConnections()I

    move-result v2

    invoke-static {p1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 238
    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getMaxConnectionsPerHost()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {p1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 242
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setAuthenticating(Lorg/apache/http/params/HttpParams;Z)V

    .line 243
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->isFollowRedirects()Z

    move-result v2

    invoke-static {p1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 244
    const-string v2, "ignore"

    invoke-static {p1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getTcpNoDelay()Z

    move-result v2

    invoke-static {p1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 246
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getSocketConnectTimeoutMs()I

    move-result v2

    invoke-static {p1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 248
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getSocketTimeout()I

    move-result v2

    invoke-static {p1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 250
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "httpProxyHost":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 252
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getProxyPort()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 253
    .local v1, "proxy":Lorg/apache/http/HttpHost;
    const-string v2, "http.route.default-proxy"

    invoke-interface {p1, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 255
    .end local v1    # "proxy":Lorg/apache/http/HttpHost;
    :cond_0
    return-void
.end method

.method public create(Lorg/restlet/Request;)Lorg/restlet/engine/adapter/ClientCall;
    .locals 6
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 282
    .local v1, "result":Lorg/restlet/engine/adapter/ClientCall;
    :try_start_0
    new-instance v2, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;

    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/data/Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/restlet/engine/util/ReferenceUtils;->update(Lorg/restlet/data/Reference;Lorg/restlet/Request;)Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/restlet/Request;->isEntityAvailable()Z

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;-><init>(Lorg/restlet/ext/httpclient/HttpClientHelper;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "result":Lorg/restlet/engine/adapter/ClientCall;
    .local v2, "result":Lorg/restlet/engine/adapter/ClientCall;
    move-object v1, v2

    .line 290
    .end local v2    # "result":Lorg/restlet/engine/adapter/ClientCall;
    .restart local v1    # "result":Lorg/restlet/engine/adapter/ClientCall;
    :goto_0
    return-object v1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unable to create the HTTP client call"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected createClientConnectionManager(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "schemeRegistry"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 305
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/restlet/ext/httpclient/HttpClientHelper;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getIdleCheckInterval()J
    .locals 3

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "idleCheckInterval"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIdleTimeout()J
    .locals 3

    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "idleTimeout"

    const-string v2, "10000"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxConnectionsPerHost()I
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "maxConnectionsPerHost"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxTotalConnections()I
    .locals 3

    .prologue
    .line 361
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "maxTotalConnections"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 371
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "proxyHost"

    const-string v2, "http.proxyHost"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyPort()I
    .locals 4

    .prologue
    .line 381
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "proxyPort"

    const-string v2, "http.proxyPort"

    const-string v3, "3128"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRetryHandler()Ljava/lang/String;
    .locals 3

    .prologue
    .line 394
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "retryHandler"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 3

    .prologue
    .line 404
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "socketTimeout"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStopIdleTimeout()I
    .locals 3

    .prologue
    .line 416
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "stopIdleTimeout"

    const-string v2, "1000"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 3

    .prologue
    .line 427
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "tcpNoDelay"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFollowRedirects()Z
    .locals 3

    .prologue
    .line 437
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "followRedirects"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setIdleConnectionReaper(Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;)V
    .locals 0
    .param p1, "connectionReaper"    # Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    .prologue
    .line 449
    iput-object p1, p0, Lorg/restlet/ext/httpclient/HttpClientHelper;->idleConnectionReaper:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    .line 450
    return-void
.end method

.method public start()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 454
    invoke-super {p0}, Lorg/restlet/engine/adapter/HttpClientHelper;->start()V

    .line 457
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 458
    .local v7, "params":Lorg/apache/http/params/HttpParams;
    invoke-virtual {p0, v7}, Lorg/restlet/ext/httpclient/HttpClientHelper;->configure(Lorg/apache/http/params/HttpParams;)V

    .line 461
    new-instance v8, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 462
    .local v8, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-virtual {p0, v8}, Lorg/restlet/ext/httpclient/HttpClientHelper;->configure(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 465
    invoke-virtual {p0, v7, v8}, Lorg/restlet/ext/httpclient/HttpClientHelper;->createClientConnectionManager(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    .line 469
    .local v6, "connectionManager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lorg/restlet/ext/httpclient/HttpClientHelper;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 470
    iget-object v0, p0, Lorg/restlet/ext/httpclient/HttpClientHelper;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p0, v0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->configure(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 472
    iget-object v0, p0, Lorg/restlet/ext/httpclient/HttpClientHelper;->idleConnectionReaper:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lorg/restlet/ext/httpclient/HttpClientHelper;->idleConnectionReaper:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    invoke-virtual {v0}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->stop()V

    .line 477
    :cond_0
    new-instance v0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    iget-object v1, p0, Lorg/restlet/ext/httpclient/HttpClientHelper;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getIdleCheckInterval()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getIdleTimeout()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;-><init>(Lorg/apache/http/client/HttpClient;JJ)V

    iput-object v0, p0, Lorg/restlet/ext/httpclient/HttpClientHelper;->idleConnectionReaper:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    .line 480
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Starting the Apache HTTP client"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lorg/restlet/ext/httpclient/HttpClientHelper;->idleConnectionReaper:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lorg/restlet/ext/httpclient/HttpClientHelper;->idleConnectionReaper:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    invoke-virtual {v0}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->stop()V

    .line 488
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 490
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getStopIdleTimeout()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 492
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 493
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Stopping the HTTP client"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 495
    :cond_1
    return-void
.end method

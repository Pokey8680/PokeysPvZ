.class final Lorg/codegist/crest/io/http/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field private static final HTTPS_PORT:I = 0x1bb

.field static final HTTP_CLIENT:Ljava/lang/String; = "#user-http-client"

.field private static final HTTP_PORT:I = 0x50


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static create(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;)Lorg/apache/http/client/HttpClient;
    .locals 10
    .param p0, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/http/client/HttpClient;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "source":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#user-http-client"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/HttpClient;

    .line 57
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 78
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .local v3, "httpClient":Lorg/apache/http/client/HttpClient;
    :goto_0
    return-object v3

    .line 61
    .end local v3    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_0
    invoke-interface {p0}, Lorg/codegist/crest/CRestConfig;->getConcurrencyLevel()I

    move-result v1

    .line 62
    .local v1, "concurrencyLevel":I
    const/4 v6, 0x1

    if-le v1, v6, :cond_1

    .line 63
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 64
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v4, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 65
    new-instance v6, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v6, v1}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v4, v6}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 66
    invoke-static {v4, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 68
    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 69
    .local v5, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 70
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v8

    const/16 v9, 0x1bb

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 72
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v4, v5}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 73
    .local v0, "cm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-direct {v2, v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .end local v0    # "cm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v4    # "params":Lorg/apache/http/params/HttpParams;
    .end local v5    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .restart local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    :goto_1
    move-object v6, v2

    .line 77
    check-cast v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v7, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v8

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)V

    move-object v3, v2

    .line 78
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpClient":Lorg/apache/http/client/HttpClient;
    goto :goto_0

    .line 75
    .end local v3    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_1
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    goto :goto_1
.end method

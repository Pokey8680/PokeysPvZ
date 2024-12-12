.class public Lorg/restlet/engine/adapter/HttpResponse;
.super Lorg/restlet/Response;
.source "HttpResponse.java"


# instance fields
.field private volatile httpCall:Lorg/restlet/engine/adapter/ServerCall;

.field private volatile serverAdded:Z


# direct methods
.method public constructor <init>(Lorg/restlet/engine/adapter/ServerCall;Lorg/restlet/Request;)V
    .locals 1
    .param p1, "httpCall"    # Lorg/restlet/engine/adapter/ServerCall;
    .param p2, "request"    # Lorg/restlet/Request;

    .prologue
    .line 83
    invoke-direct {p0, p2}, Lorg/restlet/Response;-><init>(Lorg/restlet/Request;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/engine/adapter/HttpResponse;->serverAdded:Z

    .line 85
    iput-object p1, p0, Lorg/restlet/engine/adapter/HttpResponse;->httpCall:Lorg/restlet/engine/adapter/ServerCall;

    .line 88
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/adapter/HttpResponse;->setStatus(Lorg/restlet/data/Status;)V

    .line 89
    return-void
.end method

.method public static addHeader(Lorg/restlet/Response;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "response"    # Lorg/restlet/Response;
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 63
    instance-of v0, p0, Lorg/restlet/engine/adapter/HttpResponse;

    if-eqz v0, :cond_0

    .line 64
    check-cast p0, Lorg/restlet/engine/adapter/HttpResponse;

    .end local p0    # "response":Lorg/restlet/Response;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpResponse;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/util/Series;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public getHeaders()Lorg/restlet/util/Series;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpResponse;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    const-string v1, "org.restlet.http.headers"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/util/Series;

    return-object v0
.end method

.method public getHttpCall()Lorg/restlet/engine/adapter/ServerCall;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/restlet/engine/adapter/HttpResponse;->httpCall:Lorg/restlet/engine/adapter/ServerCall;

    return-object v0
.end method

.method public getServerInfo()Lorg/restlet/data/ServerInfo;
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v0

    .line 120
    .local v0, "result":Lorg/restlet/data/ServerInfo;
    iget-boolean v1, p0, Lorg/restlet/engine/adapter/HttpResponse;->serverAdded:Z

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lorg/restlet/engine/adapter/HttpResponse;->httpCall:Lorg/restlet/engine/adapter/ServerCall;

    invoke-virtual {v1}, Lorg/restlet/engine/adapter/ServerCall;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/ServerInfo;->setAddress(Ljava/lang/String;)V

    .line 122
    const-string v1, "Restlet-Framework/2.1.6"

    invoke-virtual {v0, v1}, Lorg/restlet/data/ServerInfo;->setAgent(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lorg/restlet/engine/adapter/HttpResponse;->httpCall:Lorg/restlet/engine/adapter/ServerCall;

    invoke-virtual {v1}, Lorg/restlet/engine/adapter/ServerCall;->getServerPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/ServerInfo;->setPort(I)V

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/restlet/engine/adapter/HttpResponse;->serverAdded:Z

    .line 127
    :cond_0
    return-object v0
.end method

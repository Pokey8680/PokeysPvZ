.class public abstract Lorg/restlet/engine/adapter/Call;
.super Ljava/lang/Object;
.source "Call.java"


# instance fields
.field private volatile clientAddress:Ljava/lang/String;

.field private volatile clientPort:I

.field private volatile confidential:Z

.field private volatile hostDomain:Ljava/lang/String;

.field private volatile hostPort:I

.field private volatile method:Ljava/lang/String;

.field private volatile protocol:Lorg/restlet/data/Protocol;

.field private volatile reasonPhrase:Ljava/lang/String;

.field private final requestHeaders:Lorg/restlet/util/Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;"
        }
    .end annotation
.end field

.field private volatile requestUri:Ljava/lang/String;

.field private final responseHeaders:Lorg/restlet/util/Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;"
        }
    .end annotation
.end field

.field private volatile serverAddress:Ljava/lang/String;

.field private volatile serverPort:I

.field private volatile statusCode:I

.field private volatile userPrincipal:Ljava/security/Principal;

.field private volatile version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object v2, p0, Lorg/restlet/engine/adapter/Call;->hostDomain:Ljava/lang/String;

    .line 129
    iput v3, p0, Lorg/restlet/engine/adapter/Call;->hostPort:I

    .line 130
    iput-object v2, p0, Lorg/restlet/engine/adapter/Call;->clientAddress:Ljava/lang/String;

    .line 131
    iput v3, p0, Lorg/restlet/engine/adapter/Call;->clientPort:I

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/engine/adapter/Call;->confidential:Z

    .line 133
    iput-object v2, p0, Lorg/restlet/engine/adapter/Call;->method:Ljava/lang/String;

    .line 134
    iput-object v2, p0, Lorg/restlet/engine/adapter/Call;->protocol:Lorg/restlet/data/Protocol;

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lorg/restlet/engine/adapter/Call;->reasonPhrase:Ljava/lang/String;

    .line 136
    new-instance v0, Lorg/restlet/util/Series;

    const-class v1, Lorg/restlet/engine/header/Header;

    invoke-direct {v0, v1}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/restlet/engine/adapter/Call;->requestHeaders:Lorg/restlet/util/Series;

    .line 137
    iput-object v2, p0, Lorg/restlet/engine/adapter/Call;->requestUri:Ljava/lang/String;

    .line 138
    new-instance v0, Lorg/restlet/util/Series;

    const-class v1, Lorg/restlet/engine/header/Header;

    invoke-direct {v0, v1}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/restlet/engine/adapter/Call;->responseHeaders:Lorg/restlet/util/Series;

    .line 139
    iput-object v2, p0, Lorg/restlet/engine/adapter/Call;->serverAddress:Ljava/lang/String;

    .line 140
    iput v3, p0, Lorg/restlet/engine/adapter/Call;->serverPort:I

    .line 141
    const/16 v0, 0xc8

    iput v0, p0, Lorg/restlet/engine/adapter/Call;->statusCode:I

    .line 142
    iput-object v2, p0, Lorg/restlet/engine/adapter/Call;->userPrincipal:Ljava/security/Principal;

    .line 143
    iput-object v2, p0, Lorg/restlet/engine/adapter/Call;->version:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public static isBroken(Ljava/lang/Throwable;)Z
    .locals 3
    .param p0, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "result":Z
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Broken pipe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "An existing connection must have been closed by the remote party."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "An open connection has been abandonned by your network stack."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 73
    :cond_1
    :goto_0
    return v0

    .line 65
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getClientAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/restlet/engine/adapter/Call;->clientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getClientPort()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lorg/restlet/engine/adapter/Call;->clientPort:I

    return v0
.end method

.method public getHostDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/restlet/engine/adapter/Call;->hostDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPort()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lorg/restlet/engine/adapter/Call;->hostPort:I

    return v0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/restlet/engine/adapter/Call;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Lorg/restlet/data/Protocol;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/restlet/engine/adapter/Call;->protocol:Lorg/restlet/data/Protocol;

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/Call;->isConfidential()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/restlet/data/Protocol;->HTTPS:Lorg/restlet/data/Protocol;

    :goto_0
    iput-object v0, p0, Lorg/restlet/engine/adapter/Call;->protocol:Lorg/restlet/data/Protocol;

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/restlet/engine/adapter/Call;->protocol:Lorg/restlet/data/Protocol;

    return-object v0

    .line 209
    :cond_1
    sget-object v0, Lorg/restlet/data/Protocol;->HTTP:Lorg/restlet/data/Protocol;

    goto :goto_0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/restlet/engine/adapter/Call;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method protected getRepresentation(Ljava/io/InputStream;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 231
    new-instance v0, Lorg/restlet/representation/InputRepresentation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/restlet/representation/InputRepresentation;-><init>(Ljava/io/InputStream;Lorg/restlet/data/MediaType;)V

    return-object v0
.end method

.method protected getRepresentation(Ljava/nio/channels/ReadableByteChannel;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    .line 243
    new-instance v0, Lorg/restlet/representation/ReadableRepresentation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/restlet/representation/ReadableRepresentation;-><init>(Ljava/nio/channels/ReadableByteChannel;Lorg/restlet/data/MediaType;)V

    return-object v0
.end method

.method public getRequestHeaders()Lorg/restlet/util/Series;
    .locals 1
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
    .line 253
    iget-object v0, p0, Lorg/restlet/engine/adapter/Call;->requestHeaders:Lorg/restlet/util/Series;

    return-object v0
.end method

.method public getRequestUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/restlet/engine/adapter/Call;->requestUri:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Lorg/restlet/util/Series;
    .locals 1
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
    .line 272
    iget-object v0, p0, Lorg/restlet/engine/adapter/Call;->responseHeaders:Lorg/restlet/util/Series;

    return-object v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/restlet/engine/adapter/Call;->serverAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lorg/restlet/engine/adapter/Call;->serverPort:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    iget v0, p0, Lorg/restlet/engine/adapter/Call;->statusCode:I

    return v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/restlet/engine/adapter/Call;->userPrincipal:Ljava/security/Principal;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/restlet/engine/adapter/Call;->version:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract isClientKeepAlive()Z
.end method

.method public isConfidential()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lorg/restlet/engine/adapter/Call;->confidential:Z

    return v0
.end method

.method public isConnectionBroken(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 346
    invoke-static {p1}, Lorg/restlet/engine/adapter/Call;->isBroken(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method protected isKeepAlive()Z
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/Call;->isClientKeepAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/adapter/Call;->isServerKeepAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRequestChunked()Z
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/Call;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isChunkedEncoding(Lorg/restlet/util/Series;)Z

    move-result v0

    return v0
.end method

.method protected isResponseChunked()Z
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/Call;->getResponseHeaders()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isChunkedEncoding(Lorg/restlet/util/Series;)Z

    move-result v0

    return v0
.end method

.method protected abstract isServerKeepAlive()Z
.end method

.method protected setClientAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientAddress"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lorg/restlet/engine/adapter/Call;->clientAddress:Ljava/lang/String;

    .line 392
    return-void
.end method

.method protected setClientPort(I)V
    .locals 0
    .param p1, "clientPort"    # I

    .prologue
    .line 401
    iput p1, p0, Lorg/restlet/engine/adapter/Call;->clientPort:I

    .line 402
    return-void
.end method

.method protected setConfidential(Z)V
    .locals 0
    .param p1, "confidential"    # Z

    .prologue
    .line 412
    iput-boolean p1, p0, Lorg/restlet/engine/adapter/Call;->confidential:Z

    .line 413
    return-void
.end method

.method public setHostDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostDomain"    # Ljava/lang/String;

    .prologue
    .line 422
    iput-object p1, p0, Lorg/restlet/engine/adapter/Call;->hostDomain:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setHostPort(I)V
    .locals 0
    .param p1, "hostPort"    # I

    .prologue
    .line 432
    iput p1, p0, Lorg/restlet/engine/adapter/Call;->hostPort:I

    .line 433
    return-void
.end method

.method protected setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 442
    iput-object p1, p0, Lorg/restlet/engine/adapter/Call;->method:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setProtocol(Lorg/restlet/data/Protocol;)V
    .locals 0
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;

    .prologue
    .line 452
    iput-object p1, p0, Lorg/restlet/engine/adapter/Call;->protocol:Lorg/restlet/data/Protocol;

    .line 453
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 462
    iput-object p1, p0, Lorg/restlet/engine/adapter/Call;->reasonPhrase:Ljava/lang/String;

    .line 463
    return-void
.end method

.method protected setRequestUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "requestUri"    # Ljava/lang/String;

    .prologue
    .line 472
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    :cond_0
    const-string p1, "/"

    .line 476
    :cond_1
    iput-object p1, p0, Lorg/restlet/engine/adapter/Call;->requestUri:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseAddress"    # Ljava/lang/String;

    .prologue
    .line 487
    iput-object p1, p0, Lorg/restlet/engine/adapter/Call;->serverAddress:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public setServerPort(I)V
    .locals 0
    .param p1, "serverPort"    # I

    .prologue
    .line 497
    iput p1, p0, Lorg/restlet/engine/adapter/Call;->serverPort:I

    .line 498
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 507
    iput p1, p0, Lorg/restlet/engine/adapter/Call;->statusCode:I

    .line 508
    return-void
.end method

.method public setUserPrincipal(Ljava/security/Principal;)V
    .locals 0
    .param p1, "principal"    # Ljava/security/Principal;

    .prologue
    .line 517
    iput-object p1, p0, Lorg/restlet/engine/adapter/Call;->userPrincipal:Ljava/security/Principal;

    .line 518
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 527
    iput-object p1, p0, Lorg/restlet/engine/adapter/Call;->version:Ljava/lang/String;

    .line 528
    return-void
.end method

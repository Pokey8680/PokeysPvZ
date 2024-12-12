.class public Lorg/restlet/engine/connector/HttpInboundRequest;
.super Lorg/restlet/Request;
.source "HttpInboundRequest.java"

# interfaces
.implements Lorg/restlet/engine/connector/InboundRequest;


# instance fields
.field private volatile cacheDirectivesAdded:Z

.field private volatile clientAdded:Z

.field private volatile conditionAdded:Z

.field private final connection:Lorg/restlet/engine/connector/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/engine/connector/Connection",
            "<",
            "Lorg/restlet/Server;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Lorg/restlet/Context;

.field private volatile cookiesAdded:Z

.field private volatile protocol:Ljava/lang/String;

.field private volatile proxySecurityAdded:Z

.field private volatile rangesAdded:Z

.field private volatile recipientsInfoAdded:Z

.field private volatile referrerAdded:Z

.field private volatile resourceUri:Ljava/lang/String;

.field private volatile securityAdded:Z

.field private final userPrincipal:Ljava/security/Principal;

.field private volatile warningsAdded:Z


# direct methods
.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/engine/connector/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Lorg/restlet/Context;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "resourceUri"    # Ljava/lang/String;
    .param p5, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Context;",
            "Lorg/restlet/engine/connector/Connection",
            "<",
            "Lorg/restlet/Server;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Server;>;"
    const/4 v5, 0x0

    .line 157
    invoke-direct {p0}, Lorg/restlet/Request;-><init>()V

    .line 158
    iput-object p2, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->connection:Lorg/restlet/engine/connector/Connection;

    .line 159
    iput-object p1, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->context:Lorg/restlet/Context;

    .line 160
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->userPrincipal:Ljava/security/Principal;

    .line 161
    iput-boolean v5, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->cacheDirectivesAdded:Z

    .line 162
    iput-boolean v5, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->clientAdded:Z

    .line 163
    iput-boolean v5, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->conditionAdded:Z

    .line 164
    iput-boolean v5, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->cookiesAdded:Z

    .line 165
    iput-boolean v5, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->proxySecurityAdded:Z

    .line 166
    iput-boolean v5, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->rangesAdded:Z

    .line 167
    iput-boolean v5, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->recipientsInfoAdded:Z

    .line 168
    iput-boolean v5, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->referrerAdded:Z

    .line 169
    iput-object p4, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->resourceUri:Ljava/lang/String;

    .line 170
    iput-boolean v5, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->securityAdded:Z

    .line 171
    iput-boolean v5, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->warningsAdded:Z

    .line 174
    const/16 v4, 0x2f

    invoke-virtual {p5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 175
    .local v3, "versionSeparator":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v4

    check-cast v4, Lorg/restlet/Server;

    invoke-virtual {v4}, Lorg/restlet/Server;->getProtocols()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Protocol;

    .line 178
    .local v0, "connectorProtocol":Lorg/restlet/data/Protocol;
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 179
    invoke-virtual {p5, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/restlet/data/Protocol;->getTechnicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lorg/restlet/data/Protocol;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/HttpInboundRequest;->setProtocol(Lorg/restlet/data/Protocol;)V

    .line 191
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "version":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {p3}, Lorg/restlet/data/Method;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Method;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/HttpInboundRequest;->setMethod(Lorg/restlet/data/Method;)V

    .line 192
    return-void

    .line 186
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "version":Ljava/lang/String;
    :cond_1
    invoke-static {v1, v2}, Lorg/restlet/data/Protocol;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Protocol;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/HttpInboundRequest;->setProtocol(Lorg/restlet/data/Protocol;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/restlet/engine/connector/HttpInboundRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/engine/connector/HttpInboundRequest;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lorg/restlet/Request;-><init>(Lorg/restlet/Request;)V

    .line 202
    invoke-virtual {p1}, Lorg/restlet/engine/connector/HttpInboundRequest;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->connection:Lorg/restlet/engine/connector/Connection;

    .line 203
    iget-object v0, p1, Lorg/restlet/engine/connector/HttpInboundRequest;->context:Lorg/restlet/Context;

    iput-object v0, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->context:Lorg/restlet/Context;

    .line 204
    invoke-virtual {p1}, Lorg/restlet/engine/connector/HttpInboundRequest;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->userPrincipal:Ljava/security/Principal;

    .line 205
    return-void
.end method

.method public static addHeader(Lorg/restlet/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "request"    # Lorg/restlet/Request;
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 90
    instance-of v0, p0, Lorg/restlet/engine/connector/HttpInboundRequest;

    if-eqz v0, :cond_0

    .line 91
    check-cast p0, Lorg/restlet/engine/connector/InboundRequest;

    .end local p0    # "request":Lorg/restlet/Request;
    invoke-interface {p0}, Lorg/restlet/engine/connector/InboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/util/Series;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/restlet/engine/connector/Connection;->close(Z)V

    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized commit(Lorg/restlet/Response;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 215
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/restlet/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/engine/connector/Connection;->commit(Lorg/restlet/Response;)V

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/restlet/Response;->setCommitted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCacheDirectives()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/CacheDirective;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-super {p0}, Lorg/restlet/Request;->getCacheDirectives()Ljava/util/List;

    move-result-object v2

    .line 225
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CacheDirective;>;"
    iget-boolean v3, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->cacheDirectivesAdded:Z

    if-nez v3, :cond_1

    .line 226
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 227
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v3

    const-string v4, "Cache-Control"

    invoke-virtual {v3, v4}, Lorg/restlet/util/Series;->subList(Ljava/lang/String;)Lorg/restlet/util/Series;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/header/Header;

    .line 229
    .local v0, "header":Lorg/restlet/engine/header/Header;
    invoke-static {v0, v2}, Lorg/restlet/engine/header/CacheDirectiveReader;->addValues(Lorg/restlet/engine/header/Header;Ljava/util/Collection;)V

    goto :goto_0

    .line 233
    .end local v0    # "header":Lorg/restlet/engine/header/Header;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->cacheDirectivesAdded:Z

    .line 235
    :cond_1
    return-object v2
.end method

.method public getChallengeResponse()Lorg/restlet/data/ChallengeResponse;
    .locals 4

    .prologue
    .line 240
    invoke-super {p0}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v1

    .line 242
    .local v1, "result":Lorg/restlet/data/ChallengeResponse;
    iget-boolean v2, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->securityAdded:Z

    if-nez v2, :cond_1

    .line 243
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    const-string v3, "Authorization"

    invoke-virtual {v2, v3}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "authorization":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lorg/restlet/engine/security/AuthenticatorUtils;->parseResponse(Lorg/restlet/Request;Ljava/lang/String;Lorg/restlet/util/Series;)Lorg/restlet/data/ChallengeResponse;

    move-result-object v1

    .line 251
    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/HttpInboundRequest;->setChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V

    .line 254
    .end local v0    # "authorization":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->securityAdded:Z

    .line 257
    :cond_1
    return-object v1
.end method

.method public getClientInfo()Lorg/restlet/data/ClientInfo;
    .locals 15

    .prologue
    .line 267
    invoke-super {p0}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v10

    .line 269
    .local v10, "result":Lorg/restlet/data/ClientInfo;
    iget-boolean v12, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->clientAdded:Z

    if-nez v12, :cond_2

    .line 270
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 272
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "Accept"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "acceptMediaType":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "Accept-Charset"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "acceptCharset":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "Accept-Encoding"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "acceptEncoding":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "Accept-Language"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "acceptLanguage":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "Expect"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, "expect":Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v10}, Lorg/restlet/engine/header/PreferenceReader;->addCharacterSets(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    :try_start_1
    invoke-static {v1, v10}, Lorg/restlet/engine/header/PreferenceReader;->addEncodings(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    :goto_1
    :try_start_2
    invoke-static {v2, v10}, Lorg/restlet/engine/header/PreferenceReader;->addLanguages(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 307
    :goto_2
    :try_start_3
    invoke-static {v3, v10}, Lorg/restlet/engine/header/PreferenceReader;->addMediaTypes(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 313
    :goto_3
    :try_start_4
    invoke-static {v7, v10}, Lorg/restlet/engine/header/ExpectationReader;->addValues(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 319
    :goto_4
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "User-Agent"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/restlet/data/ClientInfo;->setAgent(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "From"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/restlet/data/ClientInfo;->setFrom(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/engine/connector/Connection;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/restlet/data/ClientInfo;->setAddress(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/engine/connector/Connection;->getPort()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/restlet/data/ClientInfo;->setPort(I)V

    .line 326
    iget-object v12, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->userPrincipal:Ljava/security/Principal;

    if-eqz v12, :cond_0

    .line 327
    invoke-virtual {v10}, Lorg/restlet/data/ClientInfo;->getPrincipals()Ljava/util/List;

    move-result-object v12

    iget-object v13, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->userPrincipal:Ljava/security/Principal;

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_0
    iget-object v12, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->context:Lorg/restlet/Context;

    if-eqz v12, :cond_1

    .line 333
    iget-object v12, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->context:Lorg/restlet/Context;

    invoke-virtual {v12}, Lorg/restlet/Context;->getParameters()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "useForwardedForHeader"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 337
    .local v11, "useForwardedForHeader":Z
    if-eqz v11, :cond_1

    .line 341
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "X-Forwarded-For"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 343
    .local v8, "header":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 344
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, "addresses":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    array-length v12, v5

    if-ge v9, v12, :cond_1

    .line 346
    aget-object v12, v5, v9

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "address":Ljava/lang/String;
    invoke-virtual {v10}, Lorg/restlet/data/ClientInfo;->getForwardedAddresses()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 290
    .end local v4    # "address":Ljava/lang/String;
    .end local v5    # "addresses":[Ljava/lang/String;
    .end local v8    # "header":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "useForwardedForHeader":Z
    :catch_0
    move-exception v6

    .line 291
    .local v6, "e":Ljava/lang/Exception;
    iget-object v12, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->context:Lorg/restlet/Context;

    invoke-virtual {v12}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 296
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 297
    .restart local v6    # "e":Ljava/lang/Exception;
    iget-object v12, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->context:Lorg/restlet/Context;

    invoke-virtual {v12}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 302
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 303
    .restart local v6    # "e":Ljava/lang/Exception;
    iget-object v12, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->context:Lorg/restlet/Context;

    invoke-virtual {v12}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 308
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 309
    .restart local v6    # "e":Ljava/lang/Exception;
    iget-object v12, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->context:Lorg/restlet/Context;

    invoke-virtual {v12}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 314
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    .line 315
    .restart local v6    # "e":Ljava/lang/Exception;
    iget-object v12, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->context:Lorg/restlet/Context;

    invoke-virtual {v12}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 354
    .end local v0    # "acceptCharset":Ljava/lang/String;
    .end local v1    # "acceptEncoding":Ljava/lang/String;
    .end local v2    # "acceptLanguage":Ljava/lang/String;
    .end local v3    # "acceptMediaType":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "expect":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x1

    iput-boolean v12, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->clientAdded:Z

    .line 357
    :cond_2
    return-object v10
.end method

.method public getConditions()Lorg/restlet/data/Conditions;
    .locals 24

    .prologue
    .line 367
    invoke-super/range {p0 .. p0}, Lorg/restlet/Request;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v17

    .line 369
    .local v17, "result":Lorg/restlet/data/Conditions;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/restlet/engine/connector/HttpInboundRequest;->conditionAdded:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 370
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v20

    if-eqz v20, :cond_9

    .line 372
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v20

    const-string v21, "If-Match"

    invoke-virtual/range {v20 .. v21}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 374
    .local v8, "ifMatchHeader":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v20

    const-string v21, "If-None-Match"

    invoke-virtual/range {v20 .. v21}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 376
    .local v10, "ifNoneMatchHeader":Ljava/lang/String;
    const/4 v9, 0x0

    .line 377
    .local v9, "ifModifiedSince":Ljava/util/Date;
    const/4 v12, 0x0

    .line 378
    .local v12, "ifUnmodifiedSince":Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v20

    const-string v21, "If-Range"

    invoke-virtual/range {v20 .. v21}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 381
    .local v11, "ifRangeHeader":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/restlet/engine/header/Header;

    .line 382
    .local v5, "header":Lorg/restlet/engine/header/Header;
    invoke-virtual {v5}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "If-Modified-Since"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 384
    invoke-virtual {v5}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lorg/restlet/engine/header/HeaderReader;->readDate(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v9

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {v5}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "If-Unmodified-Since"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 388
    invoke-virtual {v5}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lorg/restlet/engine/header/HeaderReader;->readDate(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v12

    goto :goto_0

    .line 394
    .end local v5    # "header":Lorg/restlet/engine/header/Header;
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_3

    .line 396
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/restlet/data/Conditions;->setModifiedSince(Ljava/util/Date;)V

    .line 400
    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_4

    .line 402
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/restlet/data/Conditions;->setUnmodifiedSince(Ljava/util/Date;)V

    .line 406
    :cond_4
    const/4 v13, 0x0

    .line 407
    .local v13, "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    const/4 v2, 0x0

    .line 408
    .local v2, "current":Lorg/restlet/data/Tag;
    if-eqz v8, :cond_6

    .line 410
    :try_start_0
    new-instance v6, Lorg/restlet/engine/header/HeaderReader;

    invoke-direct {v6, v8}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 412
    .local v6, "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Ljava/lang/Object;>;"
    invoke-virtual {v6}, Lorg/restlet/engine/header/HeaderReader;->readRawValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .local v19, "value":Ljava/lang/String;
    move-object v14, v13

    .line 414
    .end local v13    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .local v14, "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :goto_1
    if-eqz v19, :cond_5

    .line 415
    :try_start_1
    invoke-static/range {v19 .. v19}, Lorg/restlet/data/Tag;->parse(Ljava/lang/String;)Lorg/restlet/data/Tag;

    move-result-object v2

    .line 418
    if-nez v14, :cond_d

    .line 419
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 420
    .end local v14    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v13    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/restlet/data/Conditions;->setMatch(Ljava/util/List;)V

    .line 424
    :goto_2
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-virtual {v6}, Lorg/restlet/engine/header/HeaderReader;->readRawValue()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v19

    move-object v14, v13

    .end local v13    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v14    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    goto :goto_1

    :cond_5
    move-object v13, v14

    .line 438
    .end local v6    # "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Ljava/lang/Object;>;"
    .end local v14    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .end local v19    # "value":Ljava/lang/String;
    .restart local v13    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :cond_6
    :goto_3
    const/4 v15, 0x0

    .line 439
    .local v15, "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    if-eqz v10, :cond_8

    .line 441
    :try_start_3
    new-instance v6, Lorg/restlet/engine/header/HeaderReader;

    invoke-direct {v6, v10}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 443
    .restart local v6    # "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Ljava/lang/Object;>;"
    invoke-virtual {v6}, Lorg/restlet/engine/header/HeaderReader;->readRawValue()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v19

    .restart local v19    # "value":Ljava/lang/String;
    move-object/from16 v16, v15

    .line 445
    .end local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .local v16, "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :goto_4
    if-eqz v19, :cond_7

    .line 446
    :try_start_4
    invoke-static/range {v19 .. v19}, Lorg/restlet/data/Tag;->parse(Ljava/lang/String;)Lorg/restlet/data/Tag;

    move-result-object v2

    .line 449
    if-nez v16, :cond_c

    .line 450
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 451
    .end local v16    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :try_start_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/restlet/data/Conditions;->setNoneMatch(Ljava/util/List;)V

    .line 454
    :goto_5
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-virtual {v6}, Lorg/restlet/engine/header/HeaderReader;->readRawValue()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v19

    move-object/from16 v16, v15

    .end local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v16    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    goto :goto_4

    .line 429
    .end local v6    # "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Ljava/lang/Object;>;"
    .end local v16    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .end local v19    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 430
    .local v4, "e":Ljava/lang/Exception;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/connector/HttpInboundRequest;->context:Lorg/restlet/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v20

    sget-object v21, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to process the if-match header: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Ljava/lang/Object;>;"
    .restart local v16    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v19    # "value":Ljava/lang/String;
    :cond_7
    move-object/from16 v15, v16

    .line 467
    .end local v6    # "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Ljava/lang/Object;>;"
    .end local v16    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .end local v19    # "value":Ljava/lang/String;
    .restart local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :cond_8
    :goto_7
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_9

    .line 468
    invoke-static {v11}, Lorg/restlet/data/Tag;->parse(Ljava/lang/String;)Lorg/restlet/data/Tag;

    move-result-object v18

    .line 469
    .local v18, "tag":Lorg/restlet/data/Tag;
    if-eqz v18, :cond_b

    .line 470
    invoke-virtual/range {v17 .. v18}, Lorg/restlet/data/Conditions;->setRangeTag(Lorg/restlet/data/Tag;)V

    .line 478
    .end local v2    # "current":Lorg/restlet/data/Tag;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "ifMatchHeader":Ljava/lang/String;
    .end local v9    # "ifModifiedSince":Ljava/util/Date;
    .end local v10    # "ifNoneMatchHeader":Ljava/lang/String;
    .end local v11    # "ifRangeHeader":Ljava/lang/String;
    .end local v12    # "ifUnmodifiedSince":Ljava/util/Date;
    .end local v13    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .end local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .end local v18    # "tag":Lorg/restlet/data/Tag;
    :cond_9
    :goto_8
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/restlet/engine/connector/HttpInboundRequest;->conditionAdded:Z

    .line 481
    :cond_a
    return-object v17

    .line 459
    .restart local v2    # "current":Lorg/restlet/data/Tag;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "ifMatchHeader":Ljava/lang/String;
    .restart local v9    # "ifModifiedSince":Ljava/util/Date;
    .restart local v10    # "ifNoneMatchHeader":Ljava/lang/String;
    .restart local v11    # "ifRangeHeader":Ljava/lang/String;
    .restart local v12    # "ifUnmodifiedSince":Ljava/util/Date;
    .restart local v13    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :catch_1
    move-exception v4

    .line 460
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/connector/HttpInboundRequest;->context:Lorg/restlet/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v20

    sget-object v21, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to process the if-none-match header: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_7

    .line 472
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v18    # "tag":Lorg/restlet/data/Tag;
    :cond_b
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v11, v0}, Lorg/restlet/engine/header/HeaderReader;->readDate(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v3

    .line 473
    .local v3, "date":Ljava/util/Date;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/restlet/data/Conditions;->setRangeDate(Ljava/util/Date;)V

    goto :goto_8

    .line 459
    .end local v3    # "date":Ljava/util/Date;
    .end local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .end local v18    # "tag":Lorg/restlet/data/Tag;
    .restart local v6    # "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Ljava/lang/Object;>;"
    .restart local v16    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v19    # "value":Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object/from16 v15, v16

    .end local v16    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    goto :goto_9

    .line 429
    .end local v13    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .end local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v14    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :catch_3
    move-exception v4

    move-object v13, v14

    .end local v14    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v13    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    goto :goto_6

    .restart local v16    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :cond_c
    move-object/from16 v15, v16

    .end local v16    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    goto/16 :goto_5

    .end local v13    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .end local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v14    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :cond_d
    move-object v13, v14

    .end local v14    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v13    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    goto/16 :goto_2
.end method

.method public getConnection()Lorg/restlet/engine/connector/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/engine/connector/Connection",
            "<",
            "Lorg/restlet/Server;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->connection:Lorg/restlet/engine/connector/Connection;

    return-object v0
.end method

.method public getCookies()Lorg/restlet/util/Series;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    invoke-super {p0}, Lorg/restlet/Request;->getCookies()Lorg/restlet/util/Series;

    move-result-object v1

    .line 502
    .local v1, "result":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    iget-boolean v2, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->cookiesAdded:Z

    if-nez v2, :cond_1

    .line 503
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 504
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    const-string v3, "Cookie"

    invoke-virtual {v2, v3}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "cookieValues":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 508
    new-instance v2, Lorg/restlet/engine/header/CookieReader;

    invoke-direct {v2, v0}, Lorg/restlet/engine/header/CookieReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/restlet/engine/header/CookieReader;->addValues(Ljava/util/Collection;)V

    .line 512
    .end local v0    # "cookieValues":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->cookiesAdded:Z

    .line 515
    :cond_1
    return-object v1
.end method

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
    .line 525
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    const-string v1, "org.restlet.http.headers"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/util/Series;

    return-object v0
.end method

.method public getProxyChallengeResponse()Lorg/restlet/data/ChallengeResponse;
    .locals 4

    .prologue
    .line 531
    invoke-super {p0}, Lorg/restlet/Request;->getProxyChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v1

    .line 533
    .local v1, "result":Lorg/restlet/data/ChallengeResponse;
    iget-boolean v2, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->proxySecurityAdded:Z

    if-nez v2, :cond_1

    .line 534
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 536
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    const-string v3, "Proxy-Authorization"

    invoke-virtual {v2, v3}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "authorization":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lorg/restlet/engine/security/AuthenticatorUtils;->parseResponse(Lorg/restlet/Request;Ljava/lang/String;Lorg/restlet/util/Series;)Lorg/restlet/data/ChallengeResponse;

    move-result-object v1

    .line 542
    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/HttpInboundRequest;->setProxyChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V

    .line 545
    .end local v0    # "authorization":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->proxySecurityAdded:Z

    .line 548
    :cond_1
    return-object v1
.end method

.method public getRanges()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Range;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    invoke-super {p0}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v1

    .line 555
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    iget-boolean v2, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->rangesAdded:Z

    if-nez v2, :cond_1

    .line 556
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 558
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    const-string v3, "Range"

    invoke-virtual {v2, v3}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "ranges":Ljava/lang/String;
    invoke-static {v0}, Lorg/restlet/engine/header/RangeReader;->read(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 563
    .end local v0    # "ranges":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->rangesAdded:Z

    .line 566
    :cond_1
    return-object v1
.end method

.method public getRecipientsInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/RecipientInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    invoke-super {p0}, Lorg/restlet/Request;->getRecipientsInfo()Ljava/util/List;

    move-result-object v4

    .line 573
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    iget-boolean v5, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->recipientsInfoAdded:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 574
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v5

    const-string v6, "Via"

    invoke-virtual {v5, v6}, Lorg/restlet/util/Series;->getValuesArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 576
    .local v1, "header":Ljava/lang/String;
    new-instance v5, Lorg/restlet/engine/header/RecipientInfoReader;

    invoke-direct {v5, v1}, Lorg/restlet/engine/header/RecipientInfoReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lorg/restlet/engine/header/RecipientInfoReader;->addValues(Ljava/util/Collection;)V

    .line 574
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 579
    .end local v1    # "header":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/HttpInboundRequest;->setRecipientsInfo(Ljava/util/List;)V

    .line 582
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    return-object v4
.end method

.method public getReferrerRef()Lorg/restlet/data/Reference;
    .locals 3

    .prologue
    .line 592
    iget-boolean v1, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->referrerAdded:Z

    if-nez v1, :cond_1

    .line 593
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    const-string v2, "Referer"

    invoke-virtual {v1, v2}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "referrerValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 598
    new-instance v1, Lorg/restlet/data/Reference;

    invoke-direct {v1, v0}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/HttpInboundRequest;->setReferrerRef(Lorg/restlet/data/Reference;)V

    .line 602
    .end local v0    # "referrerValue":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->referrerAdded:Z

    .line 605
    :cond_1
    invoke-super {p0}, Lorg/restlet/Request;->getReferrerRef()Lorg/restlet/data/Reference;

    move-result-object v1

    return-object v1
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->userPrincipal:Ljava/security/Principal;

    return-object v0
.end method

.method public getWarnings()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Warning;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    invoke-super {p0}, Lorg/restlet/Request;->getWarnings()Ljava/util/List;

    move-result-object v3

    .line 621
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    iget-boolean v5, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->warningsAdded:Z

    if-nez v5, :cond_1

    .line 622
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 623
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v5, v6}, Lorg/restlet/util/Series;->getValuesArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 625
    .local v4, "warning":Ljava/lang/String;
    new-instance v5, Lorg/restlet/engine/header/WarningReader;

    invoke-direct {v5, v4}, Lorg/restlet/engine/header/WarningReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lorg/restlet/engine/header/WarningReader;->addValues(Ljava/util/Collection;)V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "warning":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->warningsAdded:Z

    .line 632
    :cond_1
    return-object v3
.end method

.method public setChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/data/ChallengeResponse;

    .prologue
    .line 637
    invoke-super {p0, p1}, Lorg/restlet/Request;->setChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->securityAdded:Z

    .line 639
    return-void
.end method

.method public setHeaders(Lorg/restlet/util/Series;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p1, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v17

    const-string v18, "org.restlet.http.headers"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/connector/HttpInboundRequest;->protocol:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/connector/HttpInboundRequest;->protocol:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2f

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 653
    .local v16, "slashIndex":I
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/connector/HttpInboundRequest;->protocol:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v16, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/restlet/engine/connector/HttpInboundRequest;->protocol:Ljava/lang/String;

    .line 661
    .end local v16    # "slashIndex":I
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v17

    if-nez v17, :cond_9

    const/4 v6, 0x0

    .line 663
    .local v6, "host":Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    .line 664
    .local v7, "hostDomain":Ljava/lang/String;
    const/4 v8, -0x1

    .line 666
    .local v8, "hostPort":I
    if-eqz v6, :cond_f

    .line 668
    const/16 v17, 0x5d

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 669
    .local v13, "rightSquareBracketIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_a

    const/4 v9, 0x1

    .line 671
    .local v9, "ipv4":Z
    :goto_2
    if-eqz v9, :cond_c

    .line 673
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 675
    .local v3, "colonIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_b

    .line 676
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 677
    add-int/lit8 v17, v3, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 683
    :goto_3
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HttpInboundRequest::setHeaders, IPv4 hostDomain: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", hostPort: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 738
    .end local v3    # "colonIndex":I
    .end local v9    # "ipv4":Z
    .end local v13    # "rightSquareBracketIndex":I
    :cond_1
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v17

    check-cast v17, Lorg/restlet/Server;

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/Server;->getProtocols()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/restlet/data/Protocol;

    .line 740
    .local v12, "protocol":Lorg/restlet/data/Protocol;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    .local v14, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_2

    invoke-virtual {v12}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v17

    move/from16 v0, v17

    if-eq v8, v0, :cond_2

    .line 745
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 748
    :cond_2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/restlet/engine/connector/HttpInboundRequest;->setHostRef(Ljava/lang/String;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/connector/HttpInboundRequest;->resourceUri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 752
    new-instance v17, Lorg/restlet/data/Reference;

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/connector/HttpInboundRequest;->resourceUri:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Reference;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/restlet/engine/connector/HttpInboundRequest;->setResourceRef(Lorg/restlet/data/Reference;)V

    .line 754
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/data/Reference;->isRelative()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/connector/HttpInboundRequest;->resourceUri:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 757
    new-instance v17, Lorg/restlet/data/Reference;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/connector/HttpInboundRequest;->resourceUri:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/restlet/engine/connector/HttpInboundRequest;->setResourceRef(Lorg/restlet/data/Reference;)V

    .line 765
    :cond_3
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/restlet/engine/connector/HttpInboundRequest;->setOriginalRef(Lorg/restlet/data/Reference;)V

    .line 769
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v17

    if-nez v17, :cond_13

    const/4 v5, 0x0

    .line 771
    .local v5, "dateHeader":Ljava/lang/String;
    :goto_6
    const/4 v4, 0x0

    .line 772
    .local v4, "date":Ljava/util/Date;
    if-eqz v5, :cond_5

    .line 773
    invoke-static {v5}, Lorg/restlet/engine/util/DateUtils;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 776
    :cond_5
    if-nez v4, :cond_6

    .line 777
    new-instance v4, Ljava/util/Date;

    .end local v4    # "date":Ljava/util/Date;
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 780
    .restart local v4    # "date":Ljava/util/Date;
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/restlet/engine/connector/HttpInboundRequest;->setDate(Ljava/util/Date;)V

    .line 783
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v17

    if-nez v17, :cond_14

    const/4 v10, 0x0

    .line 785
    .local v10, "maxForwardsHeader":Ljava/lang/String;
    :goto_7
    if-eqz v10, :cond_7

    .line 787
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/restlet/engine/connector/HttpInboundRequest;->setMaxForwards(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :cond_7
    :goto_8
    return-void

    .line 656
    .end local v4    # "date":Ljava/util/Date;
    .end local v5    # "dateHeader":Ljava/lang/String;
    .end local v6    # "host":Ljava/lang/String;
    .end local v7    # "hostDomain":Ljava/lang/String;
    .end local v8    # "hostPort":I
    .end local v10    # "maxForwardsHeader":Ljava/lang/String;
    .end local v12    # "protocol":Lorg/restlet/data/Protocol;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "slashIndex":I
    :cond_8
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/restlet/engine/connector/HttpInboundRequest;->protocol:Ljava/lang/String;

    goto/16 :goto_0

    .line 661
    .end local v16    # "slashIndex":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v17

    const-string v18, "Host"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 669
    .restart local v6    # "host":Ljava/lang/String;
    .restart local v7    # "hostDomain":Ljava/lang/String;
    .restart local v8    # "hostPort":I
    .restart local v13    # "rightSquareBracketIndex":I
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 679
    .restart local v3    # "colonIndex":I
    .restart local v9    # "ipv4":Z
    :cond_b
    move-object v7, v6

    .line 680
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v8

    goto/16 :goto_3

    .line 694
    .end local v3    # "colonIndex":I
    :cond_c
    add-int/lit8 v17, v13, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    .line 696
    const/16 v17, 0x0

    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 697
    add-int/lit8 v17, v13, 0x2

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 705
    :cond_d
    :goto_9
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HttpInboundRequest::setHeaders, IPv6 hostDomain: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", hostPort: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 699
    :cond_e
    add-int/lit8 v17, v13, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 701
    move-object v7, v6

    .line 702
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v8

    goto :goto_9

    .line 710
    .end local v9    # "ipv4":Z
    .end local v13    # "rightSquareBracketIndex":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v17

    check-cast v17, Lorg/restlet/Server;

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/Server;->getProtocols()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/restlet/data/Protocol;

    .line 713
    .local v15, "serverProtocol":Lorg/restlet/data/Protocol;
    sget-object v17, Lorg/restlet/data/Protocol;->SIP:Lorg/restlet/data/Protocol;

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v15}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    sget-object v17, Lorg/restlet/data/Protocol;->SIPS:Lorg/restlet/data/Protocol;

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v15}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 717
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v17

    const-string v18, "Couldn\'t find the mandatory \"Host\" HTTP header. Falling back to the IP address."

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/engine/connector/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 720
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/engine/connector/Connection;->getPort()I

    move-result v8

    .line 722
    if-nez v7, :cond_10

    .line 723
    const-string v7, "localhost"

    .line 726
    :cond_10
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_11

    .line 727
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v17

    check-cast v17, Lorg/restlet/Server;

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/Server;->getActualPort()I

    move-result v8

    .line 731
    :cond_11
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_1

    .line 732
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    goto/16 :goto_4

    .line 760
    .end local v15    # "serverProtocol":Lorg/restlet/data/Protocol;
    .restart local v12    # "protocol":Lorg/restlet/data/Protocol;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_12
    new-instance v17, Lorg/restlet/data/Reference;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/connector/HttpInboundRequest;->resourceUri:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/restlet/engine/connector/HttpInboundRequest;->setResourceRef(Lorg/restlet/data/Reference;)V

    goto/16 :goto_5

    .line 769
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v17

    const-string v18, "Date"

    invoke-virtual/range {v17 .. v18}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 783
    .restart local v4    # "date":Ljava/util/Date;
    .restart local v5    # "dateHeader":Ljava/lang/String;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/connector/HttpInboundRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v17

    const-string v18, "Max-Forwards"

    invoke-virtual/range {v17 .. v18}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    .line 788
    .restart local v10    # "maxForwardsHeader":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 789
    .local v11, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to parse the Max-Forwards header: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public setProxyChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/data/ChallengeResponse;

    .prologue
    .line 798
    invoke-super {p0, p1}, Lorg/restlet/Request;->setProxyChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V

    .line 799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->proxySecurityAdded:Z

    .line 800
    return-void
.end method

.method public setRecipientsInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/RecipientInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, "recipientsInfo":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    invoke-super {p0, p1}, Lorg/restlet/Request;->setRecipientsInfo(Ljava/util/List;)V

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->recipientsInfoAdded:Z

    .line 806
    return-void
.end method

.method public setWarnings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Warning;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 810
    .local p1, "warnings":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    invoke-super {p0, p1}, Lorg/restlet/Request;->setWarnings(Ljava/util/List;)V

    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/engine/connector/HttpInboundRequest;->warningsAdded:Z

    .line 812
    return-void
.end method

.class public Lorg/restlet/engine/adapter/HttpRequest;
.super Lorg/restlet/Request;
.source "HttpRequest.java"


# instance fields
.field private volatile cacheDirectivesAdded:Z

.field private volatile clientAdded:Z

.field private volatile conditionAdded:Z

.field private volatile context:Lorg/restlet/Context;

.field private volatile cookiesAdded:Z

.field private volatile entityAdded:Z

.field private volatile httpCall:Lorg/restlet/engine/adapter/ServerCall;

.field private volatile proxySecurityAdded:Z

.field private volatile rangesAdded:Z

.field private volatile recipientsInfoAdded:Z

.field private volatile referrerAdded:Z

.field private volatile securityAdded:Z

.field private volatile warningsAdded:Z


# direct methods
.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/engine/adapter/ServerCall;)V
    .locals 6
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "httpCall"    # Lorg/restlet/engine/adapter/ServerCall;

    .prologue
    const/4 v3, 0x0

    .line 140
    invoke-direct {p0}, Lorg/restlet/Request;-><init>()V

    .line 141
    iput-object p1, p0, Lorg/restlet/engine/adapter/HttpRequest;->context:Lorg/restlet/Context;

    .line 142
    iput-boolean v3, p0, Lorg/restlet/engine/adapter/HttpRequest;->clientAdded:Z

    .line 143
    iput-boolean v3, p0, Lorg/restlet/engine/adapter/HttpRequest;->conditionAdded:Z

    .line 144
    iput-boolean v3, p0, Lorg/restlet/engine/adapter/HttpRequest;->cookiesAdded:Z

    .line 145
    iput-boolean v3, p0, Lorg/restlet/engine/adapter/HttpRequest;->entityAdded:Z

    .line 146
    iput-boolean v3, p0, Lorg/restlet/engine/adapter/HttpRequest;->referrerAdded:Z

    .line 147
    iput-boolean v3, p0, Lorg/restlet/engine/adapter/HttpRequest;->securityAdded:Z

    .line 148
    iput-boolean v3, p0, Lorg/restlet/engine/adapter/HttpRequest;->proxySecurityAdded:Z

    .line 149
    iput-boolean v3, p0, Lorg/restlet/engine/adapter/HttpRequest;->recipientsInfoAdded:Z

    .line 150
    iput-boolean v3, p0, Lorg/restlet/engine/adapter/HttpRequest;->warningsAdded:Z

    .line 151
    iput-object p2, p0, Lorg/restlet/engine/adapter/HttpRequest;->httpCall:Lorg/restlet/engine/adapter/ServerCall;

    .line 154
    invoke-virtual {p2}, Lorg/restlet/engine/adapter/ServerCall;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/restlet/data/Method;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Method;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/restlet/engine/adapter/HttpRequest;->setMethod(Lorg/restlet/data/Method;)V

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Lorg/restlet/engine/adapter/ServerCall;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p2}, Lorg/restlet/engine/adapter/ServerCall;->getHostDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p2}, Lorg/restlet/engine/adapter/ServerCall;->getHostPort()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p2}, Lorg/restlet/engine/adapter/ServerCall;->getHostPort()I

    move-result v3

    invoke-virtual {p2}, Lorg/restlet/engine/adapter/ServerCall;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 163
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/restlet/engine/adapter/ServerCall;->getHostPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/restlet/engine/adapter/HttpRequest;->setHostRef(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Lorg/restlet/engine/adapter/ServerCall;->getRequestUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 169
    new-instance v3, Lorg/restlet/data/Reference;

    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {p2}, Lorg/restlet/engine/adapter/ServerCall;->getRequestUri()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Reference;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/restlet/engine/adapter/HttpRequest;->setResourceRef(Lorg/restlet/data/Reference;)V

    .line 171
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/data/Reference;->isRelative()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    invoke-virtual {p2}, Lorg/restlet/engine/adapter/ServerCall;->getRequestUri()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 174
    new-instance v3, Lorg/restlet/data/Reference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/restlet/engine/adapter/ServerCall;->getRequestUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/restlet/engine/adapter/HttpRequest;->setResourceRef(Lorg/restlet/data/Reference;)V

    .line 182
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/restlet/engine/adapter/HttpRequest;->setOriginalRef(Lorg/restlet/data/Reference;)V

    .line 186
    :cond_2
    invoke-virtual {p2}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v3

    const-string v4, "Date"

    invoke-virtual {v3, v4}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "dateHeader":Ljava/lang/String;
    const/4 v0, 0x0

    .line 189
    .local v0, "date":Ljava/util/Date;
    if-eqz v1, :cond_3

    .line 190
    invoke-static {v1}, Lorg/restlet/engine/util/DateUtils;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 193
    :cond_3
    if-nez v0, :cond_4

    .line 194
    new-instance v0, Ljava/util/Date;

    .end local v0    # "date":Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 197
    .restart local v0    # "date":Ljava/util/Date;
    :cond_4
    invoke-virtual {p0, v0}, Lorg/restlet/engine/adapter/HttpRequest;->setDate(Ljava/util/Date;)V

    .line 198
    return-void

    .line 177
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateHeader":Ljava/lang/String;
    :cond_5
    new-instance v3, Lorg/restlet/data/Reference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/restlet/engine/adapter/ServerCall;->getRequestUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/restlet/engine/adapter/HttpRequest;->setResourceRef(Lorg/restlet/data/Reference;)V

    goto :goto_0
.end method

.method public static addHeader(Lorg/restlet/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "request"    # Lorg/restlet/Request;
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 87
    instance-of v0, p0, Lorg/restlet/engine/adapter/HttpRequest;

    if-eqz v0, :cond_0

    .line 88
    check-cast p0, Lorg/restlet/engine/adapter/HttpRequest;

    .end local p0    # "request":Lorg/restlet/Request;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/header/Header;

    invoke-direct {v1, p1, p2}, Lorg/restlet/engine/header/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/adapter/ServerCall;->abort()Z

    move-result v0

    return v0
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
    .line 207
    invoke-super {p0}, Lorg/restlet/Request;->getCacheDirectives()Ljava/util/List;

    move-result-object v2

    .line 209
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CacheDirective;>;"
    iget-boolean v3, p0, Lorg/restlet/engine/adapter/HttpRequest;->cacheDirectivesAdded:Z

    if-nez v3, :cond_1

    .line 210
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

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

    .line 212
    .local v0, "header":Lorg/restlet/engine/header/Header;
    invoke-static {v0, v2}, Lorg/restlet/engine/header/CacheDirectiveReader;->addValues(Lorg/restlet/engine/header/Header;Ljava/util/Collection;)V

    goto :goto_0

    .line 215
    .end local v0    # "header":Lorg/restlet/engine/header/Header;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/restlet/engine/adapter/HttpRequest;->cacheDirectivesAdded:Z

    .line 218
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public getChallengeResponse()Lorg/restlet/data/ChallengeResponse;
    .locals 4

    .prologue
    .line 223
    invoke-super {p0}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v1

    .line 225
    .local v1, "result":Lorg/restlet/data/ChallengeResponse;
    iget-boolean v2, p0, Lorg/restlet/engine/adapter/HttpRequest;->securityAdded:Z

    if-nez v2, :cond_0

    .line 227
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    const-string v3, "Authorization"

    invoke-virtual {v2, v3}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "authorization":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lorg/restlet/engine/security/AuthenticatorUtils;->parseResponse(Lorg/restlet/Request;Ljava/lang/String;Lorg/restlet/util/Series;)Lorg/restlet/data/ChallengeResponse;

    move-result-object v1

    .line 233
    invoke-virtual {p0, v1}, Lorg/restlet/engine/adapter/HttpRequest;->setChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V

    .line 234
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/restlet/engine/adapter/HttpRequest;->securityAdded:Z

    .line 237
    .end local v0    # "authorization":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getClientInfo()Lorg/restlet/data/ClientInfo;
    .locals 15

    .prologue
    .line 247
    invoke-super {p0}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v10

    .line 249
    .local v10, "result":Lorg/restlet/data/ClientInfo;
    iget-boolean v12, p0, Lorg/restlet/engine/adapter/HttpRequest;->clientAdded:Z

    if-nez v12, :cond_2

    .line 251
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "Accept"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "acceptMediaType":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "Accept-Charset"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "acceptCharset":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "Accept-Encoding"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "acceptEncoding":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "Accept-Language"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "acceptLanguage":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "Expect"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 268
    .local v7, "expect":Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v10}, Lorg/restlet/engine/header/PreferenceReader;->addCharacterSets(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    :try_start_1
    invoke-static {v1, v10}, Lorg/restlet/engine/header/PreferenceReader;->addEncodings(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    :goto_1
    :try_start_2
    invoke-static {v2, v10}, Lorg/restlet/engine/header/PreferenceReader;->addLanguages(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 286
    :goto_2
    :try_start_3
    invoke-static {v3, v10}, Lorg/restlet/engine/header/PreferenceReader;->addMediaTypes(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 292
    :goto_3
    :try_start_4
    invoke-static {v7, v10}, Lorg/restlet/engine/header/ExpectationReader;->addValues(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 298
    :goto_4
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "User-Agent"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/restlet/data/ClientInfo;->setAgent(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "From"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/restlet/data/ClientInfo;->setFrom(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/engine/adapter/ServerCall;->getClientAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/restlet/data/ClientInfo;->setAddress(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/engine/adapter/ServerCall;->getClientPort()I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/restlet/data/ClientInfo;->setPort(I)V

    .line 305
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/engine/adapter/ServerCall;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 306
    invoke-virtual {v10}, Lorg/restlet/data/ClientInfo;->getPrincipals()Ljava/util/List;

    move-result-object v12

    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v13

    invoke-virtual {v13}, Lorg/restlet/engine/adapter/ServerCall;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    iget-object v12, p0, Lorg/restlet/engine/adapter/HttpRequest;->context:Lorg/restlet/Context;

    if-eqz v12, :cond_1

    .line 312
    iget-object v12, p0, Lorg/restlet/engine/adapter/HttpRequest;->context:Lorg/restlet/Context;

    invoke-virtual {v12}, Lorg/restlet/Context;->getParameters()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "useForwardedForHeader"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 315
    .local v11, "useForwardedForHeader":Z
    if-eqz v11, :cond_1

    .line 318
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v12

    const-string v13, "X-Forwarded-For"

    invoke-virtual {v12, v13}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 320
    .local v8, "header":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 321
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, "addresses":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    array-length v12, v5

    if-ge v9, v12, :cond_1

    .line 323
    aget-object v12, v5, v9

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "address":Ljava/lang/String;
    invoke-virtual {v10}, Lorg/restlet/data/ClientInfo;->getForwardedAddresses()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 269
    .end local v4    # "address":Ljava/lang/String;
    .end local v5    # "addresses":[Ljava/lang/String;
    .end local v8    # "header":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "useForwardedForHeader":Z
    :catch_0
    move-exception v6

    .line 270
    .local v6, "e":Ljava/lang/Exception;
    iget-object v12, p0, Lorg/restlet/engine/adapter/HttpRequest;->context:Lorg/restlet/Context;

    invoke-virtual {v12}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 276
    .restart local v6    # "e":Ljava/lang/Exception;
    iget-object v12, p0, Lorg/restlet/engine/adapter/HttpRequest;->context:Lorg/restlet/Context;

    invoke-virtual {v12}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 281
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 282
    .restart local v6    # "e":Ljava/lang/Exception;
    iget-object v12, p0, Lorg/restlet/engine/adapter/HttpRequest;->context:Lorg/restlet/Context;

    invoke-virtual {v12}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 287
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 288
    .restart local v6    # "e":Ljava/lang/Exception;
    iget-object v12, p0, Lorg/restlet/engine/adapter/HttpRequest;->context:Lorg/restlet/Context;

    invoke-virtual {v12}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 293
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    .line 294
    .restart local v6    # "e":Ljava/lang/Exception;
    iget-object v12, p0, Lorg/restlet/engine/adapter/HttpRequest;->context:Lorg/restlet/Context;

    invoke-virtual {v12}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 330
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v12, 0x1

    iput-boolean v12, p0, Lorg/restlet/engine/adapter/HttpRequest;->clientAdded:Z

    .line 333
    .end local v0    # "acceptCharset":Ljava/lang/String;
    .end local v1    # "acceptEncoding":Ljava/lang/String;
    .end local v2    # "acceptLanguage":Ljava/lang/String;
    .end local v3    # "acceptMediaType":Ljava/lang/String;
    .end local v7    # "expect":Ljava/lang/String;
    :cond_2
    return-object v10
.end method

.method public getConditions()Lorg/restlet/data/Conditions;
    .locals 24

    .prologue
    .line 343
    invoke-super/range {p0 .. p0}, Lorg/restlet/Request;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v17

    .line 345
    .local v17, "result":Lorg/restlet/data/Conditions;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/restlet/engine/adapter/HttpRequest;->conditionAdded:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 347
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v20

    const-string v21, "If-Match"

    invoke-virtual/range {v20 .. v21}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 349
    .local v8, "ifMatchHeader":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v20

    const-string v21, "If-None-Match"

    invoke-virtual/range {v20 .. v21}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 351
    .local v10, "ifNoneMatchHeader":Ljava/lang/String;
    const/4 v9, 0x0

    .line 352
    .local v9, "ifModifiedSince":Ljava/util/Date;
    const/4 v12, 0x0

    .line 353
    .local v12, "ifUnmodifiedSince":Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v20

    const-string v21, "If-Range"

    invoke-virtual/range {v20 .. v21}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 356
    .local v11, "ifRangeHeader":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

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

    .line 357
    .local v5, "header":Lorg/restlet/engine/header/Header;
    invoke-virtual {v5}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "If-Modified-Since"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 359
    invoke-virtual {v5}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lorg/restlet/engine/header/HeaderReader;->readDate(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v9

    goto :goto_0

    .line 361
    :cond_1
    invoke-virtual {v5}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "If-Unmodified-Since"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 363
    invoke-virtual {v5}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lorg/restlet/engine/header/HeaderReader;->readDate(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v12

    goto :goto_0

    .line 369
    .end local v5    # "header":Lorg/restlet/engine/header/Header;
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_3

    .line 370
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/restlet/data/Conditions;->setModifiedSince(Ljava/util/Date;)V

    .line 374
    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_4

    .line 376
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/restlet/data/Conditions;->setUnmodifiedSince(Ljava/util/Date;)V

    .line 380
    :cond_4
    const/4 v13, 0x0

    .line 381
    .local v13, "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    const/4 v2, 0x0

    .line 382
    .local v2, "current":Lorg/restlet/data/Tag;
    if-eqz v8, :cond_6

    .line 384
    :try_start_0
    new-instance v6, Lorg/restlet/engine/header/HeaderReader;

    invoke-direct {v6, v8}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 386
    .local v6, "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Ljava/lang/Object;>;"
    invoke-virtual {v6}, Lorg/restlet/engine/header/HeaderReader;->readRawValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .local v19, "value":Ljava/lang/String;
    move-object v14, v13

    .line 388
    .end local v13    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .local v14, "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :goto_1
    if-eqz v19, :cond_5

    .line 389
    :try_start_1
    invoke-static/range {v19 .. v19}, Lorg/restlet/data/Tag;->parse(Ljava/lang/String;)Lorg/restlet/data/Tag;

    move-result-object v2

    .line 392
    if-nez v14, :cond_d

    .line 393
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 394
    .end local v14    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v13    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/restlet/data/Conditions;->setMatch(Ljava/util/List;)V

    .line 398
    :goto_2
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
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

    .line 412
    .end local v6    # "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Ljava/lang/Object;>;"
    .end local v14    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .end local v19    # "value":Ljava/lang/String;
    .restart local v13    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :cond_6
    :goto_3
    const/4 v15, 0x0

    .line 413
    .local v15, "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    if-eqz v10, :cond_8

    .line 415
    :try_start_3
    new-instance v6, Lorg/restlet/engine/header/HeaderReader;

    invoke-direct {v6, v10}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 417
    .restart local v6    # "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Ljava/lang/Object;>;"
    invoke-virtual {v6}, Lorg/restlet/engine/header/HeaderReader;->readRawValue()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v19

    .restart local v19    # "value":Ljava/lang/String;
    move-object/from16 v16, v15

    .line 419
    .end local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .local v16, "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :goto_4
    if-eqz v19, :cond_7

    .line 420
    :try_start_4
    invoke-static/range {v19 .. v19}, Lorg/restlet/data/Tag;->parse(Ljava/lang/String;)Lorg/restlet/data/Tag;

    move-result-object v2

    .line 423
    if-nez v16, :cond_c

    .line 424
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 425
    .end local v16    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :try_start_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/restlet/data/Conditions;->setNoneMatch(Ljava/util/List;)V

    .line 428
    :goto_5
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {v6}, Lorg/restlet/engine/header/HeaderReader;->readRawValue()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v19

    move-object/from16 v16, v15

    .end local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .restart local v16    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    goto :goto_4

    .line 403
    .end local v6    # "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Ljava/lang/Object;>;"
    .end local v16    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .end local v19    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 404
    .local v4, "e":Ljava/lang/Exception;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/adapter/HttpRequest;->context:Lorg/restlet/Context;

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

    .line 441
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

    .line 442
    invoke-static {v11}, Lorg/restlet/data/Tag;->parse(Ljava/lang/String;)Lorg/restlet/data/Tag;

    move-result-object v18

    .line 444
    .local v18, "tag":Lorg/restlet/data/Tag;
    if-eqz v18, :cond_b

    .line 445
    invoke-virtual/range {v17 .. v18}, Lorg/restlet/data/Conditions;->setRangeTag(Lorg/restlet/data/Tag;)V

    .line 452
    .end local v18    # "tag":Lorg/restlet/data/Tag;
    :cond_9
    :goto_8
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/restlet/engine/adapter/HttpRequest;->conditionAdded:Z

    .line 455
    .end local v2    # "current":Lorg/restlet/data/Tag;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "ifMatchHeader":Ljava/lang/String;
    .end local v9    # "ifModifiedSince":Ljava/util/Date;
    .end local v10    # "ifNoneMatchHeader":Ljava/lang/String;
    .end local v11    # "ifRangeHeader":Ljava/lang/String;
    .end local v12    # "ifUnmodifiedSince":Ljava/util/Date;
    .end local v13    # "match":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    .end local v15    # "noneMatch":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    :cond_a
    return-object v17

    .line 433
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

    .line 434
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/adapter/HttpRequest;->context:Lorg/restlet/Context;

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

    .line 447
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v18    # "tag":Lorg/restlet/data/Tag;
    :cond_b
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v11, v0}, Lorg/restlet/engine/header/HeaderReader;->readDate(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v3

    .line 448
    .local v3, "date":Ljava/util/Date;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/restlet/data/Conditions;->setRangeDate(Ljava/util/Date;)V

    goto :goto_8

    .line 433
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

    .line 403
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
    .line 465
    invoke-super {p0}, Lorg/restlet/Request;->getCookies()Lorg/restlet/util/Series;

    move-result-object v1

    .line 467
    .local v1, "result":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    iget-boolean v2, p0, Lorg/restlet/engine/adapter/HttpRequest;->cookiesAdded:Z

    if-nez v2, :cond_1

    .line 468
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    const-string v3, "Cookie"

    invoke-virtual {v2, v3}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "cookieValues":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 472
    new-instance v2, Lorg/restlet/engine/header/CookieReader;

    invoke-direct {v2, v0}, Lorg/restlet/engine/header/CookieReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/restlet/engine/header/CookieReader;->addValues(Ljava/util/Collection;)V

    .line 475
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/restlet/engine/adapter/HttpRequest;->cookiesAdded:Z

    .line 478
    .end local v0    # "cookieValues":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getEntity()Lorg/restlet/representation/Representation;
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lorg/restlet/engine/adapter/HttpRequest;->entityAdded:Z

    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/adapter/ServerCall;->getRequestEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/adapter/HttpRequest;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/engine/adapter/HttpRequest;->entityAdded:Z

    .line 493
    :cond_0
    invoke-super {p0}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
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
    .line 503
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

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
    .line 513
    iget-object v0, p0, Lorg/restlet/engine/adapter/HttpRequest;->httpCall:Lorg/restlet/engine/adapter/ServerCall;

    return-object v0
.end method

.method public getProxyChallengeResponse()Lorg/restlet/data/ChallengeResponse;
    .locals 4

    .prologue
    .line 518
    invoke-super {p0}, Lorg/restlet/Request;->getProxyChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v1

    .line 520
    .local v1, "result":Lorg/restlet/data/ChallengeResponse;
    iget-boolean v2, p0, Lorg/restlet/engine/adapter/HttpRequest;->proxySecurityAdded:Z

    if-nez v2, :cond_0

    .line 522
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    const-string v3, "Proxy-Authorization"

    invoke-virtual {v2, v3}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "authorization":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lorg/restlet/engine/security/AuthenticatorUtils;->parseResponse(Lorg/restlet/Request;Ljava/lang/String;Lorg/restlet/util/Series;)Lorg/restlet/data/ChallengeResponse;

    move-result-object v1

    .line 528
    invoke-virtual {p0, v1}, Lorg/restlet/engine/adapter/HttpRequest;->setProxyChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V

    .line 529
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/restlet/engine/adapter/HttpRequest;->proxySecurityAdded:Z

    .line 532
    .end local v0    # "authorization":Ljava/lang/String;
    :cond_0
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
    .line 537
    invoke-super {p0}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v1

    .line 539
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    iget-boolean v2, p0, Lorg/restlet/engine/adapter/HttpRequest;->rangesAdded:Z

    if-nez v2, :cond_0

    .line 541
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    const-string v3, "Range"

    invoke-virtual {v2, v3}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "ranges":Ljava/lang/String;
    invoke-static {v0}, Lorg/restlet/engine/header/RangeReader;->read(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 545
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/restlet/engine/adapter/HttpRequest;->rangesAdded:Z

    .line 548
    .end local v0    # "ranges":Ljava/lang/String;
    :cond_0
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
    .line 553
    invoke-super {p0}, Lorg/restlet/Request;->getRecipientsInfo()Ljava/util/List;

    move-result-object v4

    .line 554
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    iget-boolean v5, p0, Lorg/restlet/engine/adapter/HttpRequest;->recipientsInfoAdded:Z

    if-nez v5, :cond_1

    .line 555
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

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

    .line 557
    .local v1, "header":Ljava/lang/String;
    new-instance v5, Lorg/restlet/engine/header/RecipientInfoReader;

    invoke-direct {v5, v1}, Lorg/restlet/engine/header/RecipientInfoReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lorg/restlet/engine/header/RecipientInfoReader;->addValues(Ljava/util/Collection;)V

    .line 555
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 559
    .end local v1    # "header":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/restlet/engine/adapter/HttpRequest;->recipientsInfoAdded:Z

    .line 561
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    return-object v4
.end method

.method public getReferrerRef()Lorg/restlet/data/Reference;
    .locals 3

    .prologue
    .line 571
    iget-boolean v1, p0, Lorg/restlet/engine/adapter/HttpRequest;->referrerAdded:Z

    if-nez v1, :cond_1

    .line 572
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    const-string v2, "Referer"

    invoke-virtual {v1, v2}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "referrerValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 575
    new-instance v1, Lorg/restlet/data/Reference;

    invoke-direct {v1, v0}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/restlet/engine/adapter/HttpRequest;->setReferrerRef(Lorg/restlet/data/Reference;)V

    .line 578
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/restlet/engine/adapter/HttpRequest;->referrerAdded:Z

    .line 581
    .end local v0    # "referrerValue":Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lorg/restlet/Request;->getReferrerRef()Lorg/restlet/data/Reference;

    move-result-object v1

    return-object v1
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
    .line 586
    invoke-super {p0}, Lorg/restlet/Request;->getWarnings()Ljava/util/List;

    move-result-object v4

    .line 587
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    iget-boolean v5, p0, Lorg/restlet/engine/adapter/HttpRequest;->warningsAdded:Z

    if-nez v5, :cond_1

    .line 588
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpRequest;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v5

    const-string v6, "Warning"

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

    .line 590
    .local v1, "header":Ljava/lang/String;
    new-instance v5, Lorg/restlet/engine/header/WarningReader;

    invoke-direct {v5, v1}, Lorg/restlet/engine/header/WarningReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lorg/restlet/engine/header/WarningReader;->addValues(Ljava/util/Collection;)V

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    .end local v1    # "header":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/restlet/engine/adapter/HttpRequest;->warningsAdded:Z

    .line 594
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    return-object v4
.end method

.method public setChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/data/ChallengeResponse;

    .prologue
    .line 599
    invoke-super {p0, p1}, Lorg/restlet/Request;->setChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/engine/adapter/HttpRequest;->securityAdded:Z

    .line 601
    return-void
.end method

.method public setEntity(Lorg/restlet/representation/Representation;)V
    .locals 1
    .param p1, "entity"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 605
    invoke-super {p0, p1}, Lorg/restlet/Request;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/engine/adapter/HttpRequest;->entityAdded:Z

    .line 607
    return-void
.end method

.method public setProxyChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/data/ChallengeResponse;

    .prologue
    .line 611
    invoke-super {p0, p1}, Lorg/restlet/Request;->setProxyChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/engine/adapter/HttpRequest;->proxySecurityAdded:Z

    .line 613
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
    .line 617
    .local p1, "recipientsInfo":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    invoke-super {p0, p1}, Lorg/restlet/Request;->setRecipientsInfo(Ljava/util/List;)V

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/engine/adapter/HttpRequest;->recipientsInfoAdded:Z

    .line 619
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
    .line 623
    .local p1, "warnings":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    invoke-super {p0, p1}, Lorg/restlet/Request;->setWarnings(Ljava/util/List;)V

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/engine/adapter/HttpRequest;->warningsAdded:Z

    .line 625
    return-void
.end method

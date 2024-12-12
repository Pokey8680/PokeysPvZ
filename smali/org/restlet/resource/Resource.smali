.class public abstract Lorg/restlet/resource/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# instance fields
.field private volatile application:Lorg/restlet/Application;

.field private volatile context:Lorg/restlet/Context;

.field private volatile request:Lorg/restlet/Request;

.field private volatile response:Lorg/restlet/Response;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCatch(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Exception or error caught in resource"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    return-void
.end method

.method protected doError(Lorg/restlet/data/Status;)V
    .locals 0
    .param p1, "errorStatus"    # Lorg/restlet/data/Status;

    .prologue
    .line 147
    return-void
.end method

.method protected final doError(Lorg/restlet/data/Status;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorStatus"    # Lorg/restlet/data/Status;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Lorg/restlet/data/Status;

    invoke-direct {v0, p1, p2}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/resource/Resource;->doError(Lorg/restlet/data/Status;)V

    .line 159
    return-void
.end method

.method protected doInit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 168
    return-void
.end method

.method protected doRelease()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 177
    return-void
.end method

.method public getAllowedMethods()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/data/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getApplication()Lorg/restlet/Application;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lorg/restlet/resource/Resource;->application:Lorg/restlet/Application;

    .line 200
    .local v0, "result":Lorg/restlet/Application;
    if-nez v0, :cond_1

    .line 201
    invoke-static {}, Lorg/restlet/Application;->getCurrent()Lorg/restlet/Application;

    move-result-object v0

    .line 203
    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lorg/restlet/Application;

    .end local v0    # "result":Lorg/restlet/Application;
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/Application;-><init>(Lorg/restlet/Context;)V

    .line 207
    .restart local v0    # "result":Lorg/restlet/Application;
    :cond_0
    iput-object v0, p0, Lorg/restlet/resource/Resource;->application:Lorg/restlet/Application;

    .line 210
    :cond_1
    return-object v0
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getChallengeRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/ChallengeRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getChallengeRequests()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getChallengeResponse()Lorg/restlet/data/ChallengeResponse;
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public getClientInfo()Lorg/restlet/data/ClientInfo;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getConditions()Lorg/restlet/data/Conditions;
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnegService()Lorg/restlet/service/ConnegService;
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 278
    .local v0, "result":Lorg/restlet/service/ConnegService;
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getApplication()Lorg/restlet/Application;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Application;->getConnegService()Lorg/restlet/service/ConnegService;

    move-result-object v0

    .line 280
    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lorg/restlet/service/ConnegService;

    .end local v0    # "result":Lorg/restlet/service/ConnegService;
    invoke-direct {v0}, Lorg/restlet/service/ConnegService;-><init>()V

    .line 284
    .restart local v0    # "result":Lorg/restlet/service/ConnegService;
    :cond_0
    return-object v0
.end method

.method public getContext()Lorg/restlet/Context;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/restlet/resource/Resource;->context:Lorg/restlet/Context;

    return-object v0
.end method

.method public getConverterService()Lorg/restlet/service/ConverterService;
    .locals 2

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "result":Lorg/restlet/service/ConverterService;
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getApplication()Lorg/restlet/Application;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Application;->getConverterService()Lorg/restlet/service/ConverterService;

    move-result-object v0

    .line 306
    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lorg/restlet/service/ConverterService;

    .end local v0    # "result":Lorg/restlet/service/ConverterService;
    invoke-direct {v0}, Lorg/restlet/service/ConverterService;-><init>()V

    .line 310
    .restart local v0    # "result":Lorg/restlet/service/ConverterService;
    :cond_0
    return-object v0
.end method

.method public getCookieSettings()Lorg/restlet/util/Series;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/CookieSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getCookieSettings()Lorg/restlet/util/Series;

    move-result-object v0

    goto :goto_0
.end method

.method public getCookies()Lorg/restlet/util/Series;
    .locals 1
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
    .line 321
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getCookies()Lorg/restlet/util/Series;

    move-result-object v0

    goto :goto_0
.end method

.method public getDimensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/data/Dimension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getDimensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getHostRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocationRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v0

    goto :goto_0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getContext()Lorg/restlet/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    goto :goto_0
.end method

.method public getMatrix()Lorg/restlet/data/Form;
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Reference;->getMatrixAsForm()Lorg/restlet/data/Form;

    move-result-object v0

    goto :goto_0
.end method

.method public getMatrixValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 401
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getMatrix()Lorg/restlet/data/Form;

    move-result-object v0

    .line 403
    .local v0, "matrix":Lorg/restlet/data/Form;
    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, p1}, Lorg/restlet/data/Form;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    :cond_0
    return-object v1
.end method

.method public getMaxForwards()I
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getMaxForwards()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getMetadataService()Lorg/restlet/service/MetadataService;
    .locals 2

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 427
    .local v0, "result":Lorg/restlet/service/MetadataService;
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getApplication()Lorg/restlet/Application;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Application;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v0

    .line 429
    if-nez v0, :cond_0

    .line 430
    new-instance v0, Lorg/restlet/service/MetadataService;

    .end local v0    # "result":Lorg/restlet/service/MetadataService;
    invoke-direct {v0}, Lorg/restlet/service/MetadataService;-><init>()V

    .line 433
    .restart local v0    # "result":Lorg/restlet/service/MetadataService;
    :cond_0
    return-object v0
.end method

.method public getMethod()Lorg/restlet/data/Method;
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getOriginalRef()Lorg/restlet/data/Reference;

    move-result-object v0

    goto :goto_0
.end method

.method public getProtocol()Lorg/restlet/data/Protocol;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    goto :goto_0
.end method

.method public getProxyChallengeRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/ChallengeRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getProxyChallengeRequests()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getProxyChallengeResponse()Lorg/restlet/data/ChallengeResponse;
    .locals 1

    .prologue
    .line 489
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getProxyChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public getQuery()Lorg/restlet/data/Form;
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Reference;->getQueryAsForm()Lorg/restlet/data/Form;

    move-result-object v0

    goto :goto_0
.end method

.method public getQueryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 514
    const/4 v1, 0x0

    .line 515
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getQuery()Lorg/restlet/data/Form;

    move-result-object v0

    .line 517
    .local v0, "query":Lorg/restlet/data/Form;
    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0, p1}, Lorg/restlet/data/Form;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 521
    :cond_0
    return-object v1
.end method

.method public getRanges()Ljava/util/List;
    .locals 1
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
    .line 531
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getReference()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v0

    goto :goto_0
.end method

.method public getReferrerRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getReferrerRef()Lorg/restlet/data/Reference;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequest()Lorg/restlet/Request;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lorg/restlet/resource/Resource;->request:Lorg/restlet/Request;

    return-object v0
.end method

.method public getRequestAttributes()Ljava/util/Map;
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
    .line 568
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestCacheDirectives()Ljava/util/List;
    .locals 1
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
    .line 580
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getCacheDirectives()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestEntity()Lorg/restlet/representation/Representation;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponse()Lorg/restlet/Response;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lorg/restlet/resource/Resource;->response:Lorg/restlet/Response;

    return-object v0
.end method

.method public getResponseAttributes()Ljava/util/Map;
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
    .line 608
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponseCacheDirectives()Ljava/util/List;
    .locals 1
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
    .line 620
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getCacheDirectives()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponseEntity()Lorg/restlet/representation/Representation;
    .locals 1

    .prologue
    .line 630
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    goto :goto_0
.end method

.method public getRootRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getRootRef()Lorg/restlet/data/Reference;

    move-result-object v0

    goto :goto_0
.end method

.method public getServerInfo()Lorg/restlet/data/ServerInfo;
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus()Lorg/restlet/data/Status;
    .locals 1

    .prologue
    .line 661
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatusService()Lorg/restlet/service/StatusService;
    .locals 2

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 672
    .local v0, "result":Lorg/restlet/service/StatusService;
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getApplication()Lorg/restlet/Application;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Application;->getStatusService()Lorg/restlet/service/StatusService;

    move-result-object v0

    .line 674
    if-nez v0, :cond_0

    .line 675
    new-instance v0, Lorg/restlet/service/StatusService;

    .end local v0    # "result":Lorg/restlet/service/StatusService;
    invoke-direct {v0}, Lorg/restlet/service/StatusService;-><init>()V

    .line 678
    .restart local v0    # "result":Lorg/restlet/service/StatusService;
    :cond_0
    return-object v0
.end method

.method public abstract handle()Lorg/restlet/representation/Representation;
.end method

.method public init(Lorg/restlet/Context;Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "request"    # Lorg/restlet/Request;
    .param p3, "response"    # Lorg/restlet/Response;

    .prologue
    .line 701
    iput-object p1, p0, Lorg/restlet/resource/Resource;->context:Lorg/restlet/Context;

    .line 702
    iput-object p2, p0, Lorg/restlet/resource/Resource;->request:Lorg/restlet/Request;

    .line 703
    iput-object p3, p0, Lorg/restlet/resource/Resource;->response:Lorg/restlet/Response;

    .line 706
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->doInit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lorg/restlet/resource/Resource;->doCatch(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isConfidential()Z
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->isConfidential()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isLoggable()Z
    .locals 1

    .prologue
    .line 729
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->isLoggable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 737
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->doRelease()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_0
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lorg/restlet/resource/Resource;->doCatch(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setApplication(Lorg/restlet/Application;)V
    .locals 0
    .param p1, "application"    # Lorg/restlet/Application;

    .prologue
    .line 750
    iput-object p1, p0, Lorg/restlet/resource/Resource;->application:Lorg/restlet/Application;

    .line 751
    return-void
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public setQueryValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 773
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getQuery()Lorg/restlet/data/Form;

    move-result-object v1

    .line 775
    .local v1, "query":Lorg/restlet/data/Form;
    if-nez v1, :cond_0

    .line 776
    new-instance v1, Lorg/restlet/data/Form;

    .end local v1    # "query":Lorg/restlet/data/Form;
    invoke-direct {v1}, Lorg/restlet/data/Form;-><init>()V

    .line 779
    .restart local v1    # "query":Lorg/restlet/data/Form;
    :cond_0
    invoke-virtual {v1, p1, p2}, Lorg/restlet/data/Form;->set(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;

    .line 782
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v1}, Lorg/restlet/data/Form;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Reference;->setQuery(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "Unable to set the query value"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRequest(Lorg/restlet/Request;)V
    .locals 0
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 795
    iput-object p1, p0, Lorg/restlet/resource/Resource;->request:Lorg/restlet/Request;

    .line 796
    return-void
.end method

.method public setResponse(Lorg/restlet/Response;)V
    .locals 0
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 805
    iput-object p1, p0, Lorg/restlet/resource/Resource;->response:Lorg/restlet/Response;

    .line 806
    return-void
.end method

.method public toObject(Lorg/restlet/representation/Representation;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/restlet/representation/Representation;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 823
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 825
    .local v2, "result":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 827
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getConverterService()Lorg/restlet/service/ConverterService;

    move-result-object v0

    .line 828
    .local v0, "cs":Lorg/restlet/service/ConverterService;
    invoke-virtual {v0, p1, p2, p0}, Lorg/restlet/service/ConverterService;->toObject(Lorg/restlet/representation/Representation;Ljava/lang/Class;Lorg/restlet/resource/Resource;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 834
    .end local v0    # "cs":Lorg/restlet/service/ConverterService;
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v2

    .line 829
    .restart local v2    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 830
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/restlet/resource/ResourceException;

    invoke-direct {v3, v1}, Lorg/restlet/resource/ResourceException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "target"    # Lorg/restlet/representation/Variant;

    .prologue
    .line 847
    const/4 v1, 0x0

    .line 849
    .local v1, "result":Lorg/restlet/representation/Representation;
    if-eqz p1, :cond_0

    .line 850
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getConverterService()Lorg/restlet/service/ConverterService;

    move-result-object v0

    .line 851
    .local v0, "cs":Lorg/restlet/service/ConverterService;
    invoke-virtual {v0, p1, p2, p0}, Lorg/restlet/service/ConverterService;->toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;Lorg/restlet/resource/Resource;)Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 854
    .end local v0    # "cs":Lorg/restlet/service/ConverterService;
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Response;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

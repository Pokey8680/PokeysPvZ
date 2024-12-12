.class public Lorg/restlet/util/WrapperResponse;
.super Lorg/restlet/Response;
.source "WrapperResponse.java"


# instance fields
.field private final wrappedResponse:Lorg/restlet/Response;


# direct methods
.method public constructor <init>(Lorg/restlet/Response;)V
    .locals 1
    .param p1, "wrappedResponse"    # Lorg/restlet/Response;

    .prologue
    .line 73
    const/4 v0, 0x0

    check-cast v0, Lorg/restlet/Request;

    invoke-direct {p0, v0}, Lorg/restlet/Response;-><init>(Lorg/restlet/Request;)V

    .line 74
    iput-object p1, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    .line 75
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0}, Lorg/restlet/Response;->abort()V

    .line 80
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0}, Lorg/restlet/Response;->commit()V

    .line 85
    return-void
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0}, Lorg/restlet/Response;->getAge()I

    move-result v0

    return v0
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
    .line 101
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationInfo()Lorg/restlet/data/AuthenticationInfo;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0}, Lorg/restlet/Response;->getAuthenticationInfo()Lorg/restlet/data/AuthenticationInfo;

    move-result-object v0

    return-object v0
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
    .line 156
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getChallengeRequests()Ljava/util/List;

    move-result-object v0

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
    .line 166
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getCookieSettings()Lorg/restlet/util/Series;

    move-result-object v0

    return-object v0
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
    .line 178
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getDimensions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEntity()Lorg/restlet/representation/Representation;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public getLocationRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v0

    return-object v0
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
    .line 209
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getProxyChallengeRequests()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lorg/restlet/Request;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    return-object v0
.end method

.method public getRetryAfter()Ljava/util/Date;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0}, Lorg/restlet/Response;->getRetryAfter()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getServerInfo()Lorg/restlet/data/ServerInfo;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lorg/restlet/data/Status;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v0

    return-object v0
.end method

.method protected getWrappedResponse()Lorg/restlet/Response;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    return-object v0
.end method

.method public isAutoCommitting()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0}, Lorg/restlet/Response;->isAutoCommitting()Z

    move-result v0

    return v0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0}, Lorg/restlet/Response;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public isConfidential()Z
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->isConfidential()Z

    move-result v0

    return v0
.end method

.method public isEntityAvailable()Z
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->isEntityAvailable()Z

    move-result v0

    return v0
.end method

.method public redirectPermanent(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetUri"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->redirectPermanent(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public redirectPermanent(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "targetRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 297
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->redirectPermanent(Lorg/restlet/data/Reference;)V

    .line 298
    return-void
.end method

.method public redirectSeeOther(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetUri"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->redirectSeeOther(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public redirectSeeOther(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "targetRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 324
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->redirectSeeOther(Lorg/restlet/data/Reference;)V

    .line 325
    return-void
.end method

.method public redirectTemporary(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetUri"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->redirectTemporary(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public redirectTemporary(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "targetRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 351
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->redirectTemporary(Lorg/restlet/data/Reference;)V

    .line 352
    return-void
.end method

.method public setAge(I)V
    .locals 1
    .param p1, "age"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setAge(I)V

    .line 369
    return-void
.end method

.method public setAllowedMethods(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/data/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "allowedMethods":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Method;>;"
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setAllowedMethods(Ljava/util/Set;)V

    .line 374
    return-void
.end method

.method public setAuthenticationInfo(Lorg/restlet/data/AuthenticationInfo;)V
    .locals 1
    .param p1, "authenticationInfo"    # Lorg/restlet/data/AuthenticationInfo;

    .prologue
    .line 378
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setAuthenticationInfo(Lorg/restlet/data/AuthenticationInfo;)V

    .line 379
    return-void
.end method

.method public setAutoCommitting(Z)V
    .locals 1
    .param p1, "autoCommitting"    # Z

    .prologue
    .line 383
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setAutoCommitting(Z)V

    .line 384
    return-void
.end method

.method public setChallengeRequests(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/ChallengeRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setChallengeRequests(Ljava/util/List;)V

    .line 397
    return-void
.end method

.method public setCommitted(Z)V
    .locals 1
    .param p1, "committed"    # Z

    .prologue
    .line 401
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setCommitted(Z)V

    .line 402
    return-void
.end method

.method public setCookieSettings(Lorg/restlet/util/Series;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/CookieSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "cookieSettings":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/CookieSetting;>;"
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setCookieSettings(Lorg/restlet/util/Series;)V

    .line 407
    return-void
.end method

.method public setDimensions(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/data/Dimension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "dimensions":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Dimension;>;"
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setDimensions(Ljava/util/Set;)V

    .line 412
    return-void
.end method

.method public setEntity(Ljava/lang/String;Lorg/restlet/data/MediaType;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 435
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/Response;->setEntity(Ljava/lang/String;Lorg/restlet/data/MediaType;)V

    .line 436
    return-void
.end method

.method public setEntity(Lorg/restlet/representation/Representation;)V
    .locals 1
    .param p1, "entity"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 422
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 423
    return-void
.end method

.method public setLocationRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "locationUri"    # Ljava/lang/String;

    .prologue
    .line 459
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setLocationRef(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public setLocationRef(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "locationRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 447
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 448
    return-void
.end method

.method public setProxyChallengeRequests(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/ChallengeRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setProxyChallengeRequests(Ljava/util/List;)V

    .line 472
    return-void
.end method

.method public setRequest(Lorg/restlet/Request;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 482
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setRequest(Lorg/restlet/Request;)V

    .line 483
    return-void
.end method

.method public setRequest(Lorg/restlet/util/WrapperRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/util/WrapperRequest;

    .prologue
    .line 492
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setRequest(Lorg/restlet/Request;)V

    .line 493
    return-void
.end method

.method public setRetryAfter(Ljava/util/Date;)V
    .locals 1
    .param p1, "retryAfter"    # Ljava/util/Date;

    .prologue
    .line 497
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setRetryAfter(Ljava/util/Date;)V

    .line 498
    return-void
.end method

.method public setServerInfo(Lorg/restlet/data/ServerInfo;)V
    .locals 1
    .param p1, "serverInfo"    # Lorg/restlet/data/ServerInfo;

    .prologue
    .line 502
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setServerInfo(Lorg/restlet/data/ServerInfo;)V

    .line 503
    return-void
.end method

.method public setStatus(Lorg/restlet/data/Status;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;

    .prologue
    .line 513
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 514
    return-void
.end method

.method public setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-virtual {p0}, Lorg/restlet/util/WrapperResponse;->getWrappedResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method public setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 531
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0, p1, p2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 532
    return-void
.end method

.method public setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 536
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0, p1, p2, p3}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lorg/restlet/util/WrapperResponse;->wrappedResponse:Lorg/restlet/Response;

    invoke-virtual {v0}, Lorg/restlet/Response;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

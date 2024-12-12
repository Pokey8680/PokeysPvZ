.class public Lorg/restlet/util/WrapperRequest;
.super Lorg/restlet/Request;
.source "WrapperRequest.java"


# instance fields
.field private final wrappedRequest:Lorg/restlet/Request;


# direct methods
.method public constructor <init>(Lorg/restlet/Request;)V
    .locals 0
    .param p1, "wrappedRequest"    # Lorg/restlet/Request;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/restlet/Request;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    .line 73
    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0}, Lorg/restlet/Request;->abort()Z

    move-result v0

    return v0
.end method

.method public commit(Lorg/restlet/Response;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->commit(Lorg/restlet/Response;)V

    .line 83
    return-void
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
    .line 120
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public getChallengeResponse()Lorg/restlet/data/ChallengeResponse;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfo()Lorg/restlet/data/ClientInfo;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConditions()Lorg/restlet/data/Conditions;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v0

    return-object v0
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
    .line 160
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getCookies()Lorg/restlet/util/Series;

    move-result-object v0

    return-object v0
.end method

.method public getEntity()Lorg/restlet/representation/Representation;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public getHostRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v0

    return-object v0
.end method

.method public getMaxForwards()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0}, Lorg/restlet/Request;->getMaxForwards()I

    move-result v0

    return v0
.end method

.method public getMethod()Lorg/restlet/data/Method;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v0

    return-object v0
.end method

.method public getOnResponse()Lorg/restlet/Uniform;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0}, Lorg/restlet/Request;->getOnResponse()Lorg/restlet/Uniform;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0}, Lorg/restlet/Request;->getOriginalRef()Lorg/restlet/data/Reference;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Lorg/restlet/data/Protocol;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    return-object v0
.end method

.method public getProxyChallengeResponse()Lorg/restlet/data/ChallengeResponse;
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getProxyChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v0

    return-object v0
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
    .line 234
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReferrerRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getReferrerRef()Lorg/restlet/data/Reference;

    move-result-object v0

    return-object v0
.end method

.method public getResourceRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v0

    return-object v0
.end method

.method public getRootRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getRootRef()Lorg/restlet/data/Reference;

    move-result-object v0

    return-object v0
.end method

.method protected getWrappedRequest()Lorg/restlet/Request;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    return-object v0
.end method

.method public isAsynchronous()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0}, Lorg/restlet/Request;->isAsynchronous()Z

    move-result v0

    return v0
.end method

.method public isConfidential()Z
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->isConfidential()Z

    move-result v0

    return v0
.end method

.method public isEntityAvailable()Z
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->isEntityAvailable()Z

    move-result v0

    return v0
.end method

.method public isExpectingResponse()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0}, Lorg/restlet/Request;->isExpectingResponse()Z

    move-result v0

    return v0
.end method

.method public isSynchronous()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0}, Lorg/restlet/Request;->isSynchronous()Z

    move-result v0

    return v0
.end method

.method public setChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/data/ChallengeResponse;

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V

    .line 324
    return-void
.end method

.method public setClientInfo(Lorg/restlet/data/ClientInfo;)V
    .locals 1
    .param p1, "clientInfo"    # Lorg/restlet/data/ClientInfo;

    .prologue
    .line 328
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setClientInfo(Lorg/restlet/data/ClientInfo;)V

    .line 329
    return-void
.end method

.method public setConditions(Lorg/restlet/data/Conditions;)V
    .locals 1
    .param p1, "conditions"    # Lorg/restlet/data/Conditions;

    .prologue
    .line 333
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setConditions(Lorg/restlet/data/Conditions;)V

    .line 334
    return-void
.end method

.method public setCookies(Lorg/restlet/util/Series;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "cookies":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setCookies(Lorg/restlet/util/Series;)V

    .line 339
    return-void
.end method

.method public setEntity(Ljava/lang/String;Lorg/restlet/data/MediaType;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 362
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/Request;->setEntity(Ljava/lang/String;Lorg/restlet/data/MediaType;)V

    .line 363
    return-void
.end method

.method public setEntity(Lorg/restlet/representation/Representation;)V
    .locals 1
    .param p1, "entity"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 349
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 350
    return-void
.end method

.method public setHostRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostUri"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setHostRef(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public setHostRef(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "hostRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 373
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setHostRef(Lorg/restlet/data/Reference;)V

    .line 374
    return-void
.end method

.method public setMaxForwards(I)V
    .locals 1
    .param p1, "maxForwards"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setMaxForwards(I)V

    .line 390
    return-void
.end method

.method public setMethod(Lorg/restlet/data/Method;)V
    .locals 1
    .param p1, "method"    # Lorg/restlet/data/Method;

    .prologue
    .line 400
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setMethod(Lorg/restlet/data/Method;)V

    .line 401
    return-void
.end method

.method public setOnResponse(Lorg/restlet/Uniform;)V
    .locals 1
    .param p1, "onResponseCallback"    # Lorg/restlet/Uniform;

    .prologue
    .line 405
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setOnResponse(Lorg/restlet/Uniform;)V

    .line 406
    return-void
.end method

.method public setOriginalRef(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "originalRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 410
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setOriginalRef(Lorg/restlet/data/Reference;)V

    .line 411
    return-void
.end method

.method public setProtocol(Lorg/restlet/data/Protocol;)V
    .locals 1
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;

    .prologue
    .line 415
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setProtocol(Lorg/restlet/data/Protocol;)V

    .line 416
    return-void
.end method

.method public setProxyChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/data/ChallengeResponse;

    .prologue
    .line 426
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setProxyChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V

    .line 427
    return-void
.end method

.method public setRanges(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Range;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setRanges(Ljava/util/List;)V

    .line 432
    return-void
.end method

.method public setReferrerRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "referrerUri"    # Ljava/lang/String;

    .prologue
    .line 453
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setReferrerRef(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public setReferrerRef(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "referrerRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 442
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setReferrerRef(Lorg/restlet/data/Reference;)V

    .line 443
    return-void
.end method

.method public setResourceRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "resourceUri"    # Ljava/lang/String;

    .prologue
    .line 479
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setResourceRef(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public setResourceRef(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "resourceRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 467
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setResourceRef(Lorg/restlet/data/Reference;)V

    .line 468
    return-void
.end method

.method public setRootRef(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "rootRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 490
    invoke-virtual {p0}, Lorg/restlet/util/WrapperRequest;->getWrappedRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setRootRef(Lorg/restlet/data/Reference;)V

    .line 491
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/restlet/util/WrapperRequest;->wrappedRequest:Lorg/restlet/Request;

    invoke-virtual {v0}, Lorg/restlet/Request;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

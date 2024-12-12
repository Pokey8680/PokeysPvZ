.class public Lorg/restlet/engine/application/RangeFilter;
.super Lorg/restlet/routing/Filter;
.source "RangeFilter.java"


# direct methods
.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/restlet/routing/Filter;-><init>(Lorg/restlet/Context;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected afterHandle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 9
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-wide/16 v6, -0x1

    .line 65
    invoke-virtual {p0}, Lorg/restlet/engine/application/RangeFilter;->getRangeService()Lorg/restlet/service/RangeService;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/service/RangeService;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {p2}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/restlet/data/ServerInfo;->setAcceptingRanges(Z)V

    .line 68
    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Method;->isSafe()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lorg/restlet/Response;->isEntityAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getRange()Lorg/restlet/data/Range;

    move-result-object v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 71
    .local v0, "rangedEntity":Z
    :goto_0
    invoke-virtual {p2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Status;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    sget-object v4, Lorg/restlet/data/Status;->SUCCESS_PARTIAL_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual {p2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/restlet/engine/application/RangeFilter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "When returning a \"206 Partial content\" status, your response entity must be properly ranged."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 134
    .end local v0    # "rangedEntity":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 69
    goto :goto_0

    .line 84
    .restart local v0    # "rangedEntity":Z
    :cond_2
    invoke-virtual {p1}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_9

    invoke-virtual {p1}, Lorg/restlet/Request;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Conditions;->hasSomeRange()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lorg/restlet/Request;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v4

    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/restlet/data/Conditions;->getRangeStatus(Lorg/restlet/representation/RepresentationInfo;)Lorg/restlet/data/Status;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Status;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 89
    :cond_3
    invoke-virtual {p1}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/data/Range;

    .line 91
    .local v1, "requestedRange":Lorg/restlet/data/Range;
    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->hasKnownSize()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_6

    :cond_4
    invoke-virtual {v1}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_6

    .line 97
    :cond_5
    sget-object v2, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-virtual {p2, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 98
    invoke-virtual {p0}, Lorg/restlet/engine/application/RangeFilter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "Unable to serve this range since at least the end index of the range cannot be computed."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2, v8}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    goto :goto_1

    .line 102
    :cond_6
    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->getRange()Lorg/restlet/data/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/Range;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    if-eqz v0, :cond_7

    .line 105
    invoke-virtual {p0}, Lorg/restlet/engine/application/RangeFilter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "The range of the response entity is not equal to the requested one."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 109
    :cond_7
    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->hasKnownSize()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/representation/Representation;->getAvailableSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    .line 112
    invoke-virtual {v1, v6, v7}, Lorg/restlet/data/Range;->setSize(J)V

    .line 115
    :cond_8
    new-instance v2, Lorg/restlet/engine/application/RangeRepresentation;

    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/restlet/engine/application/RangeRepresentation;-><init>(Lorg/restlet/representation/Representation;Lorg/restlet/data/Range;)V

    invoke-virtual {p2, v2}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 117
    sget-object v2, Lorg/restlet/data/Status;->SUCCESS_PARTIAL_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual {p2, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto/16 :goto_1

    .line 119
    .end local v1    # "requestedRange":Lorg/restlet/data/Range;
    :cond_9
    invoke-virtual {p1}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 122
    sget-object v2, Lorg/restlet/data/Status;->SERVER_ERROR_NOT_IMPLEMENTED:Lorg/restlet/data/Status;

    invoke-virtual {p2, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 123
    invoke-virtual {p0}, Lorg/restlet/engine/application/RangeFilter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "Multiple ranges are not supported at this time."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2, v8}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    goto/16 :goto_1
.end method

.method public getRangeService()Lorg/restlet/service/RangeService;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/restlet/engine/application/RangeFilter;->getApplication()Lorg/restlet/Application;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Application;->getRangeService()Lorg/restlet/service/RangeService;

    move-result-object v0

    return-object v0
.end method

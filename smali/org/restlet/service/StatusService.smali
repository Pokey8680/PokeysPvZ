.class public Lorg/restlet/service/StatusService;
.super Lorg/restlet/service/Service;
.source "StatusService.java"


# instance fields
.field private volatile contactEmail:Ljava/lang/String;

.field private volatile homeRef:Lorg/restlet/data/Reference;

.field private volatile overwriting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/restlet/service/StatusService;-><init>(Z)V

    .line 85
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/restlet/service/Service;-><init>(Z)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/service/StatusService;->contactEmail:Ljava/lang/String;

    .line 96
    new-instance v0, Lorg/restlet/data/Reference;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/restlet/service/StatusService;->homeRef:Lorg/restlet/data/Reference;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/service/StatusService;->overwriting:Z

    .line 98
    return-void
.end method


# virtual methods
.method public createInboundFilter(Lorg/restlet/Context;)Lorg/restlet/routing/Filter;
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 102
    new-instance v0, Lorg/restlet/engine/application/StatusFilter;

    invoke-direct {v0, p1, p0}, Lorg/restlet/engine/application/StatusFilter;-><init>(Lorg/restlet/Context;Lorg/restlet/service/StatusService;)V

    return-object v0
.end method

.method public getContactEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/restlet/service/StatusService;->contactEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/restlet/service/StatusService;->homeRef:Lorg/restlet/data/Reference;

    return-object v0
.end method

.method public getRepresentation(Lorg/restlet/data/Status;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/representation/Representation;
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "request"    # Lorg/restlet/Request;
    .param p3, "response"    # Lorg/restlet/Response;

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus(Ljava/lang/Throwable;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/data/Status;
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "request"    # Lorg/restlet/Request;
    .param p3, "response"    # Lorg/restlet/Response;

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 162
    .local v1, "result":Lorg/restlet/data/Status;
    instance-of v2, p1, Lorg/restlet/resource/ResourceException;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 163
    check-cast v0, Lorg/restlet/resource/ResourceException;

    .line 165
    .local v0, "re":Lorg/restlet/resource/ResourceException;
    invoke-virtual {v0}, Lorg/restlet/resource/ResourceException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 167
    new-instance v1, Lorg/restlet/data/Status;

    .end local v1    # "result":Lorg/restlet/data/Status;
    invoke-virtual {v0}, Lorg/restlet/resource/ResourceException;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    invoke-virtual {v0}, Lorg/restlet/resource/ResourceException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 175
    .end local v0    # "re":Lorg/restlet/resource/ResourceException;
    .restart local v1    # "result":Lorg/restlet/data/Status;
    :goto_0
    return-object v1

    .line 169
    .restart local v0    # "re":Lorg/restlet/resource/ResourceException;
    :cond_0
    invoke-virtual {v0}, Lorg/restlet/resource/ResourceException;->getStatus()Lorg/restlet/data/Status;

    move-result-object v1

    goto :goto_0

    .line 172
    .end local v0    # "re":Lorg/restlet/resource/ResourceException;
    :cond_1
    new-instance v1, Lorg/restlet/data/Status;

    .end local v1    # "result":Lorg/restlet/data/Status;
    sget-object v2, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-direct {v1, v2, p1}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .restart local v1    # "result":Lorg/restlet/data/Status;
    goto :goto_0
.end method

.method public getStatus(Ljava/lang/Throwable;Lorg/restlet/resource/Resource;)Lorg/restlet/data/Status;
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "resource"    # Lorg/restlet/resource/Resource;

    .prologue
    const/4 v0, 0x0

    .line 191
    if-nez p2, :cond_0

    move-object v1, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Lorg/restlet/service/StatusService;->getStatus(Ljava/lang/Throwable;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/data/Status;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lorg/restlet/resource/Resource;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/restlet/resource/Resource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    goto :goto_1
.end method

.method public isOverwriting()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/restlet/service/StatusService;->overwriting:Z

    return v0
.end method

.method public setContactEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactEmail"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lorg/restlet/service/StatusService;->contactEmail:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setHomeRef(Lorg/restlet/data/Reference;)V
    .locals 0
    .param p1, "homeRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 223
    iput-object p1, p0, Lorg/restlet/service/StatusService;->homeRef:Lorg/restlet/data/Reference;

    .line 224
    return-void
.end method

.method public setOverwriting(Z)V
    .locals 0
    .param p1, "overwriting"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lorg/restlet/service/StatusService;->overwriting:Z

    .line 234
    return-void
.end method

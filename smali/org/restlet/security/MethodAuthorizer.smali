.class public Lorg/restlet/security/MethodAuthorizer;
.super Lorg/restlet/security/Authorizer;
.source "MethodAuthorizer.java"


# instance fields
.field private anonymousMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Method;",
            ">;"
        }
    .end annotation
.end field

.field private authenticatedMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/security/MethodAuthorizer;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/restlet/security/Authorizer;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/security/MethodAuthorizer;->anonymousMethods:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/security/MethodAuthorizer;->authenticatedMethods:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public authorize(Lorg/restlet/Request;Lorg/restlet/Response;)Z
    .locals 7
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "authorized":Z
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/data/ClientInfo;->isAuthenticated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 93
    invoke-virtual {p0}, Lorg/restlet/security/MethodAuthorizer;->getAuthenticatedMethods()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Method;

    .line 94
    .local v0, "authenticatedMethod":Lorg/restlet/data/Method;
    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v1, v5

    :goto_1
    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    .line 99
    .end local v0    # "authenticatedMethod":Lorg/restlet/data/Method;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/security/MethodAuthorizer;->getAnonymousMethods()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/data/Method;

    .line 100
    .local v2, "authorizedMethod":Lorg/restlet/data/Method;
    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v1, v5

    :goto_3
    goto :goto_2

    :cond_4
    move v1, v4

    goto :goto_3

    .line 105
    .end local v2    # "authorizedMethod":Lorg/restlet/data/Method;
    :cond_5
    return v1
.end method

.method public getAnonymousMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/restlet/security/MethodAuthorizer;->anonymousMethods:Ljava/util/List;

    return-object v0
.end method

.method public getAuthenticatedMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lorg/restlet/security/MethodAuthorizer;->authenticatedMethods:Ljava/util/List;

    return-object v0
.end method

.method public setAnonymousMethods(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "anonymousMethods":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Method;>;"
    invoke-virtual {p0}, Lorg/restlet/security/MethodAuthorizer;->getAnonymousMethods()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/security/MethodAuthorizer;->getAnonymousMethods()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lorg/restlet/security/MethodAuthorizer;->getAnonymousMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/restlet/security/MethodAuthorizer;->getAnonymousMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    :cond_0
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAuthenticatedMethods(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "authenticatedMethods":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Method;>;"
    invoke-virtual {p0}, Lorg/restlet/security/MethodAuthorizer;->getAuthenticatedMethods()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/security/MethodAuthorizer;->getAuthenticatedMethods()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lorg/restlet/security/MethodAuthorizer;->getAuthenticatedMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lorg/restlet/security/MethodAuthorizer;->getAuthenticatedMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    :cond_0
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

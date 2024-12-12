.class public Lorg/restlet/security/RoleAuthorizer;
.super Lorg/restlet/security/Authorizer;
.source "RoleAuthorizer.java"


# instance fields
.field private authorizedRoles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
            ">;"
        }
    .end annotation
.end field

.field private forbiddenRoles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
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

    invoke-direct {p0, v0}, Lorg/restlet/security/RoleAuthorizer;-><init>(Ljava/lang/String;)V

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

    iput-object v0, p0, Lorg/restlet/security/RoleAuthorizer;->authorizedRoles:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/security/RoleAuthorizer;->forbiddenRoles:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public authorize(Lorg/restlet/Request;Lorg/restlet/Response;)Z
    .locals 8
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "authorized":Z
    const/4 v2, 0x0

    .line 93
    .local v2, "forbidden":Z
    invoke-virtual {p0}, Lorg/restlet/security/RoleAuthorizer;->getAuthorizedRoles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 94
    const/4 v0, 0x1

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/security/RoleAuthorizer;->getForbiddenRoles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/security/Role;

    .line 105
    .local v3, "forbiddenRole":Lorg/restlet/security/Role;
    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v7

    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getRoles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_1
    move v2, v6

    :goto_1
    goto :goto_0

    .line 96
    .end local v3    # "forbiddenRole":Lorg/restlet/security/Role;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/security/RoleAuthorizer;->getAuthorizedRoles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/security/Role;

    .line 97
    .local v1, "authorizedRole":Lorg/restlet/security/Role;
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v7

    invoke-virtual {v7}, Lorg/restlet/data/ClientInfo;->getRoles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move v0, v6

    :goto_3
    goto :goto_2

    :cond_4
    move v0, v5

    goto :goto_3

    .end local v1    # "authorizedRole":Lorg/restlet/security/Role;
    .restart local v3    # "forbiddenRole":Lorg/restlet/security/Role;
    :cond_5
    move v2, v5

    .line 105
    goto :goto_1

    .line 110
    .end local v3    # "forbiddenRole":Lorg/restlet/security/Role;
    :cond_6
    if-eqz v0, :cond_7

    if-nez v2, :cond_7

    :goto_4
    return v6

    :cond_7
    move v6, v5

    goto :goto_4
.end method

.method public getAuthorizedRoles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lorg/restlet/security/RoleAuthorizer;->authorizedRoles:Ljava/util/List;

    return-object v0
.end method

.method public getForbiddenRoles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/restlet/security/RoleAuthorizer;->forbiddenRoles:Ljava/util/List;

    return-object v0
.end method

.method public setAuthorizedRoles(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "authorizedRoles":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    invoke-virtual {p0}, Lorg/restlet/security/RoleAuthorizer;->getAuthorizedRoles()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/security/RoleAuthorizer;->getAuthorizedRoles()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/restlet/security/RoleAuthorizer;->getAuthorizedRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lorg/restlet/security/RoleAuthorizer;->getAuthorizedRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    :cond_0
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setForbiddenRoles(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "forbiddenRoles":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    invoke-virtual {p0}, Lorg/restlet/security/RoleAuthorizer;->getForbiddenRoles()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/security/RoleAuthorizer;->getForbiddenRoles()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/restlet/security/RoleAuthorizer;->getForbiddenRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0}, Lorg/restlet/security/RoleAuthorizer;->getForbiddenRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    :cond_0
    monitor-exit v1

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

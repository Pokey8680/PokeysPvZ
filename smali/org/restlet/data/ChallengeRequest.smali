.class public final Lorg/restlet/data/ChallengeRequest;
.super Lorg/restlet/data/ChallengeMessage;
.source "ChallengeRequest.java"


# instance fields
.field private volatile domainRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Reference;",
            ">;"
        }
    .end annotation
.end field

.field private volatile qualityOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile stale:Z


# direct methods
.method public constructor <init>(Lorg/restlet/data/ChallengeScheme;)V
    .locals 1
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/data/ChallengeRequest;-><init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;)V
    .locals 1
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/restlet/data/ChallengeMessage;-><init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;)V

    .line 81
    iput-object v0, p0, Lorg/restlet/data/ChallengeRequest;->domainRefs:Ljava/util/List;

    .line 82
    iput-object v0, p0, Lorg/restlet/data/ChallengeRequest;->qualityOptions:Ljava/util/List;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/data/ChallengeRequest;->stale:Z

    .line 84
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    if-ne p1, p0, :cond_1

    move v0, v2

    .line 92
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_0

    .line 95
    instance-of v4, p1, Lorg/restlet/data/ChallengeRequest;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 96
    check-cast v1, Lorg/restlet/data/ChallengeRequest;

    .line 97
    .local v1, "that":Lorg/restlet/data/ChallengeRequest;
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeRequest;->getParameters()Lorg/restlet/util/Series;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeRequest;->getParameters()Lorg/restlet/util/Series;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/restlet/util/Series;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeRequest;->getRealm()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeRequest;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeRequest;->getRealm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 106
    :goto_1
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeRequest;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 108
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeRequest;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v2

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeRequest;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/ChallengeScheme;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    .end local v1    # "that":Lorg/restlet/data/ChallengeRequest;
    :cond_0
    :goto_2
    return v0

    .end local v0    # "result":Z
    :cond_1
    move v0, v3

    .line 89
    goto :goto_0

    .line 103
    .restart local v0    # "result":Z
    .restart local v1    # "that":Lorg/restlet/data/ChallengeRequest;
    :cond_2
    invoke-virtual {v1}, Lorg/restlet/data/ChallengeRequest;->getRealm()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move v0, v2

    :goto_3
    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_3

    .line 110
    :cond_4
    invoke-virtual {v1}, Lorg/restlet/data/ChallengeRequest;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v4

    if-nez v4, :cond_5

    move v0, v2

    :goto_4
    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_4
.end method

.method public getDomainRefs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Reference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/restlet/data/ChallengeRequest;->domainRefs:Ljava/util/List;

    .line 130
    .local v0, "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    if-nez v0, :cond_1

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/ChallengeRequest;->domainRefs:Ljava/util/List;

    .line 133
    if-nez v0, :cond_0

    .line 134
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    .local v1, "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/ChallengeRequest;->domainRefs:Ljava/util/List;

    .line 135
    iget-object v2, p0, Lorg/restlet/data/ChallengeRequest;->domainRefs:Ljava/util/List;

    new-instance v3, Lorg/restlet/data/Reference;

    const-string v4, "/"

    invoke-direct {v3, v4}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 137
    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    .restart local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 139
    :cond_1
    return-object v0

    .line 137
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    .restart local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    .restart local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    goto :goto_0
.end method

.method public getQualityOptions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/restlet/data/ChallengeRequest;->qualityOptions:Ljava/util/List;

    .line 151
    .local v0, "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/ChallengeRequest;->qualityOptions:Ljava/util/List;

    .line 154
    if-nez v0, :cond_0

    .line 155
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/ChallengeRequest;->qualityOptions:Ljava/util/List;

    .line 156
    iget-object v2, p0, Lorg/restlet/data/ChallengeRequest;->qualityOptions:Ljava/util/List;

    const-string v3, "auth"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 158
    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 160
    :cond_1
    return-object v0

    .line 158
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public isStale()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/restlet/data/ChallengeRequest;->stale:Z

    return v0
.end method

.method public setDomainRefs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Reference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "domainRefs":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    iput-object p1, p0, Lorg/restlet/data/ChallengeRequest;->domainRefs:Ljava/util/List;

    .line 181
    return-void
.end method

.method public setDomainUris(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "domainUris":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 195
    .local v0, "domainRefs":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    if-eqz p1, :cond_0

    .line 196
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v0    # "domainRefs":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 198
    .restart local v0    # "domainRefs":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .local v1, "domainUri":Ljava/lang/String;
    new-instance v3, Lorg/restlet/data/Reference;

    invoke-direct {v3, v1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v1    # "domainUri":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0, v0}, Lorg/restlet/data/ChallengeRequest;->setDomainRefs(Ljava/util/List;)V

    .line 204
    return-void
.end method

.method public setQualityOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "qualityOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/restlet/data/ChallengeRequest;->qualityOptions:Ljava/util/List;

    .line 215
    return-void
.end method

.method public setStale(Z)V
    .locals 0
    .param p1, "stale"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lorg/restlet/data/ChallengeRequest;->stale:Z

    .line 225
    return-void
.end method

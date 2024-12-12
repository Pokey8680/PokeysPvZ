.class public abstract Lorg/restlet/security/Realm;
.super Ljava/lang/Object;
.source "Realm.java"


# instance fields
.field private volatile enroler:Lorg/restlet/security/Enroler;

.field private volatile name:Ljava/lang/String;

.field private final parameters:Lorg/restlet/util/Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private volatile started:Z

.field private volatile verifier:Lorg/restlet/security/Verifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0, v0}, Lorg/restlet/security/Realm;-><init>(Lorg/restlet/security/Verifier;Lorg/restlet/security/Enroler;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/restlet/security/Verifier;Lorg/restlet/security/Enroler;)V
    .locals 3
    .param p1, "verifier"    # Lorg/restlet/security/Verifier;
    .param p2, "enroler"    # Lorg/restlet/security/Enroler;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lorg/restlet/security/Realm;->enroler:Lorg/restlet/security/Enroler;

    .line 88
    iput-object p1, p0, Lorg/restlet/security/Realm;->verifier:Lorg/restlet/security/Verifier;

    .line 89
    new-instance v0, Lorg/restlet/util/Series;

    const-class v1, Lorg/restlet/data/Parameter;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    iput-object v0, p0, Lorg/restlet/security/Realm;->parameters:Lorg/restlet/util/Series;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/security/Realm;->started:Z

    .line 92
    return-void
.end method


# virtual methods
.method public getEnroler()Lorg/restlet/security/Enroler;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/restlet/security/Realm;->enroler:Lorg/restlet/security/Enroler;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/restlet/security/Realm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Lorg/restlet/util/Series;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/restlet/security/Realm;->parameters:Lorg/restlet/util/Series;

    return-object v0
.end method

.method public getVerifier()Lorg/restlet/security/Verifier;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/restlet/security/Realm;->verifier:Lorg/restlet/security/Verifier;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/restlet/security/Realm;->started:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lorg/restlet/security/Realm;->started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnroler(Lorg/restlet/security/Enroler;)V
    .locals 0
    .param p1, "enroler"    # Lorg/restlet/security/Enroler;

    .prologue
    .line 159
    iput-object p1, p0, Lorg/restlet/security/Realm;->enroler:Lorg/restlet/security/Enroler;

    .line 160
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/restlet/security/Realm;->name:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setParameters(Lorg/restlet/util/Series;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    invoke-virtual {p0}, Lorg/restlet/security/Realm;->getParameters()Lorg/restlet/util/Series;

    move-result-object v1

    monitor-enter v1

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/security/Realm;->getParameters()Lorg/restlet/util/Series;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lorg/restlet/security/Realm;->getParameters()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/util/Series;->clear()V

    .line 184
    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lorg/restlet/security/Realm;->getParameters()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/Series;->addAll(Ljava/util/Collection;)Z

    .line 188
    :cond_0
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVerifier(Lorg/restlet/security/Verifier;)V
    .locals 0
    .param p1, "verifier"    # Lorg/restlet/security/Verifier;

    .prologue
    .line 199
    iput-object p1, p0, Lorg/restlet/security/Realm;->verifier:Lorg/restlet/security/Verifier;

    .line 200
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 204
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/restlet/security/Realm;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/restlet/security/Realm;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/restlet/security/Realm;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

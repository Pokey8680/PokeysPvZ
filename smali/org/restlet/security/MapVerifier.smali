.class public Lorg/restlet/security/MapVerifier;
.super Lorg/restlet/security/LocalVerifier;
.source "MapVerifier.java"


# instance fields
.field private final localSecrets:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/restlet/security/MapVerifier;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "[C>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "localSecrets":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;[C>;"
    invoke-direct {p0}, Lorg/restlet/security/LocalVerifier;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/restlet/security/MapVerifier;->localSecrets:Ljava/util/concurrent/ConcurrentMap;

    .line 66
    return-void
.end method


# virtual methods
.method public getLocalSecret(Ljava/lang/String;)[C
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 70
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/security/MapVerifier;->getLocalSecrets()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0
.end method

.method public getLocalSecrets()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/restlet/security/MapVerifier;->localSecrets:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public setLocalSecrets(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[C>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "localSecrets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[C>;"
    invoke-virtual {p0}, Lorg/restlet/security/MapVerifier;->getLocalSecrets()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/security/MapVerifier;->getLocalSecrets()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/restlet/security/MapVerifier;->getLocalSecrets()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/restlet/security/MapVerifier;->getLocalSecrets()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->putAll(Ljava/util/Map;)V

    .line 98
    :cond_0
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

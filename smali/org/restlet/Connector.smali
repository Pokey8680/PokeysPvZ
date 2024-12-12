.class public abstract Lorg/restlet/Connector;
.super Lorg/restlet/Restlet;
.source "Connector.java"


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/Connector;-><init>(Lorg/restlet/Context;Ljava/util/List;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    invoke-direct {p0, p1}, Lorg/restlet/Restlet;-><init>(Lorg/restlet/Context;)V

    .line 91
    if-nez p2, :cond_0

    .line 92
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/Connector;->protocols:Ljava/util/List;

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/restlet/Connector;->protocols:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lorg/restlet/Connector;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public abstract isAvailable()Z
.end method

.method public setProtocols(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    invoke-virtual {p0}, Lorg/restlet/Connector;->getProtocols()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Connector;->getProtocols()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/restlet/Connector;->getProtocols()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0}, Lorg/restlet/Connector;->getProtocols()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    :cond_0
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

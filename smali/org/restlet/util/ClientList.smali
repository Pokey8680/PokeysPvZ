.class public final Lorg/restlet/util/ClientList;
.super Lorg/restlet/util/WrapperList;
.source "ClientList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/util/WrapperList",
        "<",
        "Lorg/restlet/Client;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile context:Lorg/restlet/Context;


# direct methods
.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {p0, v0}, Lorg/restlet/util/WrapperList;-><init>(Ljava/util/List;)V

    .line 60
    iput-object p1, p0, Lorg/restlet/util/ClientList;->context:Lorg/restlet/Context;

    .line 61
    return-void
.end method


# virtual methods
.method public add(Lorg/restlet/data/Protocol;)Lorg/restlet/Client;
    .locals 2
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;

    .prologue
    .line 81
    new-instance v0, Lorg/restlet/Client;

    invoke-direct {v0, p1}, Lorg/restlet/Client;-><init>(Lorg/restlet/data/Protocol;)V

    .line 82
    .local v0, "result":Lorg/restlet/Client;
    invoke-virtual {p0}, Lorg/restlet/util/ClientList;->getContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/Client;->setContext(Lorg/restlet/Context;)V

    .line 83
    invoke-virtual {p0, v0}, Lorg/restlet/util/ClientList;->add(Lorg/restlet/Client;)Z

    .line 84
    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lorg/restlet/Client;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/util/ClientList;->add(Lorg/restlet/Client;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/restlet/Client;)Z
    .locals 1
    .param p1, "client"    # Lorg/restlet/Client;

    .prologue
    .line 66
    invoke-virtual {p1}, Lorg/restlet/Client;->getContext()Lorg/restlet/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/restlet/util/ClientList;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/restlet/Client;->setContext(Lorg/restlet/Context;)V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lorg/restlet/util/WrapperList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getContext()Lorg/restlet/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/restlet/util/ClientList;->context:Lorg/restlet/Context;

    return-object v0
.end method

.method public setContext(Lorg/restlet/Context;)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/restlet/util/ClientList;->context:Lorg/restlet/Context;

    .line 104
    return-void
.end method

.class public final Lorg/restlet/util/ServerList;
.super Lorg/restlet/util/WrapperList;
.source "ServerList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/util/WrapperList",
        "<",
        "Lorg/restlet/Server;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile context:Lorg/restlet/Context;

.field private volatile next:Lorg/restlet/Restlet;


# direct methods
.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/Restlet;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {p0, v0}, Lorg/restlet/util/WrapperList;-><init>(Ljava/util/List;)V

    .line 68
    iput-object p1, p0, Lorg/restlet/util/ServerList;->context:Lorg/restlet/Context;

    .line 69
    iput-object p2, p0, Lorg/restlet/util/ServerList;->next:Lorg/restlet/Restlet;

    .line 70
    return-void
.end method


# virtual methods
.method public add(Lorg/restlet/data/Protocol;)Lorg/restlet/Server;
    .locals 4
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;

    .prologue
    .line 80
    new-instance v0, Lorg/restlet/Server;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v2

    invoke-virtual {p0}, Lorg/restlet/util/ServerList;->getNext()Lorg/restlet/Restlet;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/restlet/Server;-><init>(Lorg/restlet/data/Protocol;Ljava/lang/String;ILorg/restlet/Restlet;)V

    .line 82
    .local v0, "result":Lorg/restlet/Server;
    invoke-virtual {p0, v0}, Lorg/restlet/util/ServerList;->add(Lorg/restlet/Server;)Z

    .line 83
    return-object v0
.end method

.method public add(Lorg/restlet/data/Protocol;I)Lorg/restlet/Server;
    .locals 3
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .param p2, "port"    # I

    .prologue
    .line 97
    new-instance v0, Lorg/restlet/Server;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/restlet/util/ServerList;->getNext()Lorg/restlet/Restlet;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/restlet/Server;-><init>(Lorg/restlet/data/Protocol;Ljava/lang/String;ILorg/restlet/Restlet;)V

    .line 98
    .local v0, "result":Lorg/restlet/Server;
    invoke-virtual {p0, v0}, Lorg/restlet/util/ServerList;->add(Lorg/restlet/Server;)Z

    .line 99
    return-object v0
.end method

.method public add(Lorg/restlet/data/Protocol;Ljava/lang/String;I)Lorg/restlet/Server;
    .locals 2
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 116
    new-instance v0, Lorg/restlet/Server;

    invoke-virtual {p0}, Lorg/restlet/util/ServerList;->getNext()Lorg/restlet/Restlet;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/restlet/Server;-><init>(Lorg/restlet/data/Protocol;Ljava/lang/String;ILorg/restlet/Restlet;)V

    .line 117
    .local v0, "result":Lorg/restlet/Server;
    invoke-virtual {p0, v0}, Lorg/restlet/util/ServerList;->add(Lorg/restlet/Server;)Z

    .line 118
    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lorg/restlet/Server;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/util/ServerList;->add(Lorg/restlet/Server;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/restlet/Server;)Z
    .locals 1
    .param p1, "server"    # Lorg/restlet/Server;

    .prologue
    .line 129
    invoke-virtual {p1}, Lorg/restlet/Server;->getContext()Lorg/restlet/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/restlet/util/ServerList;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/restlet/Server;->setContext(Lorg/restlet/Context;)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/util/ServerList;->getNext()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/restlet/Server;->setNext(Lorg/restlet/Restlet;)V

    .line 134
    invoke-super {p0, p1}, Lorg/restlet/util/WrapperList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getContext()Lorg/restlet/Context;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/restlet/util/ServerList;->context:Lorg/restlet/Context;

    return-object v0
.end method

.method public getNext()Lorg/restlet/Restlet;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/restlet/util/ServerList;->next:Lorg/restlet/Restlet;

    return-object v0
.end method

.method public setContext(Lorg/restlet/Context;)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 162
    iput-object p1, p0, Lorg/restlet/util/ServerList;->context:Lorg/restlet/Context;

    .line 163
    return-void
.end method

.method public setNext(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    .local p1, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    const-class v0, Lorg/restlet/resource/Finder;

    invoke-virtual {p0}, Lorg/restlet/util/ServerList;->getContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/util/ServerList;->getContext()Lorg/restlet/Context;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lorg/restlet/resource/Finder;->createFinder(Ljava/lang/Class;Ljava/lang/Class;Lorg/restlet/Context;Ljava/util/logging/Logger;)Lorg/restlet/resource/Finder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/util/ServerList;->setNext(Lorg/restlet/Restlet;)V

    .line 178
    return-void
.end method

.method public setNext(Lorg/restlet/Restlet;)V
    .locals 0
    .param p1, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/restlet/util/ServerList;->next:Lorg/restlet/Restlet;

    .line 188
    return-void
.end method

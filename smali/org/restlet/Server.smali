.class public Lorg/restlet/Server;
.super Lorg/restlet/Connector;
.source "Server.java"


# instance fields
.field private volatile address:Ljava/lang/String;

.field private final helper:Lorg/restlet/engine/RestletHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/engine/RestletHelper",
            "<",
            "Lorg/restlet/Server;",
            ">;"
        }
    .end annotation
.end field

.field private volatile next:Lorg/restlet/Restlet;

.field private volatile port:I


# direct methods
.method public constructor <init>(Ljava/util/List;ILorg/restlet/Restlet;)V
    .locals 1
    .param p2, "port"    # I
    .param p3, "next"    # Lorg/restlet/Restlet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;I",
            "Lorg/restlet/Restlet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    const/4 v0, 0x0

    check-cast v0, Lorg/restlet/Context;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Ljava/util/List;ILorg/restlet/Restlet;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;ILorg/restlet/Restlet;)V
    .locals 6
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "next"    # Lorg/restlet/Restlet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lorg/restlet/Restlet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    const/4 v1, 0x0

    check-cast v1, Lorg/restlet/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Ljava/util/List;Ljava/lang/String;ILorg/restlet/Restlet;)V

    .line 292
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Ljava/util/List;ILorg/restlet/Restlet;)V
    .locals 6
    .param p1, "context"    # Lorg/restlet/Context;
    .param p3, "port"    # I
    .param p4, "next"    # Lorg/restlet/Restlet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;I",
            "Lorg/restlet/Restlet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Ljava/util/List;Ljava/lang/String;ILorg/restlet/Restlet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Ljava/util/List;Ljava/lang/String;ILorg/restlet/Restlet;)V
    .locals 7
    .param p1, "context"    # Lorg/restlet/Context;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "next"    # Lorg/restlet/Restlet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lorg/restlet/Restlet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Ljava/util/List;Ljava/lang/String;ILorg/restlet/Restlet;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Ljava/util/List;Ljava/lang/String;ILorg/restlet/Restlet;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Lorg/restlet/Context;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "next"    # Lorg/restlet/Restlet;
    .param p6, "helperClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lorg/restlet/Restlet;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    invoke-direct {p0, p1, p2}, Lorg/restlet/Connector;-><init>(Lorg/restlet/Context;Ljava/util/List;)V

    .line 131
    iput-object p3, p0, Lorg/restlet/Server;->address:Ljava/lang/String;

    .line 132
    iput p4, p0, Lorg/restlet/Server;->port:I

    .line 133
    iput-object p5, p0, Lorg/restlet/Server;->next:Lorg/restlet/Restlet;

    .line 135
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0, p0, p6}, Lorg/restlet/engine/Engine;->createHelper(Lorg/restlet/Server;Ljava/lang/String;)Lorg/restlet/engine/ConnectorHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/Server;->helper:Lorg/restlet/engine/RestletHelper;

    .line 141
    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/restlet/Server;->helper:Lorg/restlet/engine/RestletHelper;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p1}, Lorg/restlet/Context;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    const-string v1, "org.restlet.engine.helper"

    iget-object v2, p0, Lorg/restlet/Server;->helper:Lorg/restlet/engine/RestletHelper;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    return-void

    .line 138
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/Server;->helper:Lorg/restlet/engine/RestletHelper;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "protocol"    # Lorg/restlet/data/Protocol;

    .prologue
    .line 156
    if-nez p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;I)V

    .line 158
    return-void

    .line 156
    :cond_0
    invoke-virtual {p2}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;I)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "protocol"    # Lorg/restlet/data/Protocol;
    .param p3, "port"    # I

    .prologue
    .line 187
    const/4 v0, 0x0

    check-cast v0, Lorg/restlet/Restlet;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;ILorg/restlet/Restlet;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;ILjava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "protocol"    # Lorg/restlet/data/Protocol;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Context;",
            "Lorg/restlet/data/Protocol;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p4, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;I)V

    .line 205
    invoke-virtual {p0, p4}, Lorg/restlet/Server;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/Server;->setNext(Lorg/restlet/Restlet;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;ILorg/restlet/Restlet;)V
    .locals 6
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "protocol"    # Lorg/restlet/data/Protocol;
    .param p3, "port"    # I
    .param p4, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 221
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;Ljava/lang/String;ILorg/restlet/Restlet;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "protocol"    # Lorg/restlet/data/Protocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Context;",
            "Lorg/restlet/data/Protocol;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p3, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    invoke-direct {p0, p1, p2}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;)V

    .line 173
    invoke-virtual {p0, p3}, Lorg/restlet/Server;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/Server;->setNext(Lorg/restlet/Restlet;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;Ljava/lang/String;ILorg/restlet/Restlet;)V
    .locals 6
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "protocol"    # Lorg/restlet/data/Protocol;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 257
    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Ljava/util/List;Ljava/lang/String;ILorg/restlet/Restlet;)V

    .line 259
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/restlet/data/Protocol;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;Lorg/restlet/Restlet;)V
    .locals 6
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "protocol"    # Lorg/restlet/data/Protocol;
    .param p3, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 235
    const/4 v3, 0x0

    if-nez p2, :cond_0

    const/4 v4, -0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;Ljava/lang/String;ILorg/restlet/Restlet;)V

    .line 237
    return-void

    .line 235
    :cond_0
    invoke-virtual {p2}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v4

    goto :goto_0
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;)V
    .locals 2
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;

    .prologue
    const/4 v1, 0x0

    .line 301
    move-object v0, v1

    check-cast v0, Lorg/restlet/Context;

    check-cast v1, Lorg/restlet/Restlet;

    invoke-direct {p0, v0, p1, v1}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;Lorg/restlet/Restlet;)V

    .line 302
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;I)V
    .locals 2
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .param p2, "port"    # I

    .prologue
    const/4 v1, 0x0

    .line 326
    move-object v0, v1

    check-cast v0, Lorg/restlet/Context;

    check-cast v1, Lorg/restlet/Restlet;

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;ILorg/restlet/Restlet;)V

    .line 327
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;ILjava/lang/Class;)V
    .locals 1
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/Protocol;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p3, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    invoke-direct {p0, p1, p2}, Lorg/restlet/Server;-><init>(Lorg/restlet/data/Protocol;I)V

    .line 342
    invoke-virtual {p0, p3}, Lorg/restlet/Server;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/Server;->setNext(Lorg/restlet/Restlet;)V

    .line 343
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;ILorg/restlet/Restlet;)V
    .locals 1
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .param p2, "port"    # I
    .param p3, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 356
    const/4 v0, 0x0

    check-cast v0, Lorg/restlet/Context;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;ILorg/restlet/Restlet;)V

    .line 357
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;Ljava/lang/Class;)V
    .locals 1
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/Protocol;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p2, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    const/4 v0, 0x0

    check-cast v0, Lorg/restlet/Context;

    invoke-direct {p0, v0, p1}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;)V

    .line 314
    invoke-virtual {p0, p2}, Lorg/restlet/Server;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/Server;->setNext(Lorg/restlet/Restlet;)V

    .line 315
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;Ljava/lang/String;)V
    .locals 6
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 382
    move-object v1, v5

    check-cast v1, Lorg/restlet/Context;

    invoke-virtual {p1}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;Ljava/lang/String;ILorg/restlet/Restlet;)V

    .line 383
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;Ljava/lang/String;I)V
    .locals 6
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v5, 0x0

    .line 416
    move-object v1, v5

    check-cast v1, Lorg/restlet/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;Ljava/lang/String;ILorg/restlet/Restlet;)V

    .line 417
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;Ljava/lang/String;ILorg/restlet/Restlet;)V
    .locals 6
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 434
    const/4 v1, 0x0

    check-cast v1, Lorg/restlet/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;Ljava/lang/String;ILorg/restlet/Restlet;)V

    .line 435
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/Protocol;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p3, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    invoke-direct {p0, p1, p2}, Lorg/restlet/Server;-><init>(Lorg/restlet/data/Protocol;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0, p3}, Lorg/restlet/Server;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/Server;->setNext(Lorg/restlet/Restlet;)V

    .line 401
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;Ljava/lang/String;Lorg/restlet/Restlet;)V
    .locals 6
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 450
    const/4 v1, 0x0

    check-cast v1, Lorg/restlet/Context;

    invoke-virtual {p1}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;Ljava/lang/String;ILorg/restlet/Restlet;)V

    .line 451
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;Lorg/restlet/Restlet;)V
    .locals 1
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;
    .param p2, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 368
    const/4 v0, 0x0

    check-cast v0, Lorg/restlet/Context;

    invoke-direct {p0, v0, p1, p2}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;Lorg/restlet/Restlet;)V

    .line 369
    return-void
.end method

.method private getHelper()Lorg/restlet/engine/RestletHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/engine/RestletHelper",
            "<",
            "Lorg/restlet/Server;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lorg/restlet/Server;->helper:Lorg/restlet/engine/RestletHelper;

    return-object v0
.end method


# virtual methods
.method public getActualPort()I
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0}, Lorg/restlet/Server;->getPort()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/Server;->getEphemeralPort()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/Server;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lorg/restlet/Server;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getEphemeralPort()I
    .locals 2

    .prologue
    .line 481
    invoke-direct {p0}, Lorg/restlet/Server;->getHelper()Lorg/restlet/engine/RestletHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/RestletHelper;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ephemeralPort"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNext()Lorg/restlet/Restlet;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lorg/restlet/Server;->next:Lorg/restlet/Restlet;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lorg/restlet/Server;->port:I

    return v0
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 513
    invoke-super {p0, p1, p2}, Lorg/restlet/Connector;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 515
    invoke-virtual {p0}, Lorg/restlet/Server;->getNext()Lorg/restlet/Restlet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lorg/restlet/Server;->getNext()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 518
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lorg/restlet/Server;->next:Lorg/restlet/Restlet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 536
    invoke-direct {p0}, Lorg/restlet/Server;->getHelper()Lorg/restlet/engine/RestletHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 546
    iput-object p1, p0, Lorg/restlet/Server;->address:Ljava/lang/String;

    .line 547
    return-void
.end method

.method public setNext(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    invoke-virtual {p0, p1}, Lorg/restlet/Server;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/Server;->setNext(Lorg/restlet/Restlet;)V

    .line 559
    return-void
.end method

.method public setNext(Lorg/restlet/Restlet;)V
    .locals 0
    .param p1, "next"    # Lorg/restlet/Restlet;

    .prologue
    .line 568
    iput-object p1, p0, Lorg/restlet/Server;->next:Lorg/restlet/Restlet;

    .line 569
    return-void
.end method

.method protected setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 581
    iput p1, p0, Lorg/restlet/Server;->port:I

    .line 582
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
    .line 586
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Server;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-super {p0}, Lorg/restlet/Connector;->start()V

    .line 589
    invoke-direct {p0}, Lorg/restlet/Server;->getHelper()Lorg/restlet/engine/RestletHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    invoke-direct {p0}, Lorg/restlet/Server;->getHelper()Lorg/restlet/engine/RestletHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/RestletHelper;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :cond_0
    monitor-exit p0

    return-void

    .line 586
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
    .line 597
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Server;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-super {p0}, Lorg/restlet/Connector;->stop()V

    .line 600
    invoke-direct {p0}, Lorg/restlet/Server;->getHelper()Lorg/restlet/engine/RestletHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    invoke-direct {p0}, Lorg/restlet/Server;->getHelper()Lorg/restlet/engine/RestletHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/RestletHelper;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_0
    monitor-exit p0

    return-void

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

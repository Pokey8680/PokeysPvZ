.class public Lorg/restlet/engine/local/RiapServerHelper;
.super Lorg/restlet/engine/ServerHelper;
.source "RiapServerHelper.java"


# static fields
.field public static instance:Lorg/restlet/engine/local/RiapServerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lorg/restlet/engine/local/RiapServerHelper;->instance:Lorg/restlet/engine/local/RiapServerHelper;

    return-void
.end method

.method public constructor <init>(Lorg/restlet/Server;)V
    .locals 2
    .param p1, "server"    # Lorg/restlet/Server;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/restlet/engine/ServerHelper;-><init>(Lorg/restlet/Server;)V

    .line 59
    invoke-virtual {p0}, Lorg/restlet/engine/local/RiapServerHelper;->getProtocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Protocol;->RIAP:Lorg/restlet/data/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    if-eqz p1, :cond_1

    sget-object v0, Lorg/restlet/engine/local/RiapServerHelper;->instance:Lorg/restlet/engine/local/RiapServerHelper;

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lorg/restlet/engine/local/RiapServerHelper;->instance:Lorg/restlet/engine/local/RiapServerHelper;

    if-nez v0, :cond_0

    .line 65
    sput-object p0, Lorg/restlet/engine/local/RiapServerHelper;->instance:Lorg/restlet/engine/local/RiapServerHelper;

    .line 67
    :cond_0
    monitor-exit v1

    .line 69
    :cond_1
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

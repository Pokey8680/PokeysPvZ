.class public Lorg/restlet/engine/log/LoggingThreadFactory;
.super Ljava/lang/Object;
.source "LoggingThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/restlet/engine/log/LoggingThreadFactory$1;,
        Lorg/restlet/engine/log/LoggingThreadFactory$LoggingExceptionHandler;
    }
.end annotation


# instance fields
.field private final daemon:Z

.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/engine/log/LoggingThreadFactory;-><init>(Ljava/util/logging/Logger;Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Logger;Z)V
    .locals 0
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "daemon"    # Z

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/restlet/engine/log/LoggingThreadFactory;->logger:Ljava/util/logging/Logger;

    .line 85
    iput-boolean p2, p0, Lorg/restlet/engine/log/LoggingThreadFactory;->daemon:Z

    .line 86
    return-void
.end method

.method static synthetic access$000(Lorg/restlet/engine/log/LoggingThreadFactory;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/restlet/engine/log/LoggingThreadFactory;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/restlet/engine/log/LoggingThreadFactory;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 95
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    .local v0, "result":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restlet-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 97
    new-instance v1, Lorg/restlet/engine/log/LoggingThreadFactory$LoggingExceptionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/restlet/engine/log/LoggingThreadFactory$LoggingExceptionHandler;-><init>(Lorg/restlet/engine/log/LoggingThreadFactory;Lorg/restlet/engine/log/LoggingThreadFactory$1;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 98
    iget-boolean v1, p0, Lorg/restlet/engine/log/LoggingThreadFactory;->daemon:Z

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 99
    return-object v0
.end method

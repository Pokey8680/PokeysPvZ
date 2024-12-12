.class public Lorg/codegist/common/log/LogCatLogger;
.super Lorg/codegist/common/log/AbstractLogger;
.source "LogCatLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final LOGGER_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/codegist/common/log/LogCatLogger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/common/log/LogCatLogger;->LOGGER_TAG:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->LOGGER_TAG:Ljava/lang/String;

    const-string v1, "CodeGist"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/codegist/common/log/AbstractLogger;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/codegist/common/log/LogCatLogger;->name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private msg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 43
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codegist/common/log/LogCatLogger;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isDebugOn()Z
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isErrorOn()Z
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isInfoOn()Z
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isTraceOn()Z
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isWarnOn()Z
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected logDebug(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 83
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/codegist/common/log/LogCatLogger;->msg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method protected logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/codegist/common/log/LogCatLogger;->msg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    return-void
.end method

.method protected logError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 53
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/codegist/common/log/LogCatLogger;->msg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method protected logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/codegist/common/log/LogCatLogger;->msg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    return-void
.end method

.method protected logInfo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 73
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/codegist/common/log/LogCatLogger;->msg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method protected logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/codegist/common/log/LogCatLogger;->msg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    return-void
.end method

.method protected logTrace(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 93
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/codegist/common/log/LogCatLogger;->msg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method protected logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/codegist/common/log/LogCatLogger;->msg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    return-void
.end method

.method protected logWarn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 63
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/codegist/common/log/LogCatLogger;->msg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method protected logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    sget-object v0, Lorg/codegist/common/log/LogCatLogger;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/codegist/common/log/LogCatLogger;->msg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    return-void
.end method

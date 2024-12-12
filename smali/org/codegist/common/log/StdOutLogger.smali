.class public Lorg/codegist/common/log/StdOutLogger;
.super Lorg/codegist/common/log/AbstractLogger;
.source "StdOutLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FORMAT:Ljava/lang/String; = "%tc [%5s] - %s: %s\n"


# instance fields
.field private final name:Ljava/lang/String;

.field private final transient out:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/codegist/common/log/AbstractLogger;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/codegist/common/log/StdOutLogger;->out:Ljava/io/PrintWriter;

    .line 50
    iput-object p2, p0, Lorg/codegist/common/log/StdOutLogger;->name:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p1}, Lorg/codegist/common/log/StdOutLogger;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "lvl"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "error"    # Ljava/lang/Throwable;

    .prologue
    const/4 v6, 0x0

    .line 54
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    const-string v3, "%%"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/codegist/common/log/StdOutLogger;->out:Ljava/io/PrintWriter;

    const-string v2, "%tc [%5s] - %s: %s\n"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/codegist/common/log/StdOutLogger;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 56
    if-eqz p3, :cond_0

    iget-object v1, p0, Lorg/codegist/common/log/StdOutLogger;->out:Ljava/io/PrintWriter;

    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 57
    :cond_0
    iget-object v1, p0, Lorg/codegist/common/log/StdOutLogger;->out:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 58
    return-void

    .line 54
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isDebugOn()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isErrorOn()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public isInfoOn()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public isTraceOn()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public isWarnOn()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method protected logDebug(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codegist/common/log/StdOutLogger;->logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method protected logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    const-string v0, "DEBUG"

    invoke-direct {p0, v0, p1, p2}, Lorg/codegist/common/log/StdOutLogger;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method protected logError(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codegist/common/log/StdOutLogger;->logError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method protected logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    const-string v0, "ERROR"

    invoke-direct {p0, v0, p1, p2}, Lorg/codegist/common/log/StdOutLogger;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method protected logInfo(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codegist/common/log/StdOutLogger;->logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method protected logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    const-string v0, "INFO"

    invoke-direct {p0, v0, p1, p2}, Lorg/codegist/common/log/StdOutLogger;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method protected logTrace(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codegist/common/log/StdOutLogger;->logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 108
    return-void
.end method

.method protected logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 102
    const-string v0, "TRACE"

    invoke-direct {p0, v0, p1, p2}, Lorg/codegist/common/log/StdOutLogger;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 103
    return-void
.end method

.method protected logWarn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codegist/common/log/StdOutLogger;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method protected logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    const-string v0, "WARN"

    invoke-direct {p0, v0, p1, p2}, Lorg/codegist/common/log/StdOutLogger;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

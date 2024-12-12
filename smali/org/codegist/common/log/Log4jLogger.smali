.class public Lorg/codegist/common/log/Log4jLogger;
.super Lorg/codegist/common/log/AbstractLogger;
.source "Log4jLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final transient logger:Lorg/apache/log4j/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/codegist/common/log/AbstractLogger;-><init>()V

    .line 37
    invoke-static {p1}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    .line 38
    return-void
.end method


# virtual methods
.method public isDebugOn()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public isErrorOn()Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public isInfoOn()Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public isTraceOn()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public isWarnOn()Z
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method protected logDebug(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method protected logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method protected logError(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method protected logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method protected logInfo(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method protected logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method protected logTrace(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method protected logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method protected logWarn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method protected logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/codegist/common/log/Log4jLogger;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

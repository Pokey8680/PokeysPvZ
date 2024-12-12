.class public Lorg/codegist/common/log/Slf4jLogger;
.super Lorg/codegist/common/log/AbstractLogger;
.source "Slf4jLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final transient logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/codegist/common/log/AbstractLogger;-><init>()V

    .line 36
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    .line 37
    return-void
.end method


# virtual methods
.method public isDebugOn()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorOn()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoOn()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceOn()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnOn()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method protected logDebug(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method protected logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method protected logError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method protected logInfo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method protected logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method protected logTrace(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method protected logWarn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/codegist/common/log/Slf4jLogger;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method

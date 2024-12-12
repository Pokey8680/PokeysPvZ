.class public Lorg/codegist/common/log/ApacheCommonsLogger;
.super Lorg/codegist/common/log/AbstractLogger;
.source "ApacheCommonsLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final transient logger:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/codegist/common/log/AbstractLogger;-><init>()V

    .line 35
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    .line 36
    return-void
.end method


# virtual methods
.method public isDebugOn()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorOn()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoOn()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceOn()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnOn()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method protected logDebug(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method protected logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method protected logError(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method protected logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method protected logInfo(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method protected logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method protected logTrace(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method protected logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method protected logWarn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method protected logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/codegist/common/log/ApacheCommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

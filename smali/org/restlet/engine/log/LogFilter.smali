.class public Lorg/restlet/engine/log/LogFilter;
.super Lorg/restlet/routing/Filter;
.source "LogFilter.java"


# instance fields
.field private volatile logLogger:Ljava/util/logging/Logger;

.field protected volatile logService:Lorg/restlet/service/LogService;


# direct methods
.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/service/LogService;)V
    .locals 2
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "logService"    # Lorg/restlet/service/LogService;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/restlet/routing/Filter;-><init>(Lorg/restlet/Context;)V

    .line 74
    iput-object p2, p0, Lorg/restlet/engine/log/LogFilter;->logService:Lorg/restlet/service/LogService;

    .line 76
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p2}, Lorg/restlet/service/LogService;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p2}, Lorg/restlet/service/LogService;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/Engine;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/log/LogFilter;->logLogger:Ljava/util/logging/Logger;

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/log/LogUtils;->getBestClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/Engine;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/log/LogFilter;->logLogger:Ljava/util/logging/Logger;

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/log/LogUtils;->getBestClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/Engine;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/log/LogFilter;->logLogger:Ljava/util/logging/Logger;

    goto :goto_0
.end method


# virtual methods
.method protected afterHandle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 6
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 102
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/restlet/engine/log/LogFilter;->logLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    const-string v4, "org.restlet.startTime"

    invoke-interface {v1, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 105
    .local v2, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v0, v4

    .line 106
    .local v0, "duration":I
    iget-object v1, p0, Lorg/restlet/engine/log/LogFilter;->logLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v5, p0, Lorg/restlet/engine/log/LogFilter;->logService:Lorg/restlet/service/LogService;

    invoke-virtual {v5, p2, v0}, Lorg/restlet/service/LogService;->getResponseLogMessage(Lorg/restlet/Response;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 109
    .end local v0    # "duration":I
    .end local v2    # "startTime":J
    :cond_0
    return-void
.end method

.method protected beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 4
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 123
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    const-string v1, "org.restlet.startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lorg/restlet/engine/log/LogFilter;->logService:Lorg/restlet/service/LogService;

    invoke-virtual {v0, p1}, Lorg/restlet/service/LogService;->isLoggable(Lorg/restlet/Request;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/restlet/Request;->setLoggable(Z)V

    .line 129
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/restlet/engine/log/LogFilter;->logLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lorg/restlet/engine/log/LogFilter;->logLogger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing request to: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Unknown URI"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 136
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_1
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

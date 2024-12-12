.class public Lorg/restlet/engine/log/LoggerFacade;
.super Ljava/lang/Object;
.source "LoggerFacade.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnonymousLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Ljava/util/logging/Logger;->getAnonymousLogger()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public final getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/engine/log/LoggerFacade;->getLogger(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public final getLogger(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2
    .param p2, "defaultLoggerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 85
    .local v0, "loggerName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    if-nez v0, :cond_1

    .line 90
    move-object v0, p2

    .line 93
    :cond_1
    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0, v0}, Lorg/restlet/engine/log/LoggerFacade;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/log/LoggerFacade;->getAnonymousLogger()Ljava/util/logging/Logger;

    move-result-object v1

    goto :goto_0
.end method

.method public final getLogger(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "defaultLoggerName"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/restlet/engine/log/LoggerFacade;->getLogger(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

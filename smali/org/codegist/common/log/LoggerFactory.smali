.class Lorg/codegist/common/log/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# instance fields
.field private final flyweight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/Reference",
            "<",
            "Lorg/codegist/common/log/Logger;",
            ">;>;"
        }
    .end annotation
.end field

.field private final loggerCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/common/log/Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/common/log/Logger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "loggerCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/common/log/Logger;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/codegist/common/log/LoggerFactory;-><init>(Ljava/util/Map;Ljava/lang/Class;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/Reference",
            "<",
            "Lorg/codegist/common/log/Logger;",
            ">;>;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/common/log/Logger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "flyweight":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/Reference<Lorg/codegist/common/log/Logger;>;>;"
    .local p2, "loggerCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/common/log/Logger;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/codegist/common/log/LoggerFactory;->flyweight:Ljava/util/Map;

    .line 38
    iput-object p2, p0, Lorg/codegist/common/log/LoggerFactory;->loggerCls:Ljava/lang/Class;

    .line 39
    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codegist/common/log/Logger;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codegist/common/log/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lorg/codegist/common/log/Logger;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v4, p0, Lorg/codegist/common/log/LoggerFactory;->flyweight:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 54
    .local v2, "loggerRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/codegist/common/log/Logger;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codegist/common/log/Logger;

    move-object v1, v4

    .line 55
    .local v1, "logger":Lorg/codegist/common/log/Logger;
    :goto_0
    if-nez v1, :cond_0

    .line 57
    :try_start_0
    iget-object v4, p0, Lorg/codegist/common/log/LoggerFactory;->loggerCls:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "logger":Lorg/codegist/common/log/Logger;
    check-cast v1, Lorg/codegist/common/log/Logger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .restart local v1    # "logger":Lorg/codegist/common/log/Logger;
    :goto_1
    iget-object v4, p0, Lorg/codegist/common/log/LoggerFactory;->flyweight:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    return-object v1

    .line 54
    .end local v1    # "logger":Lorg/codegist/common/log/Logger;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v3

    .line 60
    .local v3, "retry":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lorg/codegist/common/log/LoggerFactory;->loggerCls:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codegist/common/log/Logger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v1    # "logger":Lorg/codegist/common/log/Logger;
    goto :goto_1

    .line 61
    .end local v1    # "logger":Lorg/codegist/common/log/Logger;
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

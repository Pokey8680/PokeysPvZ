.class final Lorg/codegist/common/log/LoggerProvider;
.super Ljava/lang/Object;
.source "LoggerProvider.java"


# static fields
.field private static final DEFAULT_FACTORY:Lorg/codegist/common/log/LoggerFactory;

.field static final LOGGER_CLASS_PROP:Ljava/lang/String; = "org.codegist.common.log.class"

.field private static final LOGGER_FACTORIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/common/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lorg/codegist/common/log/LoggerFactory;

    const-class v1, Lorg/codegist/common/log/NoOpLogger;

    invoke-direct {v0, v1}, Lorg/codegist/common/log/LoggerFactory;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/codegist/common/log/LoggerProvider;->DEFAULT_FACTORY:Lorg/codegist/common/log/LoggerFactory;

    .line 36
    new-instance v0, Lorg/codegist/common/log/LoggerProvider$1;

    invoke-direct {v0}, Lorg/codegist/common/log/LoggerProvider$1;-><init>()V

    sput-object v0, Lorg/codegist/common/log/LoggerProvider;->LOGGER_FACTORIES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static getAvailableLoggerFactory()Lorg/codegist/common/log/LoggerFactory;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lorg/codegist/common/log/LoggerProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 49
    .local v0, "cloader":Ljava/lang/ClassLoader;
    invoke-static {v0}, Lorg/codegist/common/log/LoggerProvider;->getAvailableLoggerFactory(Ljava/lang/ClassLoader;)Lorg/codegist/common/log/LoggerFactory;

    move-result-object v1

    return-object v1
.end method

.method static getAvailableLoggerFactory(Ljava/lang/ClassLoader;)Lorg/codegist/common/log/LoggerFactory;
    .locals 5
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 53
    const-string v3, "org.codegist.common.log.class"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 55
    :try_start_0
    new-instance v3, Lorg/codegist/common/log/LoggerFactory;

    const-string v4, "org.codegist.common.log.class"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/codegist/common/log/LoggerFactory;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v3

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v3, Lorg/codegist/common/log/LoggerProvider;->LOGGER_FACTORIES:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 61
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codegist/common/log/LoggerFactory;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p0}, Lorg/codegist/common/reflect/Classes;->isClassKnown(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codegist/common/log/LoggerFactory;

    goto :goto_0

    .line 65
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codegist/common/log/LoggerFactory;>;"
    :cond_2
    sget-object v3, Lorg/codegist/common/log/LoggerProvider;->DEFAULT_FACTORY:Lorg/codegist/common/log/LoggerFactory;

    goto :goto_0
.end method

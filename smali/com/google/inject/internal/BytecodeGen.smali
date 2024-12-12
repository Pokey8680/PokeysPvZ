.class public final Lcom/google/inject/internal/BytecodeGen;
.super Ljava/lang/Object;
.source "BytecodeGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;,
        Lcom/google/inject/internal/BytecodeGen$Visibility;,
        Lcom/google/inject/internal/BytecodeGen$SystemBridgeHolder;
    }
.end annotation


# static fields
.field private static final CGLIB_PACKAGE:Ljava/lang/String; = " "

.field private static final CLASS_LOADER_CACHE:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LoadingCache",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_LOADER_ENABLED:Z

.field static final GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

.field static final GUICE_INTERNAL_PACKAGE:Ljava/lang/String;

.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    const-class v1, Lcom/google/inject/internal/BytecodeGen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/inject/internal/BytecodeGen;->logger:Ljava/util/logging/Logger;

    .line 64
    const-class v1, Lcom/google/inject/internal/BytecodeGen;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Lcom/google/inject/internal/BytecodeGen;->canonicalize(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lcom/google/inject/internal/BytecodeGen;->GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

    .line 72
    const-class v1, Lcom/google/inject/internal/BytecodeGen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\.internal\\..*$"

    const-string v3, ".internal"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/inject/internal/BytecodeGen;->GUICE_INTERNAL_PACKAGE:Ljava/lang/String;

    .line 120
    const-string v1, "guice.custom.loader"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/inject/internal/BytecodeGen;->CUSTOM_LOADER_ENABLED:Z

    .line 130
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->newBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weakKeys()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weakValues()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    .line 131
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-boolean v1, Lcom/google/inject/internal/BytecodeGen;->CUSTOM_LOADER_ENABLED:Z

    if-nez v1, :cond_0

    .line 132
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize(J)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    .line 134
    :cond_0
    new-instance v1, Lcom/google/inject/internal/BytecodeGen$1;

    invoke-direct {v1}, Lcom/google/inject/internal/BytecodeGen$1;-><init>()V

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->build(Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    move-result-object v1

    sput-object v1, Lcom/google/inject/internal/BytecodeGen;->CLASS_LOADER_CACHE:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    return-void
.end method

.method private static canonicalize(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 152
    if-eqz p0, :cond_0

    .end local p0    # "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    return-object p0

    .restart local p0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    sget-object v0, Lcom/google/inject/internal/BytecodeGen$SystemBridgeHolder;->SYSTEM_BRIDGE:Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;

    invoke-virtual {v0}, Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/inject/internal/BytecodeGen;->getClassLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static getClassLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2
    .param p1, "delegate"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lcom/google/inject/internal/BytecodeGen;->CUSTOM_LOADER_ENABLED:Z

    if-nez v0, :cond_0

    move-object v0, p1

    .line 191
    :goto_0
    return-object v0

    .line 170
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lcom/google/inject/internal/BytecodeGen;->GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {p1}, Lcom/google/inject/internal/BytecodeGen;->canonicalize(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    .line 177
    sget-object v0, Lcom/google/inject/internal/BytecodeGen;->GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

    if-eq p1, v0, :cond_2

    instance-of v0, p1, Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, p1

    .line 178
    goto :goto_0

    .line 182
    :cond_3
    invoke-static {p0}, Lcom/google/inject/internal/BytecodeGen$Visibility;->forType(Ljava/lang/Class;)Lcom/google/inject/internal/BytecodeGen$Visibility;

    move-result-object v0

    sget-object v1, Lcom/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/google/inject/internal/BytecodeGen$Visibility;

    if-ne v0, v1, :cond_5

    .line 183
    sget-object v0, Lcom/google/inject/internal/BytecodeGen$SystemBridgeHolder;->SYSTEM_BRIDGE:Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;

    invoke-virtual {v0}, Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eq p1, v0, :cond_4

    .line 185
    sget-object v0, Lcom/google/inject/internal/BytecodeGen;->CLASS_LOADER_CACHE:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0

    .line 188
    :cond_4
    sget-object v0, Lcom/google/inject/internal/BytecodeGen$SystemBridgeHolder;->SYSTEM_BRIDGE:Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;

    goto :goto_0

    :cond_5
    move-object v0, p1

    .line 191
    goto :goto_0
.end method

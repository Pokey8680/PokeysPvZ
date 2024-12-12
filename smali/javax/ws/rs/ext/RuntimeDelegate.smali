.class public abstract Ljavax/ws/rs/ext/RuntimeDelegate;
.super Ljava/lang/Object;
.source "RuntimeDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;
    }
.end annotation


# static fields
.field private static final JAXRS_DEFAULT_RUNTIME_DELEGATE:Ljava/lang/String; = "com.sun.ws.rs.ext.RuntimeDelegateImpl"

.field public static final JAXRS_RUNTIME_DELEGATE_PROPERTY:Ljava/lang/String; = "javax.ws.rs.ext.RuntimeDelegate"

.field private static volatile rd:Ljavax/ws/rs/ext/RuntimeDelegate;

.field private static rp:Ljava/lang/reflect/ReflectPermission;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/reflect/ReflectPermission;

    const-string v1, "suppressAccessChecks"

    invoke-direct {v0, v1}, Ljava/lang/reflect/ReflectPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/ws/rs/ext/RuntimeDelegate;->rp:Ljava/lang/reflect/ReflectPermission;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static findDelegate()Ljavax/ws/rs/ext/RuntimeDelegate;
    .locals 10

    .prologue
    .line 105
    :try_start_0
    const-string v6, "javax.ws.rs.ext.RuntimeDelegate"

    const-string v7, "com.sun.ws.rs.ext.RuntimeDelegateImpl"

    invoke-static {v6, v7}, Ljavax/ws/rs/ext/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 108
    .local v1, "delegate":Ljava/lang/Object;
    instance-of v6, v1, Ljavax/ws/rs/ext/RuntimeDelegate;

    if-nez v6, :cond_1

    .line 109
    const-class v4, Ljavax/ws/rs/ext/RuntimeDelegate;

    .line 110
    .local v4, "pClass":Ljava/lang/Class;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "classnameAsResource":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 112
    .local v3, "loader":Ljava/lang/ClassLoader;
    if-nez v3, :cond_0

    .line 113
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 115
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 116
    .local v5, "targetTypeURL":Ljava/net/URL;
    new-instance v6, Ljava/lang/LinkageError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClassCastException: attempting to cast"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "to"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "classnameAsResource":Ljava/lang/String;
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    .end local v4    # "pClass":Ljava/lang/Class;
    .end local v5    # "targetTypeURL":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 122
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 120
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    check-cast v1, Ljavax/ws/rs/ext/RuntimeDelegate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "delegate":Ljava/lang/Object;
    return-object v1
.end method

.method public static getInstance()Ljavax/ws/rs/ext/RuntimeDelegate;
    .locals 3

    .prologue
    .line 86
    sget-object v0, Ljavax/ws/rs/ext/RuntimeDelegate;->rd:Ljavax/ws/rs/ext/RuntimeDelegate;

    .line 87
    .local v0, "result":Ljavax/ws/rs/ext/RuntimeDelegate;
    if-nez v0, :cond_1

    .line 88
    const-class v2, Ljavax/ws/rs/ext/RuntimeDelegate;

    monitor-enter v2

    .line 89
    :try_start_0
    sget-object v0, Ljavax/ws/rs/ext/RuntimeDelegate;->rd:Ljavax/ws/rs/ext/RuntimeDelegate;

    .line 90
    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Ljavax/ws/rs/ext/RuntimeDelegate;->findDelegate()Ljavax/ws/rs/ext/RuntimeDelegate;

    move-result-object v0

    sput-object v0, Ljavax/ws/rs/ext/RuntimeDelegate;->rd:Ljavax/ws/rs/ext/RuntimeDelegate;

    .line 93
    :cond_0
    monitor-exit v2

    .line 95
    :cond_1
    return-object v0

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setInstance(Ljavax/ws/rs/ext/RuntimeDelegate;)V
    .locals 3
    .param p0, "rd"    # Ljavax/ws/rs/ext/RuntimeDelegate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 136
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 137
    sget-object v1, Ljavax/ws/rs/ext/RuntimeDelegate;->rp:Ljava/lang/reflect/ReflectPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 139
    :cond_0
    const-class v2, Ljavax/ws/rs/ext/RuntimeDelegate;

    monitor-enter v2

    .line 140
    :try_start_0
    sput-object p0, Ljavax/ws/rs/ext/RuntimeDelegate;->rd:Ljavax/ws/rs/ext/RuntimeDelegate;

    .line 141
    monitor-exit v2

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public abstract createEndpoint(Ljavax/ws/rs/core/Application;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/ws/rs/core/Application;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract createHeaderDelegate(Ljava/lang/Class;)Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract createResponseBuilder()Ljavax/ws/rs/core/Response$ResponseBuilder;
.end method

.method public abstract createUriBuilder()Ljavax/ws/rs/core/UriBuilder;
.end method

.method public abstract createVariantListBuilder()Ljavax/ws/rs/core/Variant$VariantListBuilder;
.end method

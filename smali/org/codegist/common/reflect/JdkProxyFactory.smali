.class public Lorg/codegist/common/reflect/JdkProxyFactory;
.super Ljava/lang/Object;
.source "JdkProxyFactory.java"

# interfaces
.implements Lorg/codegist/common/reflect/ProxyFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/common/reflect/JdkProxyFactory$1;,
        Lorg/codegist/common/reflect/JdkProxyFactory$DelegatorHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public createProxy(Ljava/lang/ClassLoader;Lorg/codegist/common/reflect/InvocationHandler;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "handler"    # Lorg/codegist/common/reflect/InvocationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Lorg/codegist/common/reflect/InvocationHandler;",
            "[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codegist/common/reflect/JdkProxyFactory;->createProxy(Ljava/lang/ClassLoader;Lorg/codegist/common/reflect/InvocationHandler;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createProxy(Ljava/lang/ClassLoader;Lorg/codegist/common/reflect/InvocationHandler;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "handler"    # Lorg/codegist/common/reflect/InvocationHandler;
    .param p4, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Lorg/codegist/common/reflect/InvocationHandler;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lorg/codegist/common/reflect/JdkProxyFactory$DelegatorHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p4, p2, v1}, Lorg/codegist/common/reflect/JdkProxyFactory$DelegatorHandler;-><init>(Ljava/lang/Object;Lorg/codegist/common/reflect/InvocationHandler;Lorg/codegist/common/reflect/JdkProxyFactory$1;)V

    invoke-static {p1, p3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

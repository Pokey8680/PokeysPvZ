.class public Lorg/codegist/common/reflect/CglibProxyFactory;
.super Ljava/lang/Object;
.source "CglibProxyFactory.java"

# interfaces
.implements Lorg/codegist/common/reflect/ProxyFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/common/reflect/CglibProxyFactory$1;,
        Lorg/codegist/common/reflect/CglibProxyFactory$DelegatorHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
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
    .line 56
    .local p3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codegist/common/reflect/CglibProxyFactory;->createProxy(Ljava/lang/ClassLoader;Lorg/codegist/common/reflect/InvocationHandler;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 37
    .local p3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lorg/codegist/common/reflect/CglibProxyFactory$DelegatorHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p4, p2, v1}, Lorg/codegist/common/reflect/CglibProxyFactory$DelegatorHandler;-><init>(Ljava/lang/Object;Lorg/codegist/common/reflect/InvocationHandler;Lorg/codegist/common/reflect/CglibProxyFactory$1;)V

    invoke-static {p1, p3, v0}, Lnet/sf/cglib/proxy/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Lnet/sf/cglib/proxy/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

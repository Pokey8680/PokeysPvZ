.class public interface abstract Lorg/codegist/common/reflect/ProxyFactory;
.super Ljava/lang/Object;
.source "ProxyFactory.java"


# virtual methods
.method public abstract createProxy(Ljava/lang/ClassLoader;Lorg/codegist/common/reflect/InvocationHandler;[Ljava/lang/Class;)Ljava/lang/Object;
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
.end method

.method public abstract createProxy(Ljava/lang/ClassLoader;Lorg/codegist/common/reflect/InvocationHandler;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

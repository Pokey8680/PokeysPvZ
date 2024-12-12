.class public abstract Lorg/codegist/common/reflect/ObjectMethodsAwareInvocationHandler;
.super Ljava/lang/Object;
.source "ObjectMethodsAwareInvocationHandler.java"

# interfaces
.implements Lorg/codegist/common/reflect/InvocationHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract doInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-static {p2}, Lorg/codegist/common/reflect/Methods;->isToString(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 37
    :cond_0
    invoke-static {p2}, Lorg/codegist/common/reflect/Methods;->isEquals(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    aget-object v1, p3, v0

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p2}, Lorg/codegist/common/reflect/Methods;->isHashCode(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/codegist/common/reflect/ObjectMethodsAwareInvocationHandler;->doInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

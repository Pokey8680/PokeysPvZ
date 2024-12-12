.class Lorg/codegist/common/reflect/CglibProxyFactory$DelegatorHandler;
.super Ljava/lang/Object;
.source "CglibProxyFactory.java"

# interfaces
.implements Lnet/sf/cglib/proxy/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/common/reflect/CglibProxyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelegatorHandler"
.end annotation


# instance fields
.field private final delegate:Lorg/codegist/common/reflect/InvocationHandler;

.field private final target:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lorg/codegist/common/reflect/InvocationHandler;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "delegate"    # Lorg/codegist/common/reflect/InvocationHandler;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/codegist/common/reflect/CglibProxyFactory$DelegatorHandler;->target:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lorg/codegist/common/reflect/CglibProxyFactory$DelegatorHandler;->delegate:Lorg/codegist/common/reflect/InvocationHandler;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/codegist/common/reflect/InvocationHandler;Lorg/codegist/common/reflect/CglibProxyFactory$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/codegist/common/reflect/InvocationHandler;
    .param p3, "x2"    # Lorg/codegist/common/reflect/CglibProxyFactory$1;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/codegist/common/reflect/CglibProxyFactory$DelegatorHandler;-><init>(Ljava/lang/Object;Lorg/codegist/common/reflect/InvocationHandler;)V

    return-void
.end method


# virtual methods
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
    .line 51
    iget-object v0, p0, Lorg/codegist/common/reflect/CglibProxyFactory$DelegatorHandler;->delegate:Lorg/codegist/common/reflect/InvocationHandler;

    iget-object v1, p0, Lorg/codegist/common/reflect/CglibProxyFactory$DelegatorHandler;->target:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/codegist/common/reflect/CglibProxyFactory$DelegatorHandler;->target:Ljava/lang/Object;

    .end local p1    # "proxy":Ljava/lang/Object;
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lorg/codegist/common/reflect/InvocationHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

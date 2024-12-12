.class Lorg/codegist/common/reflect/JdkProxyFactory$DelegatorHandler;
.super Ljava/lang/Object;
.source "JdkProxyFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/common/reflect/JdkProxyFactory;
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
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/codegist/common/reflect/JdkProxyFactory$DelegatorHandler;->target:Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lorg/codegist/common/reflect/JdkProxyFactory$DelegatorHandler;->delegate:Lorg/codegist/common/reflect/InvocationHandler;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/codegist/common/reflect/InvocationHandler;Lorg/codegist/common/reflect/JdkProxyFactory$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/codegist/common/reflect/InvocationHandler;
    .param p3, "x2"    # Lorg/codegist/common/reflect/JdkProxyFactory$1;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/codegist/common/reflect/JdkProxyFactory$DelegatorHandler;-><init>(Ljava/lang/Object;Lorg/codegist/common/reflect/InvocationHandler;)V

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
    .line 50
    iget-object v0, p0, Lorg/codegist/common/reflect/JdkProxyFactory$DelegatorHandler;->delegate:Lorg/codegist/common/reflect/InvocationHandler;

    iget-object v1, p0, Lorg/codegist/common/reflect/JdkProxyFactory$DelegatorHandler;->target:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/codegist/common/reflect/JdkProxyFactory$DelegatorHandler;->target:Ljava/lang/Object;

    .end local p1    # "proxy":Ljava/lang/Object;
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lorg/codegist/common/reflect/InvocationHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

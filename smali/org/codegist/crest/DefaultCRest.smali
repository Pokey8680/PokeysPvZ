.class Lorg/codegist/crest/DefaultCRest;
.super Lorg/codegist/crest/CRest;
.source "DefaultCRest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/crest/DefaultCRest$CRestInvocationHandler;
    }
.end annotation


# instance fields
.field private final configFactory:Lorg/codegist/crest/config/InterfaceConfigFactory;

.field private final proxyFactory:Lorg/codegist/common/reflect/ProxyFactory;

.field private final requestBuilderFactory:Lorg/codegist/crest/io/RequestBuilderFactory;

.field private final requestExecutor:Lorg/codegist/crest/io/RequestExecutor;


# direct methods
.method public constructor <init>(Lorg/codegist/common/reflect/ProxyFactory;Lorg/codegist/crest/io/RequestExecutor;Lorg/codegist/crest/io/RequestBuilderFactory;Lorg/codegist/crest/config/InterfaceConfigFactory;)V
    .locals 0
    .param p1, "proxyFactory"    # Lorg/codegist/common/reflect/ProxyFactory;
    .param p2, "requestExecutor"    # Lorg/codegist/crest/io/RequestExecutor;
    .param p3, "requestBuilderFactory"    # Lorg/codegist/crest/io/RequestBuilderFactory;
    .param p4, "configFactory"    # Lorg/codegist/crest/config/InterfaceConfigFactory;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/codegist/crest/CRest;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/codegist/crest/DefaultCRest;->proxyFactory:Lorg/codegist/common/reflect/ProxyFactory;

    .line 49
    iput-object p2, p0, Lorg/codegist/crest/DefaultCRest;->requestExecutor:Lorg/codegist/crest/io/RequestExecutor;

    .line 50
    iput-object p3, p0, Lorg/codegist/crest/DefaultCRest;->requestBuilderFactory:Lorg/codegist/crest/io/RequestBuilderFactory;

    .line 51
    iput-object p4, p0, Lorg/codegist/crest/DefaultCRest;->configFactory:Lorg/codegist/crest/config/InterfaceConfigFactory;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lorg/codegist/crest/DefaultCRest;)Lorg/codegist/crest/io/RequestBuilderFactory;
    .locals 1
    .param p0, "x0"    # Lorg/codegist/crest/DefaultCRest;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/codegist/crest/DefaultCRest;->requestBuilderFactory:Lorg/codegist/crest/io/RequestBuilderFactory;

    return-object v0
.end method

.method static synthetic access$100(Lorg/codegist/crest/DefaultCRest;)Lorg/codegist/crest/io/RequestExecutor;
    .locals 1
    .param p0, "x0"    # Lorg/codegist/crest/DefaultCRest;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/codegist/crest/DefaultCRest;->requestExecutor:Lorg/codegist/crest/io/RequestExecutor;

    return-object v0
.end method


# virtual methods
.method public build(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codegist/crest/CRestException;
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "interfaze":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v2, p0, Lorg/codegist/crest/DefaultCRest;->configFactory:Lorg/codegist/crest/config/InterfaceConfigFactory;

    invoke-interface {v2, p1}, Lorg/codegist/crest/config/InterfaceConfigFactory;->newConfig(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfig;

    move-result-object v1

    .line 61
    .local v1, "interfaceConfig":Lorg/codegist/crest/config/InterfaceConfig;
    iget-object v2, p0, Lorg/codegist/crest/DefaultCRest;->proxyFactory:Lorg/codegist/common/reflect/ProxyFactory;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lorg/codegist/crest/DefaultCRest$CRestInvocationHandler;

    invoke-direct {v4, p0, v1}, Lorg/codegist/crest/DefaultCRest$CRestInvocationHandler;-><init>(Lorg/codegist/crest/DefaultCRest;Lorg/codegist/crest/config/InterfaceConfig;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lorg/codegist/common/reflect/ProxyFactory;->createProxy(Ljava/lang/ClassLoader;Lorg/codegist/common/reflect/InvocationHandler;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 62
    .end local v1    # "interfaceConfig":Lorg/codegist/crest/config/InterfaceConfig;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/codegist/crest/CRestException;->handle(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

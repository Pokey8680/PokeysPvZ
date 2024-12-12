.class final Lorg/codegist/crest/DefaultCRest$CRestInvocationHandler;
.super Lorg/codegist/common/reflect/ObjectMethodsAwareInvocationHandler;
.source "DefaultCRest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/DefaultCRest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CRestInvocationHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codegist/common/reflect/ObjectMethodsAwareInvocationHandler;"
    }
.end annotation


# instance fields
.field private final interfaceConfig:Lorg/codegist/crest/config/InterfaceConfig;

.field final synthetic this$0:Lorg/codegist/crest/DefaultCRest;


# direct methods
.method constructor <init>(Lorg/codegist/crest/DefaultCRest;Lorg/codegist/crest/config/InterfaceConfig;)V
    .locals 0
    .param p2, "interfaceConfig"    # Lorg/codegist/crest/config/InterfaceConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/codegist/crest/DefaultCRest$CRestInvocationHandler;, "Lorg/codegist/crest/DefaultCRest$CRestInvocationHandler<TT;>;"
    iput-object p1, p0, Lorg/codegist/crest/DefaultCRest$CRestInvocationHandler;->this$0:Lorg/codegist/crest/DefaultCRest;

    invoke-direct {p0}, Lorg/codegist/common/reflect/ObjectMethodsAwareInvocationHandler;-><init>()V

    .line 72
    iput-object p2, p0, Lorg/codegist/crest/DefaultCRest$CRestInvocationHandler;->interfaceConfig:Lorg/codegist/crest/config/InterfaceConfig;

    .line 73
    return-void
.end method


# virtual methods
.method protected doInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/codegist/crest/DefaultCRest$CRestInvocationHandler;, "Lorg/codegist/crest/DefaultCRest$CRestInvocationHandler<TT;>;"
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    iget-object v4, p0, Lorg/codegist/crest/DefaultCRest$CRestInvocationHandler;->interfaceConfig:Lorg/codegist/crest/config/InterfaceConfig;

    invoke-interface {v4, p2}, Lorg/codegist/crest/config/InterfaceConfig;->getMethodConfig(Ljava/lang/reflect/Method;)Lorg/codegist/crest/config/MethodConfig;

    move-result-object v1

    .line 78
    .local v1, "mc":Lorg/codegist/crest/config/MethodConfig;
    iget-object v4, p0, Lorg/codegist/crest/DefaultCRest$CRestInvocationHandler;->this$0:Lorg/codegist/crest/DefaultCRest;

    invoke-static {v4}, Lorg/codegist/crest/DefaultCRest;->access$000(Lorg/codegist/crest/DefaultCRest;)Lorg/codegist/crest/io/RequestBuilderFactory;

    move-result-object v4

    invoke-static {v4, v1, p3}, Lorg/codegist/crest/util/Requests;->from(Lorg/codegist/crest/io/RequestBuilderFactory;Lorg/codegist/crest/config/MethodConfig;[Ljava/lang/Object;)Lorg/codegist/crest/io/Request;

    move-result-object v2

    .line 79
    .local v2, "request":Lorg/codegist/crest/io/Request;
    const/4 v3, 0x0

    .line 81
    .local v3, "response":Lorg/codegist/crest/io/Response;
    :try_start_0
    iget-object v4, p0, Lorg/codegist/crest/DefaultCRest$CRestInvocationHandler;->this$0:Lorg/codegist/crest/DefaultCRest;

    invoke-static {v4}, Lorg/codegist/crest/DefaultCRest;->access$100(Lorg/codegist/crest/DefaultCRest;)Lorg/codegist/crest/io/RequestExecutor;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/codegist/crest/io/RequestExecutor;->execute(Lorg/codegist/crest/io/Request;)Lorg/codegist/crest/io/Response;

    move-result-object v3

    .line 82
    invoke-interface {v1}, Lorg/codegist/crest/config/MethodConfig;->getResponseHandler()Lorg/codegist/crest/handler/ResponseHandler;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/codegist/crest/handler/ResponseHandler;->handle(Lorg/codegist/crest/io/Response;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 87
    :goto_0
    return-object v4

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-interface {v1}, Lorg/codegist/crest/config/MethodConfig;->getErrorHandler()Lorg/codegist/crest/handler/ErrorHandler;

    move-result-object v4

    invoke-interface {v4, v2, v0}, Lorg/codegist/crest/handler/ErrorHandler;->handle(Lorg/codegist/crest/io/Request;Ljava/lang/Exception;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 87
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    aput-object v0, v5, v7

    invoke-static {v5}, Lorg/codegist/common/lang/Disposables;->dispose([Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    aput-object v0, v5, v7

    invoke-static {v5}, Lorg/codegist/common/lang/Disposables;->dispose([Ljava/lang/Object;)V

    throw v4
.end method

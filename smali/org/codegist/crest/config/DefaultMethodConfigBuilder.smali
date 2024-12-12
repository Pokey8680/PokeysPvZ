.class Lorg/codegist/crest/config/DefaultMethodConfigBuilder;
.super Lorg/codegist/crest/config/ConfigBuilder;
.source "DefaultMethodConfigBuilder.java"

# interfaces
.implements Lorg/codegist/crest/config/MethodConfigBuilder;


# static fields
.field private static final ENDPOINT_MSG:Ljava/lang/String;


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private final classSerializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;"
        }
    .end annotation
.end field

.field private connectionTimeout:Ljava/lang/Integer;

.field private final consumes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deserializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;>;"
        }
    .end annotation
.end field

.field private endPoint:Ljava/lang/String;

.field private entityWriter:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/entity/EntityWriter;",
            ">;"
        }
    .end annotation
.end field

.field private errorHandler:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/ErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final extraParamBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/config/ParamConfigBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final extraParams:[Lorg/codegist/crest/config/ParamConfig;

.field private meth:Lorg/codegist/crest/config/MethodType;

.field private final method:Ljava/lang/reflect/Method;

.field private final methodParamConfigBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/config/ParamConfigBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mimeDeserializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lorg/codegist/crest/config/InterfaceConfigBuilder;

.field private final pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private produces:Ljava/lang/String;

.field private requestInterceptor:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/interceptor/RequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseHandler:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/ResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private retryHandler:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/RetryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private socketTimeout:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End-point is mandatory. This is probably due to a missing or empty @EndPoint annotation.\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Either provide an @EndPoint annotation or build a CRest instance as follow:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   String defaultEndPoint = ...;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   CRest crest = CRest.getInstance(defaultEndPoint);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nLocation information:\n%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->ENDPOINT_MSG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/codegist/crest/config/InterfaceConfigBuilder;Ljava/lang/reflect/Method;Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry;Lorg/codegist/crest/util/ComponentRegistry;)V
    .locals 10
    .param p1, "parent"    # Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;",
            "Ljava/lang/reflect/Method;",
            "Lorg/codegist/crest/CRestConfig;",
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;",
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p4, "mimeDeserializerRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/String;Lorg/codegist/crest/serializer/Deserializer;>;"
    .local p5, "classSerializerRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/Class<*>;Lorg/codegist/crest/serializer/Serializer;>;"
    invoke-direct {p0, p3}, Lorg/codegist/crest/config/ConfigBuilder;-><init>(Lorg/codegist/crest/CRestConfig;)V

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->extraParamBuilders:Ljava/util/List;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->methodParamConfigBuilders:Ljava/util/List;

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->endPoint:Ljava/lang/String;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->produces:Ljava/lang/String;

    .line 66
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->charset:Ljava/nio/charset/Charset;

    .line 67
    invoke-static {}, Lorg/codegist/crest/config/MethodType;->getDefault()Lorg/codegist/crest/config/MethodType;

    move-result-object v1

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->meth:Lorg/codegist/crest/config/MethodType;

    .line 68
    const/16 v1, 0x4e20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->socketTimeout:Ljava/lang/Integer;

    .line 69
    const/16 v1, 0x4e20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->connectionTimeout:Ljava/lang/Integer;

    .line 70
    const-class v1, Lorg/codegist/crest/interceptor/NoOpRequestInterceptor;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->requestInterceptor:Ljava/lang/Class;

    .line 71
    const-class v1, Lorg/codegist/crest/handler/DefaultResponseHandler;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->responseHandler:Ljava/lang/Class;

    .line 72
    const-class v1, Lorg/codegist/crest/handler/ErrorDelegatorHandler;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->errorHandler:Ljava/lang/Class;

    .line 73
    const-class v1, Lorg/codegist/crest/handler/MaxAttemptRetryHandler;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->retryHandler:Ljava/lang/Class;

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->entityWriter:Ljava/lang/Class;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->deserializers:Ljava/util/List;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->pathSegments:Ljava/util/List;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "*/*"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->consumes:Ljava/util/List;

    .line 81
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->parent:Lorg/codegist/crest/config/InterfaceConfigBuilder;

    .line 82
    iput-object p2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->method:Ljava/lang/reflect/Method;

    .line 83
    iput-object p4, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->mimeDeserializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    .line 84
    iput-object p5, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->classSerializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    .line 86
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-ge v6, v1, :cond_0

    .line 87
    new-instance v0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    aget-object v3, v1, v6

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v4, v1, v6

    move-object v1, p3

    move-object v2, p5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;-><init>(Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    .line 88
    .local v0, "pcb":Lorg/codegist/crest/config/ParamConfigBuilder;
    iget-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->methodParamConfigBuilders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "pcb":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_ENDPOINT:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->endPoint:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->endPoint:Ljava/lang/String;

    .line 92
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_PRODUCES:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->produces:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->produces:Ljava/lang/String;

    .line 93
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_CHARSET:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->charset:Ljava/nio/charset/Charset;

    .line 94
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->meth:Lorg/codegist/crest/config/MethodType;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codegist/crest/config/MethodType;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->meth:Lorg/codegist/crest/config/MethodType;

    .line 95
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_SO_TIMEOUT:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->socketTimeout:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->socketTimeout:Ljava/lang/Integer;

    .line 96
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_CO_TIMEOUT:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->connectionTimeout:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->connectionTimeout:Ljava/lang/Integer;

    .line 97
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_REQUEST_INTERCEPTOR:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->requestInterceptor:Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->requestInterceptor:Ljava/lang/Class;

    .line 98
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_RESPONSE_HANDLER:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->responseHandler:Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->responseHandler:Ljava/lang/Class;

    .line 99
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_ERROR_HANDLER:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->errorHandler:Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->errorHandler:Ljava/lang/Class;

    .line 100
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_RETRY_HANDLER:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->retryHandler:Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->retryHandler:Ljava/lang/Class;

    .line 101
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_ENTITY_WRITER:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->entityWriter:Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->entityWriter:Ljava/lang/Class;

    .line 102
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_EXTRA_PARAMS:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/codegist/crest/config/ParamConfig;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/codegist/crest/config/ParamConfig;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->extraParams:[Lorg/codegist/crest/config/ParamConfig;

    .line 104
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_DESERIALIZERS:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->deserializers:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 105
    .local v8, "pDeserializers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/codegist/crest/serializer/Deserializer;>;>;"
    iget-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->deserializers:Ljava/util/List;

    if-eq v8, v1, :cond_1

    .line 106
    iget-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->deserializers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 107
    iget-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->deserializers:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    :cond_1
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_CONSUMES:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->consumes:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 111
    .local v7, "pConsumes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->consumes:Ljava/util/List;

    if-eq v7, v1, :cond_2

    .line 112
    iget-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->consumes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 113
    iget-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->consumes:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    :cond_2
    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_PATH:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->pathSegments:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 117
    .local v9, "pPathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->pathSegments:Ljava/util/List;

    if-eq v9, v1, :cond_3

    .line 118
    iget-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->pathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 119
    iget-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->pathSegments:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    :cond_3
    return-void
.end method

.method private static buildParams(Ljava/util/List;)[Lorg/codegist/crest/config/ParamConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/config/ParamConfigBuilder;",
            ">;)[",
            "Lorg/codegist/crest/config/ParamConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "paramConfigBuilders":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/config/ParamConfigBuilder;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Lorg/codegist/crest/config/ParamConfig;

    .line 193
    .local v1, "pc":[Lorg/codegist/crest/config/ParamConfig;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 194
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codegist/crest/config/ParamConfigBuilder;

    invoke-interface {v2}, Lorg/codegist/crest/config/ParamConfigBuilder;->build()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v2

    aput-object v2, v1, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-object v1
.end method

.method private buildPath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->pathSegments:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    .local v0, "pPathParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->endPoint:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 187
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/codegist/common/collect/Arrays;->arrify(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 188
    .local v1, "paths":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const-string v2, "/"

    invoke-static {v2, v1}, Lorg/codegist/common/collect/Arrays;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/codegist/common/net/Urls;->normalizeSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    aget-object v2, v1, v4

    goto :goto_0
.end method

.method private getDeserializers()[Lorg/codegist/crest/serializer/Deserializer;
    .locals 5

    .prologue
    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v3, "pDeserializers":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/serializer/Deserializer;>;"
    iget-object v4, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->deserializers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 160
    .local v1, "deserializerCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Deserializer;>;"
    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v1    # "deserializerCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Deserializer;>;"
    :cond_0
    iget-object v4, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->consumes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, "consume":Ljava/lang/String;
    const-string v4, "*/*"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 166
    iget-object v4, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->mimeDeserializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    invoke-virtual {v4, v0}, Lorg/codegist/crest/util/ComponentRegistry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    .end local v0    # "consume":Ljava/lang/String;
    :cond_2
    const-class v4, Lorg/codegist/crest/serializer/Deserializer;

    invoke-static {v3, v4}, Lorg/codegist/common/collect/Arrays;->arrify(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/codegist/crest/serializer/Deserializer;

    return-object v4
.end method

.method private getEntityWriter([Lorg/codegist/crest/config/ParamConfig;)Lorg/codegist/crest/entity/EntityWriter;
    .locals 1
    .param p1, "params"    # [Lorg/codegist/crest/config/ParamConfig;

    .prologue
    .line 173
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->entityWriter:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->entityWriter:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/entity/EntityWriter;

    .line 180
    :goto_0
    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->meth:Lorg/codegist/crest/config/MethodType;

    invoke-virtual {v0}, Lorg/codegist/crest/config/MethodType;->hasEntity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {p1}, Lorg/codegist/crest/util/MultiParts;->hasMultiPart([Lorg/codegist/crest/config/ParamConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    const-class v0, Lorg/codegist/crest/entity/multipart/MultiPartEntityWriter;

    invoke-virtual {p0, v0}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/entity/EntityWriter;

    goto :goto_0

    .line 180
    :cond_2
    const-class v0, Lorg/codegist/crest/entity/UrlEncodedFormEntityWriter;

    invoke-virtual {p0, v0}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/entity/EntityWriter;

    goto :goto_0
.end method

.method private validate()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->endPoint:Ljava/lang/String;

    sget-object v1, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->ENDPOINT_MSG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lorg/codegist/common/lang/State;->notBlank(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    return-void
.end method


# virtual methods
.method public appendPath(Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->pathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-object p0
.end method

.method public build()Lorg/codegist/crest/config/MethodConfig;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct/range {p0 .. p0}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->validate()V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->methodParamConfigBuilders:Ljava/util/List;

    invoke-static {v2}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->buildParams(Ljava/util/List;)[Lorg/codegist/crest/config/ParamConfig;

    move-result-object v17

    .line 129
    .local v17, "pConfigMethod":[Lorg/codegist/crest/config/ParamConfig;
    const-class v2, Lorg/codegist/crest/config/ParamConfig;

    const/4 v3, 0x2

    new-array v3, v3, [[Lorg/codegist/crest/config/ParamConfig;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->extraParams:[Lorg/codegist/crest/config/ParamConfig;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->extraParamBuilders:Ljava/util/List;

    invoke-static {v5}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->buildParams(Ljava/util/List;)[Lorg/codegist/crest/config/ParamConfig;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/codegist/common/collect/Arrays;->merge(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lorg/codegist/crest/config/ParamConfig;

    .line 130
    .local v18, "pExtraParams":[Lorg/codegist/crest/config/ParamConfig;
    const-class v2, Lorg/codegist/crest/config/ParamConfig;

    const/4 v3, 0x2

    new-array v3, v3, [[Lorg/codegist/crest/config/ParamConfig;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v18, v3, v4

    invoke-static {v2, v3}, Lorg/codegist/common/collect/Arrays;->merge(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lorg/codegist/crest/config/ParamConfig;

    .line 132
    .local v19, "allParams":[Lorg/codegist/crest/config/ParamConfig;
    new-instance v2, Lorg/codegist/crest/config/DefaultMethodConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->charset:Ljava/nio/charset/Charset;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->method:Ljava/lang/reflect/Method;

    invoke-direct/range {p0 .. p0}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->buildPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/codegist/crest/config/RegexPathTemplate;->create(Ljava/lang/String;)Lorg/codegist/crest/config/RegexPathTemplate;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->produces:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->consumes:Ljava/util/List;

    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/codegist/common/collect/Arrays;->arrify(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->meth:Lorg/codegist/crest/config/MethodType;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->socketTimeout:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->connectionTimeout:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->getEntityWriter([Lorg/codegist/crest/config/ParamConfig;)Lorg/codegist/crest/entity/EntityWriter;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->requestInterceptor:Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/codegist/crest/interceptor/RequestInterceptor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->responseHandler:Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/codegist/crest/handler/ResponseHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->errorHandler:Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/codegist/crest/handler/ErrorHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->retryHandler:Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/codegist/crest/handler/RetryHandler;

    invoke-direct/range {p0 .. p0}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->getDeserializers()[Lorg/codegist/crest/serializer/Deserializer;

    move-result-object v16

    invoke-direct/range {v2 .. v18}, Lorg/codegist/crest/config/DefaultMethodConfig;-><init>(Ljava/nio/charset/Charset;Ljava/lang/reflect/Method;Lorg/codegist/crest/config/PathTemplate;Ljava/lang/String;[Ljava/lang/String;Lorg/codegist/crest/config/MethodType;IILorg/codegist/crest/entity/EntityWriter;Lorg/codegist/crest/interceptor/RequestInterceptor;Lorg/codegist/crest/handler/ResponseHandler;Lorg/codegist/crest/handler/ErrorHandler;Lorg/codegist/crest/handler/RetryHandler;[Lorg/codegist/crest/serializer/Deserializer;[Lorg/codegist/crest/config/ParamConfig;[Lorg/codegist/crest/config/ParamConfig;)V

    return-object v2
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 217
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->charset:Ljava/nio/charset/Charset;

    .line 218
    return-object p0
.end method

.method public setConnectionTimeout(I)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 1
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 247
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->connectionTimeout:Ljava/lang/Integer;

    .line 248
    return-object p0
.end method

.method public varargs setConsumes([Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 2
    .param p1, "mimeTypes"    # [Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->consumes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->consumes:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    return-object p0
.end method

.method public setDeserializer(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;)",
            "Lorg/codegist/crest/config/MethodConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "deserializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Deserializer;>;"
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->deserializers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->deserializers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-object p0
.end method

.method public setEndPoint(Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 0
    .param p1, "endPoint"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->endPoint:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public setEntityWriter(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/entity/EntityWriter;",
            ">;)",
            "Lorg/codegist/crest/config/MethodConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "entityWriterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/entity/EntityWriter;>;"
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->entityWriter:Ljava/lang/Class;

    .line 279
    return-object p0
.end method

.method public setErrorHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/ErrorHandler;",
            ">;)",
            "Lorg/codegist/crest/config/MethodConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "errorHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/handler/ErrorHandler;>;"
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->errorHandler:Ljava/lang/Class;

    .line 269
    return-object p0
.end method

.method public setParamsEncoded(Z)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 3
    .param p1, "encoded"    # Z

    .prologue
    .line 292
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->methodParamConfigBuilders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 293
    .local v0, "b":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setEncoded(Z)Lorg/codegist/crest/config/ParamConfigBuilder;

    goto :goto_0

    .line 295
    .end local v0    # "b":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setParamsListSeparator(Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 3
    .param p1, "listSeparator"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->methodParamConfigBuilders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 300
    .local v0, "b":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setListSeparator(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    goto :goto_0

    .line 302
    .end local v0    # "b":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setParamsSerializer(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;)",
            "Lorg/codegist/crest/config/MethodConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Serializer;>;"
    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->methodParamConfigBuilders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 286
    .local v0, "b":Lorg/codegist/crest/config/ParamConfigBuilder;
    invoke-interface {v0, p1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setSerializer(Ljava/lang/Class;)Lorg/codegist/crest/config/ParamConfigBuilder;

    goto :goto_0

    .line 288
    .end local v0    # "b":Lorg/codegist/crest/config/ParamConfigBuilder;
    :cond_0
    return-object p0
.end method

.method public setProduces(Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->produces:Ljava/lang/String;

    .line 223
    return-object p0
.end method

.method public setRequestInterceptor(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/interceptor/RequestInterceptor;",
            ">;)",
            "Lorg/codegist/crest/config/MethodConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "requestInterceptorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/interceptor/RequestInterceptor;>;"
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->requestInterceptor:Ljava/lang/Class;

    .line 259
    return-object p0
.end method

.method public setResponseHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/ResponseHandler;",
            ">;)",
            "Lorg/codegist/crest/config/MethodConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "responseHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/handler/ResponseHandler;>;"
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->responseHandler:Ljava/lang/Class;

    .line 264
    return-object p0
.end method

.method public setRetryHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/RetryHandler;",
            ">;)",
            "Lorg/codegist/crest/config/MethodConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "retryHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/handler/RetryHandler;>;"
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->retryHandler:Ljava/lang/Class;

    .line 274
    return-object p0
.end method

.method public setSocketTimeout(I)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 1
    .param p1, "socketTimeout"    # I

    .prologue
    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->socketTimeout:Ljava/lang/Integer;

    .line 243
    return-object p0
.end method

.method public setType(Lorg/codegist/crest/config/MethodType;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .locals 0
    .param p1, "meth"    # Lorg/codegist/crest/config/MethodType;

    .prologue
    .line 237
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->meth:Lorg/codegist/crest/config/MethodType;

    .line 238
    return-object p0
.end method

.method public startExtraParamConfig()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 6

    .prologue
    .line 204
    new-instance v0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;

    invoke-virtual {p0}, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->getCRestConfig()Lorg/codegist/crest/CRestConfig;

    move-result-object v1

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->classSerializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;-><init>(Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    .line 205
    .local v0, "pcb":Lorg/codegist/crest/config/ParamConfigBuilder;
    iget-object v1, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->extraParamBuilders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-object v0
.end method

.method public startParamConfig(I)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->methodParamConfigBuilders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/ParamConfigBuilder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 307
    new-instance v0, Lorg/codegist/common/lang/ToStringBuilder;

    const-string v1, "Method"

    invoke-direct {v0, v1}, Lorg/codegist/common/lang/ToStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "method"

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "interface"

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultMethodConfigBuilder;->parent:Lorg/codegist/crest/config/InterfaceConfigBuilder;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/common/lang/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

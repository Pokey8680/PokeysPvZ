.class Lorg/codegist/crest/config/DefaultMethodConfig;
.super Ljava/lang/Object;
.source "DefaultMethodConfig.java"

# interfaces
.implements Lorg/codegist/crest/config/MethodConfig;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final connectionTimeout:I

.field private final consumes:[Ljava/lang/String;

.field private final deserializers:[Lorg/codegist/crest/serializer/Deserializer;

.field private final entityWriter:Lorg/codegist/crest/entity/EntityWriter;

.field private final errorHandler:Lorg/codegist/crest/handler/ErrorHandler;

.field private final extraParams:[Lorg/codegist/crest/config/ParamConfig;

.field private final method:Ljava/lang/reflect/Method;

.field private final methodParamConfigs:[Lorg/codegist/crest/config/ParamConfig;

.field private final path:Lorg/codegist/crest/config/PathTemplate;

.field private final produces:Ljava/lang/String;

.field private final requestInterceptor:Lorg/codegist/crest/interceptor/RequestInterceptor;

.field private final responseHandler:Lorg/codegist/crest/handler/ResponseHandler;

.field private final retryHandler:Lorg/codegist/crest/handler/RetryHandler;

.field private final socketTimeout:I

.field private final type:Lorg/codegist/crest/config/MethodType;


# direct methods
.method constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/reflect/Method;Lorg/codegist/crest/config/PathTemplate;Ljava/lang/String;[Ljava/lang/String;Lorg/codegist/crest/config/MethodType;IILorg/codegist/crest/entity/EntityWriter;Lorg/codegist/crest/interceptor/RequestInterceptor;Lorg/codegist/crest/handler/ResponseHandler;Lorg/codegist/crest/handler/ErrorHandler;Lorg/codegist/crest/handler/RetryHandler;[Lorg/codegist/crest/serializer/Deserializer;[Lorg/codegist/crest/config/ParamConfig;[Lorg/codegist/crest/config/ParamConfig;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "path"    # Lorg/codegist/crest/config/PathTemplate;
    .param p4, "produces"    # Ljava/lang/String;
    .param p5, "consumes"    # [Ljava/lang/String;
    .param p6, "type"    # Lorg/codegist/crest/config/MethodType;
    .param p7, "socketTimeout"    # I
    .param p8, "connectionTimeout"    # I
    .param p9, "entityWriter"    # Lorg/codegist/crest/entity/EntityWriter;
    .param p10, "requestInterceptor"    # Lorg/codegist/crest/interceptor/RequestInterceptor;
    .param p11, "responseHandler"    # Lorg/codegist/crest/handler/ResponseHandler;
    .param p12, "errorHandler"    # Lorg/codegist/crest/handler/ErrorHandler;
    .param p13, "retryHandler"    # Lorg/codegist/crest/handler/RetryHandler;
    .param p14, "deserializers"    # [Lorg/codegist/crest/serializer/Deserializer;
    .param p15, "methodParamConfigs"    # [Lorg/codegist/crest/config/ParamConfig;
    .param p16, "extraParams"    # [Lorg/codegist/crest/config/ParamConfig;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->charset:Ljava/nio/charset/Charset;

    .line 54
    iput-object p2, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->method:Ljava/lang/reflect/Method;

    .line 55
    iput-object p3, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->path:Lorg/codegist/crest/config/PathTemplate;

    .line 56
    iput-object p4, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->produces:Ljava/lang/String;

    .line 57
    invoke-virtual {p5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->consumes:[Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->type:Lorg/codegist/crest/config/MethodType;

    .line 59
    iput p7, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->socketTimeout:I

    .line 60
    iput p8, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->connectionTimeout:I

    .line 61
    iput-object p9, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->entityWriter:Lorg/codegist/crest/entity/EntityWriter;

    .line 62
    iput-object p10, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->requestInterceptor:Lorg/codegist/crest/interceptor/RequestInterceptor;

    .line 63
    iput-object p11, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->responseHandler:Lorg/codegist/crest/handler/ResponseHandler;

    .line 64
    iput-object p12, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->errorHandler:Lorg/codegist/crest/handler/ErrorHandler;

    .line 65
    iput-object p13, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->retryHandler:Lorg/codegist/crest/handler/RetryHandler;

    .line 66
    invoke-virtual {p14}, [Lorg/codegist/crest/serializer/Deserializer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codegist/crest/serializer/Deserializer;

    iput-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->deserializers:[Lorg/codegist/crest/serializer/Deserializer;

    .line 67
    invoke-virtual/range {p15 .. p15}, [Lorg/codegist/crest/config/ParamConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codegist/crest/config/ParamConfig;

    iput-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->methodParamConfigs:[Lorg/codegist/crest/config/ParamConfig;

    .line 68
    invoke-virtual/range {p16 .. p16}, [Lorg/codegist/crest/config/ParamConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codegist/crest/config/ParamConfig;

    iput-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->extraParams:[Lorg/codegist/crest/config/ParamConfig;

    .line 69
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->connectionTimeout:I

    return v0
.end method

.method public getConsumes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->consumes:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getDeserializers()[Lorg/codegist/crest/serializer/Deserializer;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->deserializers:[Lorg/codegist/crest/serializer/Deserializer;

    invoke-virtual {v0}, [Lorg/codegist/crest/serializer/Deserializer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codegist/crest/serializer/Deserializer;

    return-object v0
.end method

.method public getEntityWriter()Lorg/codegist/crest/entity/EntityWriter;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->entityWriter:Lorg/codegist/crest/entity/EntityWriter;

    return-object v0
.end method

.method public getErrorHandler()Lorg/codegist/crest/handler/ErrorHandler;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->errorHandler:Lorg/codegist/crest/handler/ErrorHandler;

    return-object v0
.end method

.method public getExtraParams()[Lorg/codegist/crest/config/ParamConfig;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->extraParams:[Lorg/codegist/crest/config/ParamConfig;

    invoke-virtual {v0}, [Lorg/codegist/crest/config/ParamConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codegist/crest/config/ParamConfig;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getParamConfig(I)Lorg/codegist/crest/config/ParamConfig;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->methodParamConfigs:[Lorg/codegist/crest/config/ParamConfig;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParamCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->methodParamConfigs:[Lorg/codegist/crest/config/ParamConfig;

    array-length v0, v0

    return v0
.end method

.method public getPathTemplate()Lorg/codegist/crest/config/PathTemplate;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->path:Lorg/codegist/crest/config/PathTemplate;

    return-object v0
.end method

.method public getProduces()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->produces:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestInterceptor()Lorg/codegist/crest/interceptor/RequestInterceptor;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->requestInterceptor:Lorg/codegist/crest/interceptor/RequestInterceptor;

    return-object v0
.end method

.method public getResponseHandler()Lorg/codegist/crest/handler/ResponseHandler;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->responseHandler:Lorg/codegist/crest/handler/ResponseHandler;

    return-object v0
.end method

.method public getRetryHandler()Lorg/codegist/crest/handler/RetryHandler;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->retryHandler:Lorg/codegist/crest/handler/RetryHandler;

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->socketTimeout:I

    return v0
.end method

.method public getType()Lorg/codegist/crest/config/MethodType;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultMethodConfig;->type:Lorg/codegist/crest/config/MethodType;

    return-object v0
.end method

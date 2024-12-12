.class public Lorg/codegist/crest/CRestBuilder;
.super Ljava/lang/Object;
.source "CRestBuilder.java"


# instance fields
.field private accessOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

.field private accessTokenRefreshUrl:Ljava/lang/String;

.field private final annotationHandlerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codegist/crest/util/ComponentRegistry$Builder",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lorg/codegist/crest/config/annotate/AnnotationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private auth:Ljava/lang/String;

.field private final classDeserializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codegist/crest/util/ComponentRegistry$Builder",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final classSerializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codegist/crest/util/ComponentRegistry$Builder",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;"
        }
    .end annotation
.end field

.field private consumerOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

.field private final crestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private httpChannelFactory:Lorg/codegist/crest/io/http/HttpChannelFactory;

.field private httpChannelFactoryClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/io/http/HttpChannelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final httpEntityParamExtrators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/io/http/EntityParamExtractor;",
            ">;"
        }
    .end annotation
.end field

.field private jsonDeserializer:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final jsonDeserializerConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final jsonMimes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mimeDeserializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codegist/crest/util/ComponentRegistry$Builder",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;"
        }
    .end annotation
.end field

.field private password:Ljava/lang/String;

.field private final placeholders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final plainTextMimes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private proxyFactory:Lorg/codegist/common/reflect/ProxyFactory;

.field private proxyFactoryClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/common/reflect/ProxyFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final requestBuilderFactory:Lorg/codegist/crest/io/RequestBuilderFactory;

.field private username:Ljava/lang/String;

.field private xmlDeserializer:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final xmlDeserializerConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final xmlMimes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->crestProperties:Ljava/util/Map;

    .line 70
    new-instance v0, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory;

    invoke-direct {v0}, Lorg/codegist/crest/io/http/HttpRequestBuilderFactory;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->requestBuilderFactory:Lorg/codegist/crest/io/RequestBuilderFactory;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->placeholders:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    const-string v1, "application/x-www-form-urlencoded"

    new-instance v2, Lorg/codegist/crest/io/http/UrlEncodedFormEntityParamExtractor;

    invoke-direct {v2}, Lorg/codegist/crest/io/http/UrlEncodedFormEntityParamExtractor;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->httpEntityParamExtrators:Ljava/util/Map;

    .line 74
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "plain/text"

    aput-object v1, v0, v4

    invoke-static {v0}, Lorg/codegist/common/collect/Collections;->asSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->plainTextMimes:Ljava/util/Set;

    .line 75
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "application/xml"

    aput-object v1, v0, v4

    const-string v1, "text/xml"

    aput-object v1, v0, v5

    invoke-static {v0}, Lorg/codegist/common/collect/Collections;->asSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->xmlMimes:Ljava/util/Set;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "application/json"

    aput-object v1, v0, v4

    const-string v1, "application/javascript"

    aput-object v1, v0, v5

    const-string v1, "text/javascript"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "text/json"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/codegist/common/collect/Collections;->asSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->jsonMimes:Ljava/util/Set;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->xmlDeserializerConfig:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->jsonDeserializerConfig:Ljava/util/Map;

    .line 82
    new-instance v0, Lorg/codegist/crest/util/ComponentRegistry$Builder;

    invoke-direct {v0}, Lorg/codegist/crest/util/ComponentRegistry$Builder;-><init>()V

    const-class v1, Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;

    invoke-virtual {v0, v1}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->defaultAs(Ljava/lang/Class;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    invoke-static {}, Lorg/codegist/crest/config/annotate/CRestAnnotations;->getMapping()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/util/Map;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->annotationHandlerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    .line 86
    new-instance v0, Lorg/codegist/crest/util/ComponentRegistry$Builder;

    invoke-direct {v0}, Lorg/codegist/crest/util/ComponentRegistry$Builder;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->mimeDeserializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    .line 87
    new-instance v0, Lorg/codegist/crest/util/ComponentRegistry$Builder;

    invoke-direct {v0}, Lorg/codegist/crest/util/ComponentRegistry$Builder;-><init>()V

    const-class v1, Lorg/codegist/crest/serializer/primitive/VoidDeserializer;

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Void;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/ByteArrayDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, [B

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/StringDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/ByteWrapperDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/BytePrimitiveDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/ShortWrapperDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Short;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/ShortPrimitiveDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/IntegerWrapperDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/IntegerPrimitiveDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/LongWrapperDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/LongPrimitiveDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/DoubleWrapperDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/DoublePrimitiveDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/FloatWrapperDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/FloatPrimitiveDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/BooleanWrapperDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/BooleanPrimitiveDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/CharacterWrapperDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Character;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/CharacterPrimitiveDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/DateDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/util/Date;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/InputStreamDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/io/InputStream;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/ReaderDeserializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/io/Reader;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->classDeserializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    .line 111
    new-instance v0, Lorg/codegist/crest/util/ComponentRegistry$Builder;

    invoke-direct {v0}, Lorg/codegist/crest/util/ComponentRegistry$Builder;-><init>()V

    const-class v1, Lorg/codegist/crest/serializer/ToStringSerializer;

    invoke-virtual {v0, v1}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->defaultAs(Ljava/lang/Class;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/DateSerializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/util/Date;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/primitive/BooleanSerializer;

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/FileSerializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/io/File;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/InputStreamSerializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/io/InputStream;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    const-class v1, Lorg/codegist/crest/serializer/ReaderSerializer;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/io/Reader;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->classSerializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    .line 120
    const-class v0, Lorg/codegist/common/reflect/JdkProxyFactory;

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->proxyFactoryClass:Ljava/lang/Class;

    .line 121
    const-class v0, Lorg/codegist/crest/serializer/jaxb/JaxbDeserializer;

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->xmlDeserializer:Ljava/lang/Class;

    .line 122
    const-class v0, Lorg/codegist/crest/serializer/jackson/JacksonDeserializer;

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->jsonDeserializer:Ljava/lang/Class;

    .line 123
    const-class v0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannelFactory;

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->httpChannelFactoryClass:Ljava/lang/Class;

    return-void
.end method

.method private buildAuthorization(Lorg/codegist/crest/io/http/HttpChannelFactory;)Lorg/codegist/crest/security/Authorization;
    .locals 2
    .param p1, "channelFactory"    # Lorg/codegist/crest/io/http/HttpChannelFactory;

    .prologue
    .line 210
    const-string v0, "oauth"

    iget-object v1, p0, Lorg/codegist/crest/CRestBuilder;->auth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0, p1}, Lorg/codegist/crest/CRestBuilder;->buildOAuthorization(Lorg/codegist/crest/io/http/HttpChannelFactory;)Lorg/codegist/crest/security/Authorization;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 212
    :cond_0
    const-string v0, "basic"

    iget-object v1, p0, Lorg/codegist/crest/CRestBuilder;->auth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-direct {p0}, Lorg/codegist/crest/CRestBuilder;->buildBasicAuthorization()Lorg/codegist/crest/security/Authorization;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildBasicAuthorization()Lorg/codegist/crest/security/Authorization;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lorg/codegist/crest/security/basic/BasicAuthorization;

    iget-object v1, p0, Lorg/codegist/crest/CRestBuilder;->username:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/CRestBuilder;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/codegist/crest/security/basic/BasicAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildDeserializerRegistry(Lorg/codegist/crest/CRestConfig;)Lorg/codegist/crest/util/ComponentRegistry;
    .locals 4
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            ")",
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->mimeDeserializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    iget-object v1, p0, Lorg/codegist/crest/CRestBuilder;->jsonDeserializer:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codegist/crest/CRestBuilder;->jsonMimes:Ljava/util/Set;

    const-class v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/codegist/common/collect/Arrays;->arrify(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/codegist/crest/CRestBuilder;->jsonDeserializerConfig:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    .line 204
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->mimeDeserializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    iget-object v1, p0, Lorg/codegist/crest/CRestBuilder;->xmlDeserializer:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codegist/crest/CRestBuilder;->xmlMimes:Ljava/util/Set;

    const-class v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/codegist/common/collect/Arrays;->arrify(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/codegist/crest/CRestBuilder;->xmlDeserializerConfig:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    .line 205
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->mimeDeserializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    const-class v1, Lorg/codegist/crest/serializer/StringDeserializer;

    iget-object v2, p0, Lorg/codegist/crest/CRestBuilder;->plainTextMimes:Ljava/util/Set;

    const-class v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/codegist/common/collect/Arrays;->arrify(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    .line 206
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->mimeDeserializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    invoke-virtual {v0, p1}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->build(Lorg/codegist/crest/CRestConfig;)Lorg/codegist/crest/util/ComponentRegistry;

    move-result-object v0

    return-object v0
.end method

.method private buildOAuthApi(Lorg/codegist/crest/io/http/HttpChannelFactory;)Lorg/codegist/crest/security/oauth/OAuthApi;
    .locals 6
    .param p1, "channelFactory"    # Lorg/codegist/crest/io/http/HttpChannelFactory;

    .prologue
    .line 239
    iget-object v4, p0, Lorg/codegist/crest/CRestBuilder;->accessTokenRefreshUrl:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 240
    const/4 v4, 0x0

    .line 248
    :goto_0
    return-object v4

    .line 243
    :cond_0
    iget-object v4, p0, Lorg/codegist/crest/CRestBuilder;->accessTokenRefreshUrl:Ljava/lang/String;

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v1, v4, 0x3

    .line 244
    .local v1, "indexOfProtocol":I
    iget-object v4, p0, Lorg/codegist/crest/CRestBuilder;->accessTokenRefreshUrl:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 245
    .local v2, "indexOfServer":I
    iget-object v4, p0, Lorg/codegist/crest/CRestBuilder;->accessTokenRefreshUrl:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "endPoint":Ljava/lang/String;
    iget-object v4, p0, Lorg/codegist/crest/CRestBuilder;->accessTokenRefreshUrl:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;

    iget-object v5, p0, Lorg/codegist/crest/CRestBuilder;->consumerOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    invoke-direct {v4, v5, v0}, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;-><init>(Lorg/codegist/crest/security/oauth/OAuthToken;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->refreshAccessTokenFrom(Ljava/lang/String;)Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->using(Lorg/codegist/crest/io/http/HttpChannelFactory;)Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->build()Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;

    move-result-object v4

    goto :goto_0
.end method

.method private buildOAuthorization(Lorg/codegist/crest/io/http/HttpChannelFactory;)Lorg/codegist/crest/security/Authorization;
    .locals 5
    .param p1, "channelFactory"    # Lorg/codegist/crest/io/http/HttpChannelFactory;

    .prologue
    .line 226
    :try_start_0
    new-instance v0, Lorg/codegist/crest/security/oauth/v1/OAuthenticatorV1;

    iget-object v3, p0, Lorg/codegist/crest/CRestBuilder;->consumerOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    invoke-direct {v0, v3}, Lorg/codegist/crest/security/oauth/v1/OAuthenticatorV1;-><init>(Lorg/codegist/crest/security/oauth/OAuthToken;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .local v0, "authenticator":Lorg/codegist/crest/security/oauth/v1/OAuthenticatorV1;
    invoke-direct {p0, p1}, Lorg/codegist/crest/CRestBuilder;->buildOAuthApi(Lorg/codegist/crest/io/http/HttpChannelFactory;)Lorg/codegist/crest/security/oauth/OAuthApi;

    move-result-object v2

    .line 231
    .local v2, "oAuthApi":Lorg/codegist/crest/security/oauth/OAuthApi;
    if-nez v2, :cond_0

    .line 232
    new-instance v3, Lorg/codegist/crest/security/oauth/OAuthorization;

    iget-object v4, p0, Lorg/codegist/crest/CRestBuilder;->accessOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    invoke-direct {v3, v4, v0}, Lorg/codegist/crest/security/oauth/OAuthorization;-><init>(Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/OAuthenticator;)V

    .line 234
    :goto_0
    return-object v3

    .line 227
    .end local v0    # "authenticator":Lorg/codegist/crest/security/oauth/v1/OAuthenticatorV1;
    .end local v2    # "oAuthApi":Lorg/codegist/crest/security/oauth/OAuthApi;
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/codegist/crest/CRestException;->handle(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 234
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "authenticator":Lorg/codegist/crest/security/oauth/v1/OAuthenticatorV1;
    .restart local v2    # "oAuthApi":Lorg/codegist/crest/security/oauth/OAuthApi;
    :cond_0
    new-instance v3, Lorg/codegist/crest/security/oauth/OAuthorization;

    iget-object v4, p0, Lorg/codegist/crest/CRestBuilder;->accessOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    invoke-direct {v3, v4, v0, v2}, Lorg/codegist/crest/security/oauth/OAuthorization;-><init>(Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/OAuthenticator;Lorg/codegist/crest/security/oauth/OAuthApi;)V

    goto :goto_0
.end method

.method private buildRequestExecutor(Lorg/codegist/crest/io/http/HttpChannelFactory;Lorg/codegist/crest/security/Authorization;Lorg/codegist/crest/serializer/ResponseDeserializer;Lorg/codegist/crest/serializer/ResponseDeserializer;)Lorg/codegist/crest/io/RequestExecutor;
    .locals 3
    .param p1, "plainChannelFactory"    # Lorg/codegist/crest/io/http/HttpChannelFactory;
    .param p2, "authorization"    # Lorg/codegist/crest/security/Authorization;
    .param p3, "baseResponseDeserializer"    # Lorg/codegist/crest/serializer/ResponseDeserializer;
    .param p4, "customTypeResponseDeserializer"    # Lorg/codegist/crest/serializer/ResponseDeserializer;

    .prologue
    .line 195
    move-object v0, p1

    .line 196
    .local v0, "channelFactory":Lorg/codegist/crest/io/http/HttpChannelFactory;
    if-eqz p2, :cond_0

    .line 197
    new-instance v0, Lorg/codegist/crest/io/http/AuthorizationHttpChannelFactory;

    .end local v0    # "channelFactory":Lorg/codegist/crest/io/http/HttpChannelFactory;
    iget-object v1, p0, Lorg/codegist/crest/CRestBuilder;->httpEntityParamExtrators:Ljava/util/Map;

    invoke-direct {v0, p1, p2, v1}, Lorg/codegist/crest/io/http/AuthorizationHttpChannelFactory;-><init>(Lorg/codegist/crest/io/http/HttpChannelFactory;Lorg/codegist/crest/security/Authorization;Ljava/util/Map;)V

    .line 199
    .restart local v0    # "channelFactory":Lorg/codegist/crest/io/http/HttpChannelFactory;
    :cond_0
    new-instance v1, Lorg/codegist/crest/io/RetryingRequestExecutor;

    new-instance v2, Lorg/codegist/crest/io/http/HttpRequestExecutor;

    invoke-direct {v2, v0, p3, p4}, Lorg/codegist/crest/io/http/HttpRequestExecutor;-><init>(Lorg/codegist/crest/io/http/HttpChannelFactory;Lorg/codegist/crest/serializer/ResponseDeserializer;Lorg/codegist/crest/serializer/ResponseDeserializer;)V

    invoke-direct {v1, v2}, Lorg/codegist/crest/io/RetryingRequestExecutor;-><init>(Lorg/codegist/crest/io/RequestExecutor;)V

    return-object v1
.end method

.method private static getInstance(Ljava/lang/Object;Ljava/lang/Class;Lorg/codegist/crest/CRestConfig;)Ljava/lang/Object;
    .locals 2
    .param p2, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/codegist/crest/CRestConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "defaultIfSet":Ljava/lang/Object;, "TT;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    if-eqz p0, :cond_0

    .line 188
    .end local p0    # "defaultIfSet":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p0

    .restart local p0    # "defaultIfSet":Ljava/lang/Object;, "TT;"
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lorg/codegist/crest/util/ComponentFactory;->instantiate(Ljava/lang/Class;Lorg/codegist/crest/CRestConfig;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/codegist/crest/CRestException;->handle(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static putIfAbsentAndNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/codegist/common/collect/Maps;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addPlaceholders(Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "placeholders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->placeholders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 417
    return-object p0
.end method

.method public addProperties(Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "crestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->crestProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 349
    return-object p0
.end method

.method public basicAuth(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 659
    const-string v0, "basic"

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->auth:Ljava/lang/String;

    .line 660
    iput-object p1, p0, Lorg/codegist/crest/CRestBuilder;->username:Ljava/lang/String;

    .line 661
    iput-object p2, p0, Lorg/codegist/crest/CRestBuilder;->password:Ljava/lang/String;

    .line 662
    return-object p0
.end method

.method public bindAnnotationHandler(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/config/annotate/AnnotationHandler",
            "<TA;>;>;",
            "Ljava/lang/Class",
            "<TA;>;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, "handler":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/config/annotate/AnnotationHandler<TA;>;>;"
    .local p2, "annotationCls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codegist/crest/CRestBuilder;->bindAnnotationHandler(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bindAnnotationHandler(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/config/annotate/AnnotationHandler",
            "<TA;>;>;",
            "Ljava/lang/Class",
            "<TA;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "handler":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/config/annotate/AnnotationHandler<TA;>;>;"
    .local p2, "annotationCls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .local p3, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->annotationHandlerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1, p3}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    .line 493
    return-object p0
.end method

.method public varargs bindDeserializer(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 543
    .local p1, "deserializer":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Deserializer;>;"
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codegist/crest/CRestBuilder;->bindDeserializer(Ljava/lang/Class;[Ljava/lang/Class;Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bindDeserializer(Ljava/lang/Class;[Ljava/lang/Class;Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, "deserializer":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Deserializer;>;"
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->classDeserializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    .line 563
    return-object p0
.end method

.method public varargs bindDeserializer(Ljava/lang/Class;[Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .param p2, "mimeTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "deserializer":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Deserializer;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codegist/crest/CRestBuilder;->bindDeserializer(Ljava/lang/Class;[Ljava/lang/String;Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bindDeserializer(Ljava/lang/Class;[Ljava/lang/String;Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .param p2, "mimeTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, "deserializer":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Deserializer;>;"
    .local p3, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->mimeDeserializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    .line 526
    return-object p0
.end method

.method public varargs bindJsonDeserializerWith([Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 2
    .param p1, "mimeTypes"    # [Ljava/lang/String;

    .prologue
    .line 691
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->jsonMimes:Ljava/util/Set;

    invoke-static {p1}, Lorg/codegist/common/collect/Collections;->asSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 692
    return-object p0
.end method

.method public varargs bindPlainTextDeserializerWith([Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 2
    .param p1, "mimeTypes"    # [Ljava/lang/String;

    .prologue
    .line 720
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->plainTextMimes:Ljava/util/Set;

    invoke-static {p1}, Lorg/codegist/common/collect/Collections;->asSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 721
    return-object p0
.end method

.method public varargs bindSerializer(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, "serializer":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Serializer;>;"
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codegist/crest/CRestBuilder;->bindSerializer(Ljava/lang/Class;[Ljava/lang/Class;Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bindSerializer(Ljava/lang/Class;[Ljava/lang/Class;Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, "serializer":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Serializer;>;"
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->classSerializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    .line 609
    return-object p0
.end method

.method public varargs bindXmlDeserializerWith([Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 2
    .param p1, "mimeTypes"    # [Ljava/lang/String;

    .prologue
    .line 706
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->xmlMimes:Ljava/util/Set;

    invoke-static {p1}, Lorg/codegist/common/collect/Collections;->asSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 707
    return-object p0
.end method

.method public booleanFormat(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 2
    .param p1, "trueFormat"    # Ljava/lang/String;
    .param p2, "falseFormat"    # Ljava/lang/String;

    .prologue
    .line 335
    sget-object v0, Lorg/codegist/crest/CRestConfig;->CREST_BOOLEAN_TRUE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/codegist/crest/CRestBuilder;->property(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    sget-object v1, Lorg/codegist/crest/CRestConfig;->CREST_BOOLEAN_FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lorg/codegist/crest/CRestBuilder;->property(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/codegist/crest/CRest;
    .locals 22

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/CRestBuilder;->crestProperties:Ljava/util/Map;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-class v21, Lorg/codegist/crest/CRestConfig;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "#placeholders"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/CRestBuilder;->placeholders:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/codegist/crest/util/Placeholders;->compile(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lorg/codegist/crest/CRestBuilder;->putIfAbsentAndNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    new-instance v9, Lorg/codegist/crest/DefaultCRestConfig;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/CRestBuilder;->crestProperties:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/codegist/crest/DefaultCRestConfig;-><init>(Ljava/util/Map;)V

    .line 142
    .local v9, "crestConfig":Lorg/codegist/crest/CRestConfig;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/codegist/crest/CRestBuilder;->buildDeserializerRegistry(Lorg/codegist/crest/CRestConfig;)Lorg/codegist/crest/util/ComponentRegistry;

    move-result-object v13

    .line 143
    .local v13, "mimeDeserializerRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/String;Lorg/codegist/crest/serializer/Deserializer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/CRestBuilder;->classDeserializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->build(Lorg/codegist/crest/CRestConfig;)Lorg/codegist/crest/util/ComponentRegistry;

    move-result-object v5

    .line 145
    .local v5, "classDeserializerRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/Class<*>;Lorg/codegist/crest/serializer/Deserializer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/CRestBuilder;->classSerializerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->build(Lorg/codegist/crest/CRestConfig;)Lorg/codegist/crest/util/ComponentRegistry;

    move-result-object v7

    .line 146
    .local v7, "classSerializerRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/Class<*>;Lorg/codegist/crest/serializer/Serializer;>;"
    new-instance v12, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilderFactory;

    invoke-direct {v12, v9, v13, v7}, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilderFactory;-><init>(Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry;Lorg/codegist/crest/util/ComponentRegistry;)V

    .line 147
    .local v12, "icbf":Lorg/codegist/crest/config/InterfaceConfigBuilderFactory;
    new-instance v16, Lorg/codegist/crest/config/DefaultParamConfigBuilderFactory;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v7}, Lorg/codegist/crest/config/DefaultParamConfigBuilderFactory;-><init>(Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry;)V

    .line 148
    .local v16, "pcbf":Lorg/codegist/crest/config/ParamConfigBuilderFactory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/CRestBuilder;->crestProperties:Ljava/util/Map;

    move-object/from16 v19, v0

    const-class v20, Lorg/codegist/crest/config/ParamConfigBuilderFactory;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/codegist/crest/CRestBuilder;->putIfAbsentAndNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/CRestBuilder;->proxyFactory:Lorg/codegist/common/reflect/ProxyFactory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/CRestBuilder;->proxyFactoryClass:Ljava/lang/Class;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Lorg/codegist/crest/CRestBuilder;->getInstance(Ljava/lang/Object;Ljava/lang/Class;Lorg/codegist/crest/CRestConfig;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/codegist/common/reflect/ProxyFactory;

    .line 151
    .local v15, "pProxyFactory":Lorg/codegist/common/reflect/ProxyFactory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/CRestBuilder;->httpChannelFactory:Lorg/codegist/crest/io/http/HttpChannelFactory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/CRestBuilder;->httpChannelFactoryClass:Ljava/lang/Class;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Lorg/codegist/crest/CRestBuilder;->getInstance(Ljava/lang/Object;Ljava/lang/Class;Lorg/codegist/crest/CRestConfig;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/codegist/crest/io/http/HttpChannelFactory;

    .line 153
    .local v17, "plainChannelFactory":Lorg/codegist/crest/io/http/HttpChannelFactory;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/codegist/crest/CRestBuilder;->buildAuthorization(Lorg/codegist/crest/io/http/HttpChannelFactory;)Lorg/codegist/crest/security/Authorization;

    move-result-object v3

    .line 154
    .local v3, "authorization":Lorg/codegist/crest/security/Authorization;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/CRestBuilder;->crestProperties:Ljava/util/Map;

    move-object/from16 v19, v0

    const-class v20, Lorg/codegist/crest/security/Authorization;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Lorg/codegist/crest/CRestBuilder;->putIfAbsentAndNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    new-instance v14, Lorg/codegist/crest/serializer/ResponseDeserializerByMimeType;

    invoke-direct {v14, v13}, Lorg/codegist/crest/serializer/ResponseDeserializerByMimeType;-><init>(Lorg/codegist/crest/util/ComponentRegistry;)V

    .line 157
    .local v14, "mimeResponseDeserializer":Lorg/codegist/crest/serializer/ResponseDeserializer;
    new-instance v6, Lorg/codegist/crest/serializer/ResponseDeserializerByClass;

    invoke-direct {v6, v5}, Lorg/codegist/crest/serializer/ResponseDeserializerByClass;-><init>(Lorg/codegist/crest/util/ComponentRegistry;)V

    .line 158
    .local v6, "classResponseDeserializer":Lorg/codegist/crest/serializer/ResponseDeserializer;
    new-instance v11, Lorg/codegist/crest/serializer/ResponseDeserializerByDeserializers;

    invoke-direct {v11}, Lorg/codegist/crest/serializer/ResponseDeserializerByDeserializers;-><init>()V

    .line 160
    .local v11, "deserializersResponseDeserializer":Lorg/codegist/crest/serializer/ResponseDeserializer;
    new-instance v4, Lorg/codegist/crest/serializer/ResponseDeserializerComposite;

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Lorg/codegist/crest/serializer/ResponseDeserializer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    const/16 v20, 0x1

    aput-object v14, v19, v20

    const/16 v20, 0x2

    aput-object v6, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lorg/codegist/crest/serializer/ResponseDeserializerComposite;-><init>([Lorg/codegist/crest/serializer/ResponseDeserializer;)V

    .line 161
    .local v4, "baseResponseDeserializer":Lorg/codegist/crest/serializer/ResponseDeserializer;
    new-instance v10, Lorg/codegist/crest/serializer/ResponseDeserializerComposite;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lorg/codegist/crest/serializer/ResponseDeserializer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v6, v19, v20

    const/16 v20, 0x1

    aput-object v14, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/codegist/crest/serializer/ResponseDeserializerComposite;-><init>([Lorg/codegist/crest/serializer/ResponseDeserializer;)V

    .line 163
    .local v10, "customTypeResponseDeserializer":Lorg/codegist/crest/serializer/ResponseDeserializer;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3, v4, v10}, Lorg/codegist/crest/CRestBuilder;->buildRequestExecutor(Lorg/codegist/crest/io/http/HttpChannelFactory;Lorg/codegist/crest/security/Authorization;Lorg/codegist/crest/serializer/ResponseDeserializer;Lorg/codegist/crest/serializer/ResponseDeserializer;)Lorg/codegist/crest/io/RequestExecutor;

    move-result-object v18

    .line 167
    .local v18, "requestExecutor":Lorg/codegist/crest/io/RequestExecutor;
    invoke-static {}, Lorg/codegist/crest/config/annotate/jaxrs/JaxRsAnnotations;->isJaxRsAware()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/CRestBuilder;->annotationHandlerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-object/from16 v19, v0

    invoke-static {}, Lorg/codegist/crest/config/annotate/jaxrs/JaxRsAnnotations;->getMapping()Ljava/util/Map;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->register(Ljava/util/Map;)Lorg/codegist/crest/util/ComponentRegistry$Builder;

    .line 171
    :cond_0
    new-instance v8, Lorg/codegist/crest/config/AnnotationDrivenInterfaceConfigFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/CRestBuilder;->annotationHandlerBuilder:Lorg/codegist/crest/util/ComponentRegistry$Builder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lorg/codegist/crest/util/ComponentRegistry$Builder;->build(Lorg/codegist/crest/CRestConfig;)Lorg/codegist/crest/util/ComponentRegistry;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v12, v0}, Lorg/codegist/crest/config/AnnotationDrivenInterfaceConfigFactory;-><init>(Lorg/codegist/crest/config/InterfaceConfigBuilderFactory;Lorg/codegist/crest/util/ComponentRegistry;)V

    .line 173
    .local v8, "configFactory":Lorg/codegist/crest/config/InterfaceConfigFactory;
    new-instance v19, Lorg/codegist/crest/DefaultCRest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/CRestBuilder;->requestBuilderFactory:Lorg/codegist/crest/io/RequestBuilderFactory;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v15, v1, v2, v8}, Lorg/codegist/crest/DefaultCRest;-><init>(Lorg/codegist/common/reflect/ProxyFactory;Lorg/codegist/crest/io/RequestExecutor;Lorg/codegist/crest/io/RequestBuilderFactory;Lorg/codegist/crest/config/InterfaceConfigFactory;)V

    return-object v19
.end method

.method public dateFormat(Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 321
    sget-object v0, Lorg/codegist/crest/CRestConfig;->CREST_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/codegist/crest/CRestBuilder;->property(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deserializeJsonWith(Ljava/lang/Class;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 774
    .local p1, "deserializer":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Deserializer;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codegist/crest/CRestBuilder;->deserializeJsonWith(Ljava/lang/Class;Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deserializeJsonWith(Ljava/lang/Class;Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 792
    .local p1, "deserializer":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Deserializer;>;"
    .local p2, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/codegist/crest/CRestBuilder;->jsonDeserializer:Ljava/lang/Class;

    .line 793
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->jsonDeserializerConfig:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 794
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->jsonDeserializerConfig:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 795
    return-object p0
.end method

.method public deserializeXmlWith(Ljava/lang/Class;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 737
    .local p1, "deserializer":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Deserializer;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codegist/crest/CRestBuilder;->deserializeXmlWith(Ljava/lang/Class;Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deserializeXmlWith(Ljava/lang/Class;Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "deserializer":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Deserializer;>;"
    .local p2, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/codegist/crest/CRestBuilder;->xmlDeserializer:Ljava/lang/Class;

    .line 755
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->xmlDeserializerConfig:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 756
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->xmlDeserializerConfig:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 757
    return-object p0
.end method

.method public endpoint(Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 391
    sget-object v0, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_ENDPOINT:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/codegist/crest/CRestBuilder;->property(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public extractsEntityAuthParamsWith(Ljava/lang/String;Lorg/codegist/crest/io/http/EntityParamExtractor;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .param p1, "entityContentType"    # Ljava/lang/String;
    .param p2, "entityParamExtractor"    # Lorg/codegist/crest/io/http/EntityParamExtractor;

    .prologue
    .line 674
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->httpEntityParamExtrators:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    return-object p0
.end method

.method public oauth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 7
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "accessTokenSecret"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 621
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/codegist/crest/CRestBuilder;->oauth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public oauth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 2
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "accessTokenSecret"    # Ljava/lang/String;
    .param p5, "sessionHandle"    # Ljava/lang/String;
    .param p6, "accessTokenRefreshUrl"    # Ljava/lang/String;

    .prologue
    .line 637
    const-string v0, "oauth"

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->auth:Ljava/lang/String;

    .line 638
    if-eqz p5, :cond_1

    .line 639
    new-instance v0, Lorg/codegist/crest/security/oauth/OAuthToken;

    const-string v1, "oauth_session_handle"

    invoke-static {v1, p5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p3, p4, v1}, Lorg/codegist/crest/security/oauth/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->accessOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    .line 643
    :goto_0
    if-eqz p6, :cond_0

    .line 644
    sget-object v0, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_RETRY_HANDLER:Ljava/lang/String;

    const-class v1, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;

    invoke-virtual {p0, v0, v1}, Lorg/codegist/crest/CRestBuilder;->property(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/crest/CRestBuilder;

    .line 645
    sget-object v0, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;->UNAUTHORIZED_STATUS_CODE_PROP:Ljava/lang/String;

    const/16 v1, 0x191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codegist/crest/CRestBuilder;->property(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/crest/CRestBuilder;

    .line 647
    :cond_0
    iput-object p6, p0, Lorg/codegist/crest/CRestBuilder;->accessTokenRefreshUrl:Ljava/lang/String;

    .line 648
    new-instance v0, Lorg/codegist/crest/security/oauth/OAuthToken;

    invoke-direct {v0, p1, p2}, Lorg/codegist/crest/security/oauth/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->consumerOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    .line 649
    return-object p0

    .line 641
    :cond_1
    new-instance v0, Lorg/codegist/crest/security/oauth/OAuthToken;

    invoke-direct {v0, p3, p4}, Lorg/codegist/crest/security/oauth/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codegist/crest/CRestBuilder;->accessOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    goto :goto_0
.end method

.method public placeholder(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .param p1, "placeholder"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codegist/crest/CRestBuilder;->addPlaceholders(Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public property(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 363
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codegist/crest/CRestBuilder;->addProperties(Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setConcurrencyLevel(I)Lorg/codegist/crest/CRestBuilder;
    .locals 2
    .param p1, "concurrencyLevel"    # I

    .prologue
    .line 310
    sget-object v0, Lorg/codegist/crest/CRestConfig;->CREST_CONCURRENCY_LEVEL:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codegist/crest/CRestBuilder;->property(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setHttpChannelFactory(Ljava/lang/Class;)Lorg/codegist/crest/CRestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/io/http/HttpChannelFactory;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "httpChannelFactory":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/io/http/HttpChannelFactory;>;"
    iput-object p1, p0, Lorg/codegist/crest/CRestBuilder;->httpChannelFactoryClass:Ljava/lang/Class;

    .line 287
    return-object p0
.end method

.method public setHttpChannelFactory(Lorg/codegist/crest/io/http/HttpChannelFactory;)Lorg/codegist/crest/CRestBuilder;
    .locals 0
    .param p1, "httpChannelFactory"    # Lorg/codegist/crest/io/http/HttpChannelFactory;

    .prologue
    .line 298
    iput-object p1, p0, Lorg/codegist/crest/CRestBuilder;->httpChannelFactory:Lorg/codegist/crest/io/http/HttpChannelFactory;

    .line 299
    return-object p0
.end method

.method public setPlaceholders(Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "placeholders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->placeholders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 466
    invoke-virtual {p0, p1}, Lorg/codegist/crest/CRestBuilder;->addPlaceholders(Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setProperties(Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "crestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/codegist/crest/CRestBuilder;->crestProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 377
    invoke-virtual {p0, p1}, Lorg/codegist/crest/CRestBuilder;->addProperties(Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setProxyFactory(Ljava/lang/Class;)Lorg/codegist/crest/CRestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/common/reflect/ProxyFactory;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "proxyFactory":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/common/reflect/ProxyFactory;>;"
    iput-object p1, p0, Lorg/codegist/crest/CRestBuilder;->proxyFactoryClass:Ljava/lang/Class;

    .line 263
    return-object p0
.end method

.method public setProxyFactory(Lorg/codegist/common/reflect/ProxyFactory;)Lorg/codegist/crest/CRestBuilder;
    .locals 0
    .param p1, "proxyFactory"    # Lorg/codegist/common/reflect/ProxyFactory;

    .prologue
    .line 274
    iput-object p1, p0, Lorg/codegist/crest/CRestBuilder;->proxyFactory:Lorg/codegist/common/reflect/ProxyFactory;

    .line 275
    return-object p0
.end method

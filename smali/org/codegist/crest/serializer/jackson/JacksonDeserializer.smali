.class public Lorg/codegist/crest/serializer/jackson/JacksonDeserializer;
.super Ljava/lang/Object;
.source "JacksonDeserializer.java"

# interfaces
.implements Lorg/codegist/crest/serializer/Deserializer;


# static fields
.field public static final JACKSON_DESERIALIZER_CONFIG_PROP:Ljava/lang/String;

.field public static final OBJECT_MAPPER_PROP:Ljava/lang/String;

.field private static final PREFIX:Ljava/lang/String;


# instance fields
.field private final jackson:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lorg/codegist/crest/serializer/jackson/JacksonDeserializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/jackson/JacksonDeserializer;->PREFIX:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/codegist/crest/serializer/jackson/JacksonDeserializer;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#user-object-mapper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/jackson/JacksonDeserializer;->OBJECT_MAPPER_PROP:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/codegist/crest/serializer/jackson/JacksonDeserializer;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#deserializer-config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/jackson/JacksonDeserializer;->JACKSON_DESERIALIZER_CONFIG_PROP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 1
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codegist/crest/serializer/jackson/JacksonFactory;->createObjectMapper(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/serializer/jackson/JacksonDeserializer;->jackson:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 74
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Object;
    .locals 3
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .param p3, "stream"    # Ljava/io/InputStream;
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/codegist/crest/serializer/jackson/JacksonDeserializer;->jackson:Lorg/codehaus/jackson/map/ObjectMapper;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->type(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/Reader;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 83
    invoke-static {p3}, Lorg/codegist/common/io/IOs;->close(Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p3}, Lorg/codegist/common/io/IOs;->close(Ljava/io/InputStream;)V

    throw v0
.end method

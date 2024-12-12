.class public Lorg/codegist/crest/serializer/simplexml/SimpleXmlDeserializer;
.super Ljava/lang/Object;
.source "SimpleXmlDeserializer.java"

# interfaces
.implements Lorg/codegist/crest/serializer/Deserializer;


# static fields
.field private static final DEFAULT_STRICT:Z = true

.field private static final PREFIX:Ljava/lang/String;

.field public static final SERIALIZER_PROP:Ljava/lang/String;

.field public static final STRICT_PROP:Ljava/lang/String;


# instance fields
.field private final serializer:Lorg/simpleframework/xml/Serializer;

.field private final strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lorg/codegist/crest/serializer/simplexml/SimpleXmlDeserializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/simplexml/SimpleXmlDeserializer;->PREFIX:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/codegist/crest/serializer/simplexml/SimpleXmlDeserializer;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#strict"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/simplexml/SimpleXmlDeserializer;->STRICT_PROP:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/codegist/crest/serializer/simplexml/SimpleXmlDeserializer;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#serializer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/simplexml/SimpleXmlDeserializer;->SERIALIZER_PROP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 2
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codegist/crest/serializer/simplexml/SimpleXmlFactory;->createSerializer(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;)Lorg/simpleframework/xml/Serializer;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/serializer/simplexml/SimpleXmlDeserializer;->serializer:Lorg/simpleframework/xml/Serializer;

    .line 74
    sget-object v0, Lorg/codegist/crest/serializer/simplexml/SimpleXmlDeserializer;->STRICT_PROP:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codegist/crest/serializer/simplexml/SimpleXmlDeserializer;->strict:Z

    .line 75
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
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/codegist/crest/serializer/simplexml/SimpleXmlDeserializer;->serializer:Lorg/simpleframework/xml/Serializer;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iget-boolean v2, p0, Lorg/codegist/crest/serializer/simplexml/SimpleXmlDeserializer;->strict:Z

    invoke-interface {v0, p1, v1, v2}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/Reader;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 85
    invoke-static {p3}, Lorg/codegist/common/io/IOs;->close(Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p3}, Lorg/codegist/common/io/IOs;->close(Ljava/io/InputStream;)V

    throw v0
.end method

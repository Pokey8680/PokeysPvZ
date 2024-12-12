.class public Lorg/codegist/crest/serializer/jaxb/JaxbDeserializer;
.super Ljava/lang/Object;
.source "JaxbDeserializer.java"

# interfaces
.implements Lorg/codegist/crest/serializer/Deserializer;


# static fields
.field public static final JAXB_PROP:Ljava/lang/String;

.field public static final MODEL_FACTORY_CLASS_PROP:Ljava/lang/String;

.field public static final MODEL_PACKAGE_PROP:Ljava/lang/String;

.field public static final POOL_RETRIEVAL_MAX_WAIT_PROP:Ljava/lang/String;

.field private static final PREFIX:Ljava/lang/String;


# instance fields
.field private final jaxb:Lorg/codegist/crest/serializer/jaxb/Jaxb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lorg/codegist/crest/serializer/jaxb/JaxbDeserializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/jaxb/JaxbDeserializer;->PREFIX:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/codegist/crest/serializer/jaxb/JaxbDeserializer;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#pool.retrieval.max-wait"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/jaxb/JaxbDeserializer;->POOL_RETRIEVAL_MAX_WAIT_PROP:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/codegist/crest/serializer/jaxb/JaxbDeserializer;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#jaxb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/jaxb/JaxbDeserializer;->JAXB_PROP:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/codegist/crest/serializer/jaxb/JaxbDeserializer;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#model.package"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/jaxb/JaxbDeserializer;->MODEL_PACKAGE_PROP:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/codegist/crest/serializer/jaxb/JaxbDeserializer;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#model.factory-class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/jaxb/JaxbDeserializer;->MODEL_FACTORY_CLASS_PROP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 1
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codegist/crest/serializer/jaxb/JaxbFactory;->create(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;)Lorg/codegist/crest/serializer/jaxb/Jaxb;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/serializer/jaxb/JaxbDeserializer;->jaxb:Lorg/codegist/crest/serializer/jaxb/Jaxb;

    .line 101
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Object;
    .locals 2
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
    .line 108
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/codegist/crest/serializer/jaxb/JaxbDeserializer;->jaxb:Lorg/codegist/crest/serializer/jaxb/Jaxb;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-interface {v0, p1, p2, v1}, Lorg/codegist/crest/serializer/jaxb/Jaxb;->unmarshal(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 110
    invoke-static {p3}, Lorg/codegist/common/io/IOs;->close(Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p3}, Lorg/codegist/common/io/IOs;->close(Ljava/io/InputStream;)V

    throw v0
.end method

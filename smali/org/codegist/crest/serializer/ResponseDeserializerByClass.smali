.class public Lorg/codegist/crest/serializer/ResponseDeserializerByClass;
.super Ljava/lang/Object;
.source "ResponseDeserializerByClass.java"

# interfaces
.implements Lorg/codegist/crest/serializer/ResponseDeserializer;


# static fields
.field private static final CLASS_NOT_FOUND_ERROR:Ljava/lang/String;

.field private static final LOG:Lorg/codegist/common/log/Logger;


# instance fields
.field private final classDeserializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot deserialize response to class \'%s\', cancelling deserialization.\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "This happens after response\'s Content-Type based deserialization have failed deserializing the response because of an unknown or not present response Content-Type.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CRest has a predefined list of known classes for common data type (ei:primitives, InputStream, Reader etc...). "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "These deserializers are used when CRest cannot deserialize the response based on the server response\'s content-type.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "The method return type does not fall in the predefined list of known types. You can write your own deserializer and bind it as follow:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CRest crest = new CRestBuilder().bindDeserializer(MyOwnTypeDeserializer.class, MyOwnType.class).build();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "or, if the server can provide a Content-Type:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CRest crest = new CRestBuilder().bindDeserializer(MyOwnTypeDeserializer.class, \"the-content-type\").build();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/ResponseDeserializerByClass;->CLASS_NOT_FOUND_ERROR:Ljava/lang/String;

    .line 44
    const-class v0, Lorg/codegist/crest/serializer/ResponseDeserializerByClass;

    invoke-static {v0}, Lorg/codegist/common/log/Logger;->getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/ResponseDeserializerByClass;->LOG:Lorg/codegist/common/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/codegist/crest/util/ComponentRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "classDeserializerRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/Class<*>;Lorg/codegist/crest/serializer/Deserializer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/codegist/crest/serializer/ResponseDeserializerByClass;->classDeserializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    .line 52
    return-void
.end method


# virtual methods
.method public deserialize(Lorg/codegist/crest/io/Response;)Ljava/lang/Object;
    .locals 6
    .param p1, "response"    # Lorg/codegist/crest/io/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codegist/crest/io/Response;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    invoke-interface {p1}, Lorg/codegist/crest/io/Response;->getExpectedType()Ljava/lang/Class;

    move-result-object v0

    .line 59
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lorg/codegist/crest/serializer/ResponseDeserializerByClass;->classDeserializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    invoke-virtual {v1, v0}, Lorg/codegist/crest/util/ComponentRegistry;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lorg/codegist/crest/serializer/ResponseDeserializerByClass;->CLASS_NOT_FOUND_ERROR:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/codegist/common/lang/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    sget-object v1, Lorg/codegist/crest/serializer/ResponseDeserializerByClass;->LOG:Lorg/codegist/common/log/Logger;

    const-string v2, "Trying to deserialize response to Type: %s."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v1, p0, Lorg/codegist/crest/serializer/ResponseDeserializerByClass;->classDeserializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    invoke-virtual {v1, v0}, Lorg/codegist/crest/util/ComponentRegistry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codegist/crest/serializer/Deserializer;

    invoke-interface {p1}, Lorg/codegist/crest/io/Response;->getExpectedGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p1}, Lorg/codegist/crest/io/Response;->asStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {p1}, Lorg/codegist/crest/io/Response;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Lorg/codegist/crest/serializer/Deserializer;->deserialize(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

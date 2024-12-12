.class public Lorg/codegist/crest/serializer/ResponseDeserializerByMimeType;
.super Ljava/lang/Object;
.source "ResponseDeserializerByMimeType.java"

# interfaces
.implements Lorg/codegist/crest/serializer/ResponseDeserializer;


# static fields
.field private static final LOG:Lorg/codegist/common/log/Logger;

.field private static final MIME_TYPE_NOT_FOUND_ERROR:Ljava/lang/String;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot deserialize response to response\'s mimeType \'%s\', cancelling deserialization.\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CRest has a predefined list of \'known\' mime-type for common data type (ei:xml, json, plaintext). "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "If the server response if effectively one of these common types, but not part of CRest\'s default mime type lists, then you can build a CRest instance of follow:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CRest crest = new CRestBuilder().bindJsonDeserializerWith(\"server-given-mime-type\").build();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "or\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CRest crest = new CRestBuilder().bindXmlDeserializerWith(\"server-given-mime-type\").build();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "or\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CRest crest = new CRestBuilder().bindPlainTextDeserializerWith(\"server-given-mime-type\").build();\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "This will add \"server-given-mime-type\" mime type to the prefedined list of common mime for the respective deserializer.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Otherwise, if the mime type represent a custom type, then you can write your own deserializer and bind it as follow:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CRest crest = new CRestBuilder().bindDeserializer(MyOwnTypeDeserializer.class, \"server-given-mime-type\").build();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/ResponseDeserializerByMimeType;->MIME_TYPE_NOT_FOUND_ERROR:Ljava/lang/String;

    .line 47
    const-class v0, Lorg/codegist/crest/serializer/ResponseDeserializerByMimeType;

    invoke-static {v0}, Lorg/codegist/common/log/Logger;->getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/ResponseDeserializerByMimeType;->LOG:Lorg/codegist/common/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/codegist/crest/util/ComponentRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "mimeDeserializerRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/String;Lorg/codegist/crest/serializer/Deserializer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/codegist/crest/serializer/ResponseDeserializerByMimeType;->mimeDeserializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    .line 55
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

    .line 61
    invoke-interface {p1}, Lorg/codegist/crest/io/Response;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "mimeType":Ljava/lang/String;
    iget-object v1, p0, Lorg/codegist/crest/serializer/ResponseDeserializerByMimeType;->mimeDeserializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    invoke-virtual {v1, v0}, Lorg/codegist/crest/util/ComponentRegistry;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lorg/codegist/crest/serializer/ResponseDeserializerByMimeType;->MIME_TYPE_NOT_FOUND_ERROR:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/codegist/common/lang/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    sget-object v1, Lorg/codegist/crest/serializer/ResponseDeserializerByMimeType;->LOG:Lorg/codegist/common/log/Logger;

    const-string v2, "Trying to deserialize response to Mime Type: %s."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v1, p0, Lorg/codegist/crest/serializer/ResponseDeserializerByMimeType;->mimeDeserializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    invoke-virtual {v1, v0}, Lorg/codegist/crest/util/ComponentRegistry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codegist/crest/serializer/Deserializer;

    invoke-interface {p1}, Lorg/codegist/crest/io/Response;->getExpectedType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1}, Lorg/codegist/crest/io/Response;->getExpectedGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-interface {p1}, Lorg/codegist/crest/io/Response;->asStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {p1}, Lorg/codegist/crest/io/Response;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/codegist/crest/serializer/Deserializer;->deserialize(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.class public Lorg/codegist/crest/serializer/ResponseDeserializerByDeserializers;
.super Ljava/lang/Object;
.source "ResponseDeserializerByDeserializers.java"

# interfaces
.implements Lorg/codegist/crest/serializer/ResponseDeserializer;


# static fields
.field private static final LOG:Lorg/codegist/common/log/Logger;

.field private static final NO_DESERIALIZERS_ERROR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-class v0, Lorg/codegist/crest/serializer/ResponseDeserializerByDeserializers;

    invoke-static {v0}, Lorg/codegist/common/log/Logger;->getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/ResponseDeserializerByDeserializers;->LOG:Lorg/codegist/common/log/Logger;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No deserializers have been configured for the method config (%s), cancelling deserialization.\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "This happens after both response\'s Content-Type and method\'s return type based deserializations have failed deserializing the response.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "As a last attempt, CRest will try to use the predefined deserializer for the method, defined using @Consumes(\"some-mime-type\") or @Deserializer(MyDeserializer.class) annotations. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "If not present, then deserialization is not possible at this point.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "To fix it, try one of the following:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  - Ensure the response has a known Content-Type.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  - If response Content-Type is unknown, bind it through CRestBuilder using either a common deserializer or providing your own.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  - If response Content-Type cannot be changed, bind a deserializer either through @Consumes(\"some-mime-type\") or @Deserializer(MyDeserializer.class) annotation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/ResponseDeserializerByDeserializers;->NO_DESERIALIZERS_ERROR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lorg/codegist/crest/io/Response;)Ljava/lang/Object;
    .locals 15
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
    .line 58
    invoke-interface/range {p1 .. p1}, Lorg/codegist/crest/io/Response;->getRequest()Lorg/codegist/crest/io/Request;

    move-result-object v11

    invoke-interface {v11}, Lorg/codegist/crest/io/Request;->getMethodConfig()Lorg/codegist/crest/config/MethodConfig;

    move-result-object v8

    .line 59
    .local v8, "mc":Lorg/codegist/crest/config/MethodConfig;
    invoke-interface {v8}, Lorg/codegist/crest/config/MethodConfig;->getDeserializers()[Lorg/codegist/crest/serializer/Deserializer;

    move-result-object v3

    .line 60
    .local v3, "deserializers":[Lorg/codegist/crest/serializer/Deserializer;
    array-length v11, v3

    if-lez v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    sget-object v12, Lorg/codegist/crest/serializer/ResponseDeserializerByDeserializers;->NO_DESERIALIZERS_ERROR:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    invoke-static {v11, v12, v13}, Lorg/codegist/common/lang/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-interface/range {p1 .. p1}, Lorg/codegist/crest/io/Response;->asStream()Ljava/io/InputStream;

    move-result-object v9

    .line 64
    .local v9, "pStream":Ljava/io/InputStream;
    array-length v11, v3

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    .line 66
    new-instance v10, Ljava/io/ByteArrayInputStream;

    const/4 v11, 0x1

    invoke-static {v9, v11}, Lorg/codegist/common/io/IOs;->toByteArray(Ljava/io/InputStream;Z)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 67
    .end local v9    # "pStream":Ljava/io/InputStream;
    .local v10, "pStream":Ljava/io/InputStream;
    const/4 v6, 0x1

    .local v6, "isDumped":Z
    move-object v9, v10

    .line 71
    .end local v10    # "pStream":Ljava/io/InputStream;
    .restart local v9    # "pStream":Ljava/io/InputStream;
    :goto_1
    const/4 v1, 0x0

    .line 72
    .local v1, "deserializationException":Ljava/lang/Exception;
    move-object v0, v3

    .local v0, "arr$":[Lorg/codegist/crest/serializer/Deserializer;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v7, :cond_3

    aget-object v2, v0, v5

    .line 74
    .local v2, "deserializer":Lorg/codegist/crest/serializer/Deserializer;
    :try_start_0
    sget-object v11, Lorg/codegist/crest/serializer/ResponseDeserializerByDeserializers;->LOG:Lorg/codegist/common/log/Logger;

    const-string v12, "Trying to deserialize response with user specified deserializer: %s."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-virtual {v11, v12, v13}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-interface/range {p1 .. p1}, Lorg/codegist/crest/io/Response;->getExpectedType()Ljava/lang/Class;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lorg/codegist/crest/io/Response;->getExpectedGenericType()Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lorg/codegist/crest/io/Response;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-interface {v2, v11, v12, v9, v13}, Lorg/codegist/crest/serializer/Deserializer;->deserialize(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    return-object v11

    .line 60
    .end local v0    # "arr$":[Lorg/codegist/crest/serializer/Deserializer;
    .end local v1    # "deserializationException":Ljava/lang/Exception;
    .end local v2    # "deserializer":Lorg/codegist/crest/serializer/Deserializer;
    .end local v5    # "i$":I
    .end local v6    # "isDumped":Z
    .end local v7    # "len$":I
    .end local v9    # "pStream":Ljava/io/InputStream;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 69
    .restart local v9    # "pStream":Ljava/io/InputStream;
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "isDumped":Z
    goto :goto_1

    .line 80
    .restart local v0    # "arr$":[Lorg/codegist/crest/serializer/Deserializer;
    .restart local v1    # "deserializationException":Ljava/lang/Exception;
    .restart local v2    # "deserializer":Lorg/codegist/crest/serializer/Deserializer;
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    :catch_0
    move-exception v4

    .line 81
    .local v4, "e":Ljava/lang/Exception;
    sget-object v11, Lorg/codegist/crest/serializer/ResponseDeserializerByDeserializers;->LOG:Lorg/codegist/common/log/Logger;

    const-string v12, "Failed to deserialize response with user specified deserializer: %s. Trying next."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-virtual {v11, v4, v12, v13}, Lorg/codegist/common/log/Logger;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    move-object v1, v4

    .line 83
    if-eqz v6, :cond_2

    .line 84
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/io/InputStream;->mark(I)V

    .line 85
    invoke-virtual {v9}, Ljava/io/InputStream;->reset()V

    .line 72
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 89
    .end local v2    # "deserializer":Lorg/codegist/crest/serializer/Deserializer;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v11, Lorg/codegist/crest/CRestException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not deserialize response with given deserializers "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v1}, Lorg/codegist/crest/CRestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method

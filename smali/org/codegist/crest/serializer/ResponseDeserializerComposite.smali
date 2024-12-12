.class public Lorg/codegist/crest/serializer/ResponseDeserializerComposite;
.super Ljava/lang/Object;
.source "ResponseDeserializerComposite.java"

# interfaces
.implements Lorg/codegist/crest/serializer/ResponseDeserializer;


# static fields
.field private static final LOG:Lorg/codegist/common/log/Logger;


# instance fields
.field private final delegates:[Lorg/codegist/crest/serializer/ResponseDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/codegist/crest/serializer/ResponseDeserializer;

    invoke-static {v0}, Lorg/codegist/common/log/Logger;->getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/serializer/ResponseDeserializerComposite;->LOG:Lorg/codegist/common/log/Logger;

    return-void
.end method

.method public varargs constructor <init>([Lorg/codegist/crest/serializer/ResponseDeserializer;)V
    .locals 1
    .param p1, "delegates"    # [Lorg/codegist/crest/serializer/ResponseDeserializer;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, [Lorg/codegist/crest/serializer/ResponseDeserializer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codegist/crest/serializer/ResponseDeserializer;

    iput-object v0, p0, Lorg/codegist/crest/serializer/ResponseDeserializerComposite;->delegates:[Lorg/codegist/crest/serializer/ResponseDeserializer;

    .line 42
    return-void
.end method


# virtual methods
.method public deserialize(Lorg/codegist/crest/io/Response;)Ljava/lang/Object;
    .locals 12
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
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "deserializationException":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lorg/codegist/crest/serializer/ResponseDeserializerComposite;->delegates:[Lorg/codegist/crest/serializer/ResponseDeserializer;

    .local v0, "arr$":[Lorg/codegist/crest/serializer/ResponseDeserializer;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 51
    .local v2, "deserializer":Lorg/codegist/crest/serializer/ResponseDeserializer;
    :try_start_0
    invoke-interface {v2, p1}, Lorg/codegist/crest/serializer/ResponseDeserializer;->deserialize(Lorg/codegist/crest/io/Response;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 52
    :catch_0
    move-exception v3

    .line 53
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lorg/codegist/crest/serializer/ResponseDeserializerComposite;->LOG:Lorg/codegist/common/log/Logger;

    const-string v7, "Deserializer %s can\'t handle response, trying with next one"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-virtual {v6, v7, v8}, Lorg/codegist/common/log/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    move-object v1, v3

    .line 49
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "deserializer":Lorg/codegist/crest/serializer/ResponseDeserializer;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    sget-object v6, Lorg/codegist/crest/serializer/ResponseDeserializerComposite;->LOG:Lorg/codegist/common/log/Logger;

    const-string v7, "Cannot deserialize response with given deserialize list: %s. Last exception: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/codegist/crest/serializer/ResponseDeserializerComposite;->delegates:[Lorg/codegist/crest/serializer/ResponseDeserializer;

    aput-object v9, v8, v10

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v1, v7, v8}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-instance v6, Lorg/codegist/crest/CRestException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lorg/codegist/crest/CRestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

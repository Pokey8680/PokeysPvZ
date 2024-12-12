.class public Lorg/codegist/crest/serializer/primitive/ShortWrapperDeserializer;
.super Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer;
.source "ShortWrapperDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer",
        "<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lorg/codegist/crest/serializer/primitive/ShortWrapperDeserializer;->deserialize(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Ljava/lang/String;)Ljava/lang/Short;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p1}, Lorg/codegist/common/lang/Strings;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0
.end method

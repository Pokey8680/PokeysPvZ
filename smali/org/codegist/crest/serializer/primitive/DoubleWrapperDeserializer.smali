.class public Lorg/codegist/crest/serializer/primitive/DoubleWrapperDeserializer;
.super Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer;
.source "DoubleWrapperDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer",
        "<",
        "Ljava/lang/Double;",
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
.method public deserialize(Ljava/lang/String;)Ljava/lang/Double;
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
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lorg/codegist/crest/serializer/primitive/DoubleWrapperDeserializer;->deserialize(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
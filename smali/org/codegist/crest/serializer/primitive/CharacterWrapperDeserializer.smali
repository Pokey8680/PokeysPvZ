.class public Lorg/codegist/crest/serializer/primitive/CharacterWrapperDeserializer;
.super Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer;
.source "CharacterWrapperDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p1}, Lorg/codegist/common/lang/Strings;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/codegist/crest/serializer/primitive/CharacterWrapperDeserializer;->deserialize(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

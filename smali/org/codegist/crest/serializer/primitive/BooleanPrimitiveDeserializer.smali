.class public Lorg/codegist/crest/serializer/primitive/BooleanPrimitiveDeserializer;
.super Lorg/codegist/crest/serializer/primitive/BooleanWrapperDeserializer;
.source "BooleanPrimitiveDeserializer.java"


# direct methods
.method public constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 0
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/codegist/crest/serializer/primitive/BooleanWrapperDeserializer;-><init>(Lorg/codegist/crest/CRestConfig;)V

    .line 34
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1}, Lorg/codegist/common/lang/Strings;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/codegist/crest/serializer/primitive/BooleanWrapperDeserializer;->deserialize(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lorg/codegist/crest/serializer/primitive/BooleanPrimitiveDeserializer;->deserialize(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

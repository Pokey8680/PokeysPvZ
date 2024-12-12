.class public Lorg/codegist/crest/serializer/primitive/BooleanWrapperDeserializer;
.super Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer;
.source "BooleanWrapperDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final trueString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 1
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer;-><init>()V

    .line 35
    invoke-interface {p1}, Lorg/codegist/crest/CRestConfig;->getBooleanTrue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/serializer/primitive/BooleanWrapperDeserializer;->trueString:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p1}, Lorg/codegist/common/lang/Strings;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codegist/crest/serializer/primitive/BooleanWrapperDeserializer;->trueString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lorg/codegist/crest/serializer/primitive/BooleanWrapperDeserializer;->deserialize(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/codegist/crest/serializer/primitive/BooleanSerializer;
.super Lorg/codegist/crest/serializer/StringSerializer;
.source "BooleanSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/serializer/StringSerializer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final falseString:Ljava/lang/String;

.field private final trueString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 1
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/codegist/crest/serializer/StringSerializer;-><init>()V

    .line 37
    invoke-interface {p1}, Lorg/codegist/crest/CRestConfig;->getBooleanTrue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/serializer/primitive/BooleanSerializer;->trueString:Ljava/lang/String;

    .line 38
    invoke-interface {p1}, Lorg/codegist/crest/CRestConfig;->getBooleanFalse()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/serializer/primitive/BooleanSerializer;->falseString:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Boolean;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codegist/crest/serializer/primitive/BooleanSerializer;->trueString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codegist/crest/serializer/primitive/BooleanSerializer;->falseString:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/serializer/primitive/BooleanSerializer;->serialize(Ljava/lang/Boolean;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
